// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.common;


public final class BitSource
{

    public BitSource(byte abyte0[])
    {
        bytes = abyte0;
    }

    public int available()
    {
        return 8 * (bytes.length - byteOffset) - bitOffset;
    }

    public int readBits(int i)
    {
        if(i < 1 || i > 32)
            throw new IllegalArgumentException();
        int j = 0;
        if(bitOffset > 0)
        {
            int i1 = 8 - bitOffset;
            int j1;
            int k1;
            if(i < i1)
                j1 = i;
            else
                j1 = i1;
            k1 = i1 - j1;
            j = ((255 >> 8 - j1) << k1 & bytes[byteOffset]) >> k1;
            i -= j1;
            bitOffset = j1 + bitOffset;
            if(bitOffset == 8)
            {
                bitOffset = 0;
                byteOffset = 1 + byteOffset;
            }
        }
        if(i > 0)
        {
            for(; i >= 8; i -= 8)
            {
                j = j << 8 | 0xff & bytes[byteOffset];
                byteOffset = 1 + byteOffset;
            }

            if(i > 0)
            {
                int k = 8 - i;
                int l = (255 >> k) << k;
                j = j << i | (l & bytes[byteOffset]) >> k;
                bitOffset = i + bitOffset;
            }
        }
        return j;
    }

    private int bitOffset;
    private int byteOffset;
    private final byte bytes[];
}
