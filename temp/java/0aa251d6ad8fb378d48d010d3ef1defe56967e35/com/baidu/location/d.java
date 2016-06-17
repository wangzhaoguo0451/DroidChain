// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;

import java.security.MessageDigest;

class d
{

    d()
    {
    }

    public static String a(String s)
    {
        int i = 0;
        byte abyte1[];
        String s4;
        char ac1[];
        int k;
        int l;
        byte abyte2[];
        int i1;
        char ac[] = a((new StringBuilder()).append(s).append("webgis").toString().getBytes("UTF-8"));
        byte abyte0[] = s.getBytes("UTF-8");
        abyte1 = new byte[2 + abyte0.length];
        for(int j = 0; j < abyte0.length; j++)
            abyte1[j] = abyte0[j];

        abyte1[abyte0.length] = (byte)(0xff & Integer.parseInt(String.copyValueOf(ac, 10, 2), 16));
        abyte1[1 + abyte0.length] = (byte)(0xff & Integer.parseInt(String.copyValueOf(ac, 20, 2), 16));
        String s2 = (new StringBuilder()).append("").append((char)(0xff & Integer.parseInt(String.copyValueOf(ac, 6, 2), 16))).toString();
        String s3 = (new StringBuilder()).append(s2).append((char)(0xff & Integer.parseInt(String.copyValueOf(ac, 16, 2), 16))).toString();
        s4 = (new StringBuilder()).append(s3).append((char)(0xff & Integer.parseInt(String.copyValueOf(ac, 26, 2), 16))).toString();
        ac1 = a((new StringBuilder()).append(s4).append("webgis").toString().getBytes("iso-8859-1"));
        k = abyte1.length;
        l = s4.length();
        abyte2 = new byte[k + l];
        i1 = 0;
_L5:
        if(i1 >= (k + 31) / 32) goto _L2; else goto _L1
_L1:
        int j1 = i1 * 32;
        for(int k1 = 0; k1 < 32 && j1 + k1 < k; k1++)
            abyte2[j1 + k1] = (byte)(0xff & ac1[k1] ^ 0xff & abyte1[j1 + k1]);

          goto _L3
_L2:
        String s1;
        for(; i < l; i++)
            abyte2[k + i] = (byte)s4.charAt(i);

        s1 = new String(_mthif(abyte2));
_L4:
        return s1;
        Exception exception;
        exception;
        exception.printStackTrace();
        s1 = "UnsupportedEncodingException";
        if(true) goto _L4; else goto _L3
_L3:
        i1++;
          goto _L5
    }

    private static char[] a(byte abyte0[])
    {
        int i;
        char ac[];
        i = 0;
        ac = new char[32];
        byte abyte1[];
        int j;
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(abyte0);
        abyte1 = messagedigest.digest();
        j = 0;
_L1:
        if(i >= 16)
            break MISSING_BLOCK_LABEL_93;
        byte byte0 = abyte1[i];
        int k = j + 1;
        ac[j] = a[0xf & byte0 >>> 4];
        j = k + 1;
        ac[k] = a[byte0 & 0xf];
        i++;
          goto _L1
        Exception exception;
        exception;
        exception.printStackTrace();
        return ac;
    }

    private static char[] _mthif(byte abyte0[])
    {
        char ac[] = new char[4 * ((2 + abyte0.length) / 3)];
        int i = 0;
        int j = 0;
        while(j < abyte0.length) 
        {
            int k = (0xff & abyte0[j]) << 8;
            boolean flag;
            int l;
            boolean flag1;
            int i1;
            char ac1[];
            int j1;
            int k1;
            int l1;
            char ac2[];
            int i2;
            int j2;
            int k2;
            if(j + 1 < abyte0.length)
            {
                k |= 0xff & abyte0[j + 1];
                flag = true;
            } else
            {
                flag = false;
            }
            l = k << 8;
            if(j + 2 < abyte0.length)
            {
                l |= 0xff & abyte0[j + 2];
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            i1 = i + 3;
            ac1 = _fldif;
            if(flag1)
                j1 = 63 - (l & 0x3f);
            else
                j1 = 64;
            ac[i1] = ac1[j1];
            k1 = l >> 6;
            l1 = i + 2;
            ac2 = _fldif;
            if(flag)
                i2 = 63 - (k1 & 0x3f);
            else
                i2 = 64;
            ac[l1] = ac2[i2];
            j2 = k1 >> 6;
            ac[i + 1] = _fldif[63 - (j2 & 0x3f)];
            k2 = j2 >> 6;
            ac[i + 0] = _fldif[63 - (k2 & 0x3f)];
            j += 3;
            i += 4;
        }
        return ac;
    }

    private static char a[];
    private static char _fldif[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/.".toCharArray();

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
        a = ac;
    }
}
