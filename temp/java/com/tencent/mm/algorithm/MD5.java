// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;

import java.io.*;
import java.security.MessageDigest;

public final class MD5
{

    private MD5()
    {
    }

    public static String getMD5(File file)
    {
        return getMD5(file, 0x19000);
    }

    public static String getMD5(File file, int i)
    {
        if(file != null && i > 0 && file.exists()) goto _L2; else goto _L1
_L1:
        String s = null;
_L7:
        return s;
_L2:
        FileInputStream fileinputstream = new FileInputStream(file);
        long l = i;
        if(l > file.length()) goto _L4; else goto _L3
_L3:
        long l2 = i;
_L5:
        s = getMD5(fileinputstream, (int)l2);
        fileinputstream.close();
        try
        {
            fileinputstream.close();
        }
        catch(IOException ioexception2) { }
        continue; /* Loop/switch isn't completed */
_L4:
        long l1 = file.length();
        l2 = l1;
          goto _L5
        Exception exception2;
        exception2;
        FileInputStream fileinputstream1 = null;
_L10:
        Exception exception1;
        if(fileinputstream1 != null)
            try
            {
                fileinputstream1.close();
            }
            catch(IOException ioexception) { }
        s = null;
        if(true) goto _L7; else goto _L6
_L6:
        exception1;
        fileinputstream = null;
_L9:
        if(fileinputstream != null)
            try
            {
                fileinputstream.close();
            }
            catch(IOException ioexception1) { }
        throw exception1;
        exception1;
        if(true) goto _L9; else goto _L8
_L8:
        Exception exception;
        exception;
        fileinputstream1 = fileinputstream;
          goto _L10
    }

    public static String getMD5(File file, int i, int j)
    {
        if(file != null && file.exists() && i >= 0 && j > 0) goto _L2; else goto _L1
_L1:
        String s = null;
_L4:
        return s;
_L2:
        FileInputStream fileinputstream = new FileInputStream(file);
        s = getMD5(fileinputstream, 0x19000, i, j);
        fileinputstream.close();
        try
        {
            fileinputstream.close();
        }
        catch(IOException ioexception2) { }
        continue; /* Loop/switch isn't completed */
        Exception exception2;
        exception2;
        FileInputStream fileinputstream1 = null;
_L7:
        Exception exception1;
        if(fileinputstream1 != null)
            try
            {
                fileinputstream1.close();
            }
            catch(IOException ioexception) { }
        s = null;
        if(true) goto _L4; else goto _L3
_L3:
        exception1;
        fileinputstream = null;
_L6:
        if(fileinputstream != null)
            try
            {
                fileinputstream.close();
            }
            catch(IOException ioexception1) { }
        throw exception1;
        exception1;
        if(true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        fileinputstream1 = fileinputstream;
          goto _L7
    }

    public static final String getMD5(FileInputStream fileinputstream, int i)
    {
        String s;
        int j;
        s = null;
        j = 0;
        if(fileinputstream != null && i > 0) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        String s1;
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        StringBuilder stringbuilder = new StringBuilder(32);
        byte abyte0[] = new byte[i];
        do
        {
            int k = fileinputstream.read(abyte0);
            if(k == -1)
                break;
            messagedigest.update(abyte0, 0, k);
        } while(true);
        for(byte abyte1[] = messagedigest.digest(); j < abyte1.length; j++)
            stringbuilder.append(Integer.toString(256 + (0xff & abyte1[j]), 16).substring(1));

        s1 = stringbuilder.toString();
        s = s1;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static final String getMD5(FileInputStream fileinputstream, int i, int j, int k)
    {
        String s;
        int l;
        s = null;
        l = 0;
        if(fileinputstream != null && i > 0 && j >= 0 && k > 0) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        long l1 = j;
        String s1;
        if(fileinputstream.skip(l1) < (long)j)
            continue; /* Loop/switch isn't completed */
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        StringBuilder stringbuilder = new StringBuilder(32);
        byte abyte0[] = new byte[i];
        int i1 = 0;
        do
        {
            int j1 = fileinputstream.read(abyte0);
            if(j1 == -1 || i1 >= k)
                break;
            if(i1 + j1 <= k)
            {
                messagedigest.update(abyte0, 0, j1);
                i1 += j1;
            } else
            {
                messagedigest.update(abyte0, 0, k - i1);
                i1 = k;
            }
        } while(true);
        for(byte abyte1[] = messagedigest.digest(); l < abyte1.length; l++)
            stringbuilder.append(Integer.toString(256 + (0xff & abyte1[l]), 16).substring(1));

        s1 = stringbuilder.toString();
        s = s1;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static String getMD5(String s)
    {
        String s1 = null;
        if(s != null) goto _L2; else goto _L1
_L1:
        return s1;
_L2:
        File file = new File(s);
        if(file.exists())
            s1 = getMD5(file, 0x19000);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static String getMD5(String s, int i, int j)
    {
        String s1 = null;
        if(s != null) goto _L2; else goto _L1
_L1:
        return s1;
_L2:
        File file = new File(s);
        if(file.exists())
            s1 = getMD5(file, i, j);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static final String getMessageDigest(byte abyte0[])
    {
        int i = 0;
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
        String s;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.update(abyte0);
            byte abyte1[] = messagedigest.digest();
            int j = abyte1.length;
            char ac1[] = new char[j * 2];
            int k = 0;
            for(; i < j; i++)
            {
                byte byte0 = abyte1[i];
                int l = k + 1;
                ac1[k] = ac[0xf & byte0 >>> 4];
                k = l + 1;
                ac1[l] = ac[byte0 & 0xf];
            }

            s = new String(ac1);
        }
        catch(Exception exception)
        {
            s = null;
        }
        return s;
    }

    public static final byte[] getRawDigest(byte abyte0[])
    {
        byte abyte2[];
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(abyte0);
        abyte2 = messagedigest.digest();
        byte abyte1[] = abyte2;
_L2:
        return abyte1;
        Exception exception;
        exception;
        abyte1 = null;
        if(true) goto _L2; else goto _L1
_L1:
    }
}
