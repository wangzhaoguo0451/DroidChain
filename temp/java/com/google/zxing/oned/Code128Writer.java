// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Hashtable;

// Referenced classes of package com.google.zxing.oned:
//            UPCEANWriter, Code128Reader

public final class Code128Writer extends UPCEANWriter
{

    public Code128Writer()
    {
    }

    public BitMatrix encode(String s, BarcodeFormat barcodeformat, int i, int j, Hashtable hashtable)
        throws WriterException
    {
        if(barcodeformat != BarcodeFormat.CODE_128)
            throw new IllegalArgumentException("Can only encode CODE_128, but got " + barcodeformat);
        else
            return super.encode(s, barcodeformat, i, j, hashtable);
    }

    public byte[] encode(String s)
    {
        int i = s.length();
        if(i > 80)
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + i);
        int j = 35;
        for(int k = 0; k < i; k++)
        {
            int ai[] = Code128Reader.CODE_PATTERNS[-32 + s.charAt(k)];
            for(int i2 = 0; i2 < ai.length; i2++)
                j += ai[i2];

        }

        byte abyte0[] = new byte[j];
        int l = appendPattern(abyte0, 0, Code128Reader.CODE_PATTERNS[104], 1);
        int i1 = 104;
        for(int j1 = 0; j1 < i; j1++)
        {
            i1 += (-32 + s.charAt(j1)) * (j1 + 1);
            l += appendPattern(abyte0, l, Code128Reader.CODE_PATTERNS[-32 + s.charAt(j1)], 1);
        }

        int k1 = i1 % 103;
        int l1 = l + appendPattern(abyte0, l, Code128Reader.CODE_PATTERNS[k1], 1);
        int _tmp = l1 + appendPattern(abyte0, l1, Code128Reader.CODE_PATTERNS[106], 1);
        return abyte0;
    }
}
