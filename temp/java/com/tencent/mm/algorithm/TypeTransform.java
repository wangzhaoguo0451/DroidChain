// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;


public final class TypeTransform
{

    private TypeTransform()
    {
    }

    private static byte[] a(byte abyte0[])
    {
        int i = abyte0.length;
        byte abyte1[] = new byte[i];
        for(int j = 0; j < i; j++)
            abyte1[j] = abyte0[i - 1 - j];

        return abyte1;
    }

    public static int byteArrayHLToInt(byte abyte0[])
    {
        return byteArrayHLToInt(abyte0, 0);
    }

    public static int byteArrayHLToInt(byte abyte0[], int i)
    {
        return (0xff & abyte0[i]) << 24 | (0xff & abyte0[i + 1]) << 16 | (0xff & abyte0[i + 2]) << 8 | (0xff & abyte0[i + 3]) << 0;
    }

    public static long byteArrayHLToLong(byte abyte0[])
    {
        return byteArrayHLToLong(abyte0, 0);
    }

    public static long byteArrayHLToLong(byte abyte0[], int i)
    {
        return (255L & (long)abyte0[i]) << 56 | (255L & (long)abyte0[i + 1]) << 48 | (255L & (long)abyte0[i + 2]) << 40 | (255L & (long)abyte0[i + 3]) << 32 | (255L & (long)abyte0[i + 4]) << 24 | (255L & (long)abyte0[i + 5]) << 16 | (255L & (long)abyte0[i + 6]) << 8 | (255L & (long)abyte0[i + 7]) << 0;
    }

    public static int byteArrayLHToInt(byte abyte0[])
    {
        return byteArrayLHToInt(abyte0, 0);
    }

    public static int byteArrayLHToInt(byte abyte0[], int i)
    {
        return (0xff & abyte0[i + 3]) << 24 | (0xff & abyte0[i + 2]) << 16 | (0xff & abyte0[i + 1]) << 8 | (0xff & abyte0[i]) << 0;
    }

    public static long byteArrayLHToLong(byte abyte0[])
    {
        return byteArrayLHToLong(abyte0, 0);
    }

    public static long byteArrayLHToLong(byte abyte0[], int i)
    {
        return (255L & (long)abyte0[i + 7]) << 56 | (255L & (long)abyte0[i + 6]) << 48 | (255L & (long)abyte0[5]) << 40 | (255L & (long)abyte0[i + 4]) << 32 | (255L & (long)abyte0[i + 3]) << 24 | (255L & (long)abyte0[i + 2]) << 16 | (255L & (long)abyte0[i + 1]) << 8 | (255L & (long)abyte0[i]) << 0;
    }

    public static byte[] intToByteArrayHL(int i)
    {
        return a(intToByteArrayLH(i));
    }

    public static byte[] intToByteArrayLH(int i)
    {
        byte abyte0[] = new byte[4];
        for(int j = 0; j < 4; j++)
            abyte0[j] = (byte)(0xff & i >> j * 8);

        return abyte0;
    }

    public static byte[] longToByteArrayHL(long l)
    {
        return a(longToByteArrayLH(l));
    }

    public static byte[] longToByteArrayLH(long l)
    {
        byte abyte0[] = new byte[8];
        for(int i = 0; i < 8; i++)
            abyte0[i] = (byte)(int)(l >> i * 8);

        return abyte0;
    }
}
