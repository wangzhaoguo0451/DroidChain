// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

// Referenced classes of package com.google.zxing.oned:
//            UPCEANReader

public final class EAN13Reader extends UPCEANReader
{

    public EAN13Reader()
    {
    }

    private static void determineFirstDigit(StringBuffer stringbuffer, int i)
        throws NotFoundException
    {
        for(int j = 0; j < 10; j++)
            if(i == FIRST_DIGIT_ENCODINGS[j])
            {
                stringbuffer.insert(0, (char)(j + 48));
                return;
            }

        throw NotFoundException.getNotFoundInstance();
    }

    protected int decodeMiddle(BitArray bitarray, int ai[], StringBuffer stringbuffer)
        throws NotFoundException
    {
        int ai1[] = decodeMiddleCounters;
        ai1[0] = 0;
        ai1[1] = 0;
        ai1[2] = 0;
        ai1[3] = 0;
        int i = bitarray.getSize();
        int j = ai[1];
        int k = 0;
        for(int l = 0; l < 6 && j < i; l++)
        {
            int l1 = decodeDigit(bitarray, ai1, j, L_AND_G_PATTERNS);
            stringbuffer.append((char)(48 + l1 % 10));
            for(int i2 = 0; i2 < ai1.length; i2++)
                j += ai1[i2];

            if(l1 >= 10)
                k |= 1 << 5 - l;
        }

        determineFirstDigit(stringbuffer, k);
        int i1 = findGuardPattern(bitarray, j, true, MIDDLE_PATTERN)[1];
        for(int j1 = 0; j1 < 6 && i1 < i; j1++)
        {
            stringbuffer.append((char)(48 + decodeDigit(bitarray, ai1, i1, L_PATTERNS)));
            for(int k1 = 0; k1 < ai1.length; k1++)
                i1 += ai1[k1];

        }

        return i1;
    }

    BarcodeFormat getBarcodeFormat()
    {
        return BarcodeFormat.EAN_13;
    }

    static final int FIRST_DIGIT_ENCODINGS[];
    private final int decodeMiddleCounters[] = new int[4];

    static 
    {
        int ai[] = new int[10];
        ai[0] = 0;
        ai[1] = 11;
        ai[2] = 13;
        ai[3] = 14;
        ai[4] = 19;
        ai[5] = 25;
        ai[6] = 28;
        ai[7] = 21;
        ai[8] = 22;
        ai[9] = 26;
        FIRST_DIGIT_ENCODINGS = ai;
    }
}
