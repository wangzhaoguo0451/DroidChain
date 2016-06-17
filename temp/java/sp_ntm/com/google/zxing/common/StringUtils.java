// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.common;

import com.google.zxing.DecodeHintType;
import java.util.Hashtable;

public final class StringUtils
{

    private StringUtils()
    {
    }

    public static String guessEncoding(byte abyte0[], Hashtable hashtable)
    {
        if(hashtable == null) goto _L2; else goto _L1
_L1:
        String s = (String)hashtable.get(DecodeHintType.CHARACTER_SET);
        if(s == null) goto _L2; else goto _L3
_L3:
        return s;
_L2:
        if(abyte0.length > 3 && abyte0[0] == -17 && abyte0[1] == -69 && abyte0[2] == -65)
        {
            s = "UTF-8";
            continue; /* Loop/switch isn't completed */
        }
        int i = abyte0.length;
        boolean flag = true;
        boolean flag1 = true;
        boolean flag2 = true;
        int j = 0;
        int k = 0;
        int l = 0;
        boolean flag3 = false;
        boolean flag4 = false;
        boolean flag5 = false;
        int i1 = 0;
        while(i1 < i && (flag || flag1 || flag2)) 
        {
            int j1 = 0xff & abyte0[i1];
            if(j1 >= 128 && j1 <= 191)
            {
                if(j > 0)
                    j--;
            } else
            {
                if(j > 0)
                    flag2 = false;
                if(j1 >= 192 && j1 <= 253)
                {
                    flag4 = true;
                    int k1 = j1;
                    while((k1 & 0x40) != 0) 
                    {
                        j++;
                        k1 <<= 1;
                    }
                }
            }
            if((j1 == 194 || j1 == 195) && i1 < i - 1)
            {
                int i2 = 0xff & abyte0[i1 + 1];
                if(i2 <= 191 && (j1 == 194 && i2 >= 160 || j1 == 195 && i2 >= 128))
                    flag3 = true;
            }
            if(j1 >= 127 && j1 <= 159)
                flag = false;
            if(j1 >= 161 && j1 <= 223 && !flag5)
                l++;
            if(!flag5 && (j1 >= 240 && j1 <= 255 || j1 == 128 || j1 == 160))
                flag1 = false;
            if(j1 >= 129 && j1 <= 159 || j1 >= 224 && j1 <= 239)
            {
                if(flag5)
                {
                    flag5 = false;
                } else
                {
                    flag5 = true;
                    if(i1 >= -1 + abyte0.length)
                    {
                        flag1 = false;
                    } else
                    {
                        int l1 = 0xff & abyte0[i1 + 1];
                        if(l1 < 64 || l1 > 252)
                            flag1 = false;
                        else
                            k++;
                    }
                }
            } else
            {
                flag5 = false;
            }
            i1++;
        }
        if(j > 0)
            flag2 = false;
        if(flag1 && ASSUME_SHIFT_JIS)
            s = "SJIS";
        else
        if(flag2 && flag4)
            s = "UTF-8";
        else
        if(flag1 && (k >= 3 || l * 20 > i))
            s = "SJIS";
        else
        if(!flag3 && flag)
            s = "ISO8859_1";
        else
            s = PLATFORM_DEFAULT_ENCODING;
        if(true) goto _L3; else goto _L4
_L4:
    }

    private static final boolean ASSUME_SHIFT_JIS = false;
    private static final String EUC_JP = "EUC_JP";
    private static final String ISO88591 = "ISO8859_1";
    private static final String PLATFORM_DEFAULT_ENCODING = System.getProperty("file.encoding");
    public static final String SHIFT_JIS = "SJIS";
    private static final String UTF8 = "UTF-8";

    static 
    {
        boolean flag;
        if("SJIS".equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING) || "EUC_JP".equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING))
            flag = true;
        else
            flag = false;
        ASSUME_SHIFT_JIS = flag;
    }
}
