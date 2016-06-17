// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.common;

import com.google.zxing.*;

// Referenced classes of package com.google.zxing.common:
//            BitMatrix, BitArray

public class GlobalHistogramBinarizer extends Binarizer
{

    public GlobalHistogramBinarizer(LuminanceSource luminancesource)
    {
        super(luminancesource);
        luminances = null;
        buckets = null;
    }

    private static int estimateBlackPoint(int ai[])
        throws NotFoundException
    {
        int i = ai.length;
        int j = 0;
        int k = 0;
        int l = 0;
        for(int i1 = 0; i1 < i; i1++)
        {
            if(ai[i1] > l)
            {
                k = i1;
                l = ai[i1];
            }
            if(ai[i1] > j)
                j = ai[i1];
        }

        int j1 = 0;
        int k1 = 0;
        for(int l1 = 0; l1 < i; l1++)
        {
            int k3 = l1 - k;
            int l3 = k3 * (k3 * ai[l1]);
            if(l3 > k1)
            {
                j1 = l1;
                k1 = l3;
            }
        }

        if(k > j1)
        {
            int j3 = k;
            k = j1;
            j1 = j3;
        }
        if(j1 - k <= i >> 4)
            throw NotFoundException.getNotFoundInstance();
        int i2 = j1 - 1;
        int j2 = -1;
        for(int k2 = j1 - 1; k2 > k; k2--)
        {
            int l2 = k2 - k;
            int i3 = l2 * l2 * (j1 - k2) * (j - ai[k2]);
            if(i3 > j2)
            {
                i2 = k2;
                j2 = i3;
            }
        }

        return i2 << 3;
    }

    private void initArrays(int i)
    {
        if(luminances == null || luminances.length < i)
            luminances = new byte[i];
        if(buckets == null)
        {
            buckets = new int[32];
        } else
        {
            int j = 0;
            while(j < 32) 
            {
                buckets[j] = 0;
                j++;
            }
        }
    }

    public Binarizer createBinarizer(LuminanceSource luminancesource)
    {
        return new GlobalHistogramBinarizer(luminancesource);
    }

    public BitMatrix getBlackMatrix()
        throws NotFoundException
    {
        LuminanceSource luminancesource = getLuminanceSource();
        int i = luminancesource.getWidth();
        int j = luminancesource.getHeight();
        BitMatrix bitmatrix = new BitMatrix(i, j);
        initArrays(i);
        int ai[] = buckets;
        for(int k = 1; k < 5; k++)
        {
            byte abyte1[] = luminancesource.getRow((j * k) / 5, luminances);
            int l1 = (i << 2) / 5;
            for(int i2 = i / 5; i2 < l1; i2++)
            {
                int j2 = (0xff & abyte1[i2]) >> 3;
                ai[j2] = 1 + ai[j2];
            }

        }

        int l = estimateBlackPoint(ai);
        byte abyte0[] = luminancesource.getMatrix();
        for(int i1 = 0; i1 < j; i1++)
        {
            int j1 = i1 * i;
            for(int k1 = 0; k1 < i; k1++)
                if((0xff & abyte0[j1 + k1]) < l)
                    bitmatrix.set(k1, i1);

        }

        return bitmatrix;
    }

    public BitArray getBlackRow(int i, BitArray bitarray)
        throws NotFoundException
    {
        LuminanceSource luminancesource = getLuminanceSource();
        int j = luminancesource.getWidth();
        byte abyte0[];
        int ai[];
        if(bitarray == null || bitarray.getSize() < j)
            bitarray = new BitArray(j);
        else
            bitarray.clear();
        initArrays(j);
        abyte0 = luminancesource.getRow(i, luminances);
        ai = buckets;
        for(int k = 0; k < j; k++)
        {
            int i2 = (0xff & abyte0[k]) >> 3;
            ai[i2] = 1 + ai[i2];
        }

        int l = estimateBlackPoint(ai);
        int i1 = 0xff & abyte0[0];
        int j1 = 0xff & abyte0[1];
        for(int k1 = 1; k1 < j - 1; k1++)
        {
            int l1 = 0xff & abyte0[k1 + 1];
            if((j1 << 2) - i1 - l1 >> 1 < l)
                bitarray.set(k1);
            i1 = j1;
            j1 = l1;
        }

        return bitarray;
    }

    private static final int LUMINANCE_BITS = 5;
    private static final int LUMINANCE_BUCKETS = 32;
    private static final int LUMINANCE_SHIFT = 3;
    private int buckets[];
    private byte luminances[];
}
