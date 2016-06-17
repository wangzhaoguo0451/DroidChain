// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.qrcode.decoder;


// Referenced classes of package com.google.zxing.qrcode.decoder:
//            Version, ErrorCorrectionLevel

final class DataBlock
{

    private DataBlock(int i, byte abyte0[])
    {
        numDataCodewords = i;
        codewords = abyte0;
    }

    static DataBlock[] getDataBlocks(byte abyte0[], Version version, ErrorCorrectionLevel errorcorrectionlevel)
    {
        Version.ECBlocks ecblocks;
        DataBlock adatablock[];
        int k;
        int i1;
        int j1;
        if(abyte0.length != version.getTotalCodewords())
            throw new IllegalArgumentException();
        ecblocks = version.getECBlocksForLevel(errorcorrectionlevel);
        int i = 0;
        Version.ECB aecb[] = ecblocks.getECBlocks();
        for(int j = 0; j < aecb.length; j++)
            i += aecb[j].getCount();

        adatablock = new DataBlock[i];
        k = 0;
        for(int l = 0; l < aecb.length; l++)
        {
            Version.ECB ecb = aecb[l];
            for(int l5 = 0; l5 < ecb.getCount();)
            {
                int i6 = ecb.getDataCodewords();
                int j6 = i6 + ecblocks.getECCodewordsPerBlock();
                int k6 = k + 1;
                DataBlock datablock = new DataBlock(i6, new byte[j6]);
                adatablock[k] = datablock;
                l5++;
                k = k6;
            }

        }

        i1 = adatablock[0].codewords.length;
        j1 = -1 + adatablock.length;
_L6:
        if(j1 >= 0 && adatablock[j1].codewords.length != i1) goto _L2; else goto _L1
_L1:
        int k1;
        int l1;
        int i2;
        int j2;
        k1 = j1 + 1;
        l1 = i1 - ecblocks.getECCodewordsPerBlock();
        i2 = 0;
        j2 = 0;
_L4:
        if(j2 >= l1)
            break; /* Loop/switch isn't completed */
        int i5 = 0;
        int j5;
        int k5;
        for(j5 = i2; i5 < k; j5 = k5)
        {
            byte abyte3[] = adatablock[i5].codewords;
            k5 = j5 + 1;
            abyte3[j2] = abyte0[j5];
            i5++;
        }

        j2++;
        i2 = j5;
        continue; /* Loop/switch isn't completed */
_L2:
        j1--;
        continue; /* Loop/switch isn't completed */
        if(true) goto _L4; else goto _L3
_L3:
        int k2 = k1;
        int l2;
        int l4;
        for(l2 = i2; k2 < k; l2 = l4)
        {
            byte abyte2[] = adatablock[k2].codewords;
            l4 = l2 + 1;
            abyte2[l1] = abyte0[l2];
            k2++;
        }

        int i3 = adatablock[0].codewords.length;
        int j3 = l1;
        int i4;
        for(int k3 = l2; j3 < i3; k3 = i4)
        {
            int l3 = 0;
            i4 = k3;
            while(l3 < k) 
            {
                int j4;
                byte abyte1[];
                int k4;
                if(l3 < k1)
                    j4 = j3;
                else
                    j4 = j3 + 1;
                abyte1 = adatablock[l3].codewords;
                k4 = i4 + 1;
                abyte1[j4] = abyte0[i4];
                l3++;
                i4 = k4;
            }
            j3++;
        }

        return adatablock;
        if(true) goto _L6; else goto _L5
_L5:
    }

    byte[] getCodewords()
    {
        return codewords;
    }

    int getNumDataCodewords()
    {
        return numDataCodewords;
    }

    private final byte codewords[];
    private final int numDataCodewords;
}
