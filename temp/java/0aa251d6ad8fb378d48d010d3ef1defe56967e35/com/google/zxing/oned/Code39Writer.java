// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Hashtable;

// Referenced classes of package com.google.zxing.oned:
//            UPCEANWriter, Code39Reader

public final class Code39Writer extends UPCEANWriter
{

    public Code39Writer()
    {
    }

    private static void toIntArray(int i, int ai[])
    {
        int j = 0;
        while(j < 9) 
        {
            int k;
            if((i & 1 << j) == 0)
                k = 1;
            else
                k = 2;
            ai[j] = k;
            j++;
        }
    }

    public BitMatrix encode(String s, BarcodeFormat barcodeformat, int i, int j, Hashtable hashtable)
        throws WriterException
    {
        if(barcodeformat != BarcodeFormat.CODE_39)
            throw new IllegalArgumentException("Can only encode CODE_39, but got " + barcodeformat);
        else
            return super.encode(s, barcodeformat, i, j, hashtable);
    }

    public byte[] encode(String s)
    {
        int i = s.length();
        if(i > 80)
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + i);
        int ai[] = new int[9];
        int j = i + 25;
        for(int k = 0; k < i; k++)
        {
            int i2 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(s.charAt(k));
            toIntArray(Code39Reader.CHARACTER_ENCODINGS[i2], ai);
            for(int j2 = 0; j2 < ai.length; j2++)
                j += ai[j2];

        }

        byte abyte0[] = new byte[j];
        toIntArray(Code39Reader.CHARACTER_ENCODINGS[39], ai);
        int l = appendPattern(abyte0, 0, ai, 1);
        int ai1[] = new int[1];
        ai1[0] = 1;
        int i1 = l + appendPattern(abyte0, l, ai1, 0);
        for(int j1 = i - 1; j1 >= 0; j1--)
        {
            int k1 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(s.charAt(j1));
            toIntArray(Code39Reader.CHARACTER_ENCODINGS[k1], ai);
            int l1 = i1 + appendPattern(abyte0, i1, ai, 1);
            i1 = l1 + appendPattern(abyte0, l1, ai1, 0);
        }

        toIntArray(Code39Reader.CHARACTER_ENCODINGS[39], ai);
        int _tmp = i1 + appendPattern(abyte0, i1, ai, 1);
        return abyte0;
    }
}
