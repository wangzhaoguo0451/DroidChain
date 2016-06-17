// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import java.io.UnsupportedEncodingException;

public class SpellMap
{

    public SpellMap()
    {
    }

    private static int a(char c)
    {
        if(c > '\200') goto _L2; else goto _L1
_L1:
        return c;
_L2:
        byte abyte0[] = String.valueOf(c).getBytes("GBK");
        UnsupportedEncodingException unsupportedencodingexception;
        if(abyte0 == null || abyte0.length > 2 || abyte0.length <= 0)
            c = '\0';
        else
        if(abyte0.length == 1)
            c = abyte0[0];
        else
        if(abyte0.length == 2)
            c = (256 + abyte0[0] << 16) + (256 + abyte0[1]);
        else
            c = '\0';
        continue; /* Loop/switch isn't completed */
        unsupportedencodingexception;
        c = '\0';
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static String getSpell(char c)
    {
        String s;
        int i;
        s = null;
        i = a(c);
        if(i >= 0x10000) goto _L2; else goto _L1
_L1:
        s = String.valueOf(c);
_L4:
        return s;
_L2:
        int j = i >> 16;
        int k = i & 0xff;
        String s1;
        if(j < 129 || j > 253)
            s1 = null;
        else
        if(k < 63 || k > 254)
            s1 = null;
        else
            s1 = spellGetJni(j - 129, k - 63);
        if(s1 != null)
        {
            String as[] = s1.split(",");
            if(as == null || as.length < 2)
                s = s1;
            else
                s = as[0];
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static native String spellGetJni(int i, int j);
}
