// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.io.IOException;
import java.util.*;

final class Escaper
{

    Escaper(boolean flag)
    {
        escapeHtmlCharacters = flag;
    }

    private static void appendHexJavaScriptRepresentation(int i, Appendable appendable)
        throws IOException
    {
        if(Character.isSupplementaryCodePoint(i))
        {
            char ac[] = Character.toChars(i);
            appendHexJavaScriptRepresentation(ac[0], appendable);
            appendHexJavaScriptRepresentation(ac[1], appendable);
        } else
        {
            appendable.append("\\u").append(HEX_CHARS[0xf & i >>> 12]).append(HEX_CHARS[0xf & i >>> 8]).append(HEX_CHARS[0xf & i >>> 4]).append(HEX_CHARS[i & 0xf]);
        }
    }

    private void escapeJsonString(CharSequence charsequence, StringBuffer stringbuffer)
        throws IOException
    {
        int i;
        int j;
        int k;
        i = 0;
        j = charsequence.length();
        k = 0;
_L5:
        if(k >= j) goto _L2; else goto _L1
_L1:
        int l;
        int i1;
        l = Character.codePointAt(charsequence, k);
        i1 = Character.charCount(l);
        if(isControlCharacter(l) || mustEscapeCharInJsString(l)) goto _L4; else goto _L3
_L3:
        k += i1;
          goto _L5
_L4:
        stringbuffer.append(charsequence, i, k);
        i = k + i1;
        switch(l)
        {
        default:
            appendHexJavaScriptRepresentation(l, stringbuffer);
            break;

        case 8: // '\b'
            stringbuffer.append("\\b");
            break;

        case 9: // '\t'
            stringbuffer.append("\\t");
            break;

        case 10: // '\n'
            stringbuffer.append("\\n");
            break;

        case 12: // '\f'
            stringbuffer.append("\\f");
            break;

        case 13: // '\r'
            stringbuffer.append("\\r");
            break;

        case 92: // '\\'
            stringbuffer.append("\\\\");
            break;

        case 47: // '/'
            stringbuffer.append("\\/");
            break;

        case 34: // '"'
            stringbuffer.append("\\\"");
            break;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        stringbuffer.append(charsequence, i, j);
        return;
        if(true) goto _L3; else goto _L6
_L6:
    }

    private static boolean isControlCharacter(int i)
    {
        boolean flag;
        if(i < 32 || i == 8232 || i == 8233 || i >= 127 && i <= 159)
            flag = true;
        else
            flag = false;
        return flag;
    }

    private boolean mustEscapeCharInJsString(int i)
    {
        boolean flag = false;
        if(!Character.isSupplementaryCodePoint(i))
        {
            char c = (char)i;
            if(JS_ESCAPE_CHARS.contains(Character.valueOf(c)) || escapeHtmlCharacters && HTML_ESCAPE_CHARS.contains(Character.valueOf(c)))
                flag = true;
        }
        return flag;
    }

    public String escapeJsonString(CharSequence charsequence)
    {
        StringBuffer stringbuffer = new StringBuffer(20 + charsequence.length());
        try
        {
            escapeJsonString(charsequence, stringbuffer);
        }
        catch(IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
        return stringbuffer.toString();
    }

    private static final char HEX_CHARS[];
    private static final Set HTML_ESCAPE_CHARS;
    private static final Set JS_ESCAPE_CHARS;
    private final boolean escapeHtmlCharacters;

    static 
    {
        char ac[] = new char[16];
        ac[0] = '0';
        ac[1] = '1';
        ac[2] = '2';
        ac[3] = '3';
        ac[4] = '4';
        ac[5] = '5';
        ac[6] = '6';
        ac[7] = '7';
        ac[8] = '8';
        ac[9] = '9';
        ac[10] = 'a';
        ac[11] = 'b';
        ac[12] = 'c';
        ac[13] = 'd';
        ac[14] = 'e';
        ac[15] = 'f';
        HEX_CHARS = ac;
        HashSet hashset = new HashSet();
        hashset.add(Character.valueOf('"'));
        hashset.add(Character.valueOf('\\'));
        JS_ESCAPE_CHARS = Collections.unmodifiableSet(hashset);
        HashSet hashset1 = new HashSet();
        hashset1.add(Character.valueOf('<'));
        hashset1.add(Character.valueOf('>'));
        hashset1.add(Character.valueOf('&'));
        hashset1.add(Character.valueOf('='));
        hashset1.add(Character.valueOf('\''));
        HTML_ESCAPE_CHARS = Collections.unmodifiableSet(hashset1);
    }
}
