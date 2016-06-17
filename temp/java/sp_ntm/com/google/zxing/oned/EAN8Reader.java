// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

// Referenced classes of package com.google.zxing.oned:
//            UPCEANReader

public final class EAN8Reader extends UPCEANReader
{

    public EAN8Reader()
    {
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
        for(int k = 0; k < 4 && j < i; k++)
        {
            stringbuffer.append((char)(48 + decodeDigit(bitarray, ai1, j, L_PATTERNS)));
            for(int k1 = 0; k1 < ai1.length; k1++)
                j += ai1[k1];

        }

        int l = findGuardPattern(bitarray, j, true, MIDDLE_PATTERN)[1];
        for(int i1 = 0; i1 < 4 && l < i; i1++)
        {
            stringbuffer.append((char)(48 + decodeDigit(bitarray, ai1, l, L_PATTERNS)));
            for(int j1 = 0; j1 < ai1.length; j1++)
                l += ai1[j1];

        }

        return l;
    }

    BarcodeFormat getBarcodeFormat()
    {
        return BarcodeFormat.EAN_8;
    }

    private final int decodeMiddleCounters[] = new int[4];
}
