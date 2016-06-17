// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result;

import com.google.zxing.Result;

// Referenced classes of package com.google.zxing.client.result:
//            AbstractDoCoMoResultParser, EmailAddressParsedResult

final class EmailDoCoMoResultParser extends AbstractDoCoMoResultParser
{

    EmailDoCoMoResultParser()
    {
    }

    private static boolean isAtextSymbol(char c)
    {
        int i = 0;
_L3:
        if(i >= ATEXT_SYMBOLS.length)
            break MISSING_BLOCK_LABEL_29;
        if(c != ATEXT_SYMBOLS[i]) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        i++;
          goto _L3
        flag = false;
          goto _L4
    }

    static boolean isBasicallyValidEmailAddress(String s)
    {
        if(s != null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        int i;
        flag = false;
        i = 0;
_L5:
        if(i < s.length())
        {
            char c = s.charAt(i);
            if((c < 'a' || c > 'z') && (c < 'A' || c > 'Z') && (c < '0' || c > '9') && !isAtextSymbol(c))
            {
                flag = false;
            } else
            {
label0:
                {
                    if(c != '@')
                        break MISSING_BLOCK_LABEL_91;
                    if(!flag)
                        break label0;
                    flag = false;
                }
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
        flag = true;
        i++;
          goto _L5
    }

    public static EmailAddressParsedResult parse(Result result)
    {
        EmailAddressParsedResult emailaddressparsedresult;
        String s;
        emailaddressparsedresult = null;
        s = result.getText();
        if(s != null && s.startsWith("MATMSG:")) goto _L2; else goto _L1
_L1:
        return emailaddressparsedresult;
_L2:
        String as[] = matchDoCoMoPrefixedField("TO:", s, true);
        if(as != null)
        {
            String s1 = as[0];
            if(isBasicallyValidEmailAddress(s1))
                emailaddressparsedresult = new EmailAddressParsedResult(s1, matchSingleDoCoMoPrefixedField("SUB:", s, false), matchSingleDoCoMoPrefixedField("BODY:", s, false), "mailto:" + s1);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static final char ATEXT_SYMBOLS[];

    static 
    {
        char ac[] = new char[21];
        ac[0] = '@';
        ac[1] = '.';
        ac[2] = '!';
        ac[3] = '#';
        ac[4] = '$';
        ac[5] = '%';
        ac[6] = '&';
        ac[7] = '\'';
        ac[8] = '*';
        ac[9] = '+';
        ac[10] = '-';
        ac[11] = '/';
        ac[12] = '=';
        ac[13] = '?';
        ac[14] = '^';
        ac[15] = '_';
        ac[16] = '`';
        ac[17] = '{';
        ac[18] = '|';
        ac[19] = '}';
        ac[20] = '~';
        ATEXT_SYMBOLS = ac;
    }
}
