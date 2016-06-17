// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.datamatrix.decoder;


// Referenced classes of package com.google.zxing.datamatrix.decoder:
//            Version

final class DataBlock
{

    private DataBlock(int i, byte abyte0[])
    {
        numDataCodewords = i;
        codewords = abyte0;
    }

    static DataBlock[] getDataBlocks(byte abyte0[], Version version)
    {
        Version.ECBlocks ecblocks = version.getECBlocks();
        int i = 0;
        Version.ECB aecb[] = ecblocks.getECBlocks();
        for(int j = 0; j < aecb.length; j++)
            i += aecb[j].getCount();

        DataBlock adatablock[] = new DataBlock[i];
        int k = 0;
        for(int l = 0; l < aecb.length; l++)
        {
            Version.ECB ecb = aecb[l];
            for(int i6 = 0; i6 < ecb.getCount();)
            {
                int j6 = ecb.getDataCodewords();
                int k6 = j6 + ecblocks.getECCodewords();
                int l6 = k + 1;
                DataBlock datablock = new DataBlock(j6, new byte[k6]);
                adatablock[k] = datablock;
                i6++;
                k = l6;
            }

        }

        int i1 = adatablock[0].codewords.length - ecblocks.getECCodewords();
        int j1 = i1 - 1;
        int k1 = 0;
        for(int l1 = 0; l1 < j1;)
        {
            int j5 = 0;
            int k5;
            int l5;
            for(k5 = k1; j5 < k; k5 = l5)
            {
                byte abyte3[] = adatablock[j5].codewords;
                l5 = k5 + 1;
                abyte3[l1] = abyte0[k5];
                j5++;
            }

            l1++;
            k1 = k5;
        }

        boolean flag;
        int i2;
        int j2;
        int k2;
        if(version.getVersionNumber() == 24)
            flag = true;
        else
            flag = false;
        if(flag)
            i2 = 8;
        else
            i2 = k;
        j2 = 0;
        int i5;
        for(k2 = k1; j2 < i2; k2 = i5)
        {
            byte abyte2[] = adatablock[j2].codewords;
            int l4 = i1 - 1;
            i5 = k2 + 1;
            abyte2[l4] = abyte0[k2];
            j2++;
        }

        int l2 = adatablock[0].codewords.length;
        int i3 = i1;
        int j3;
        int i4;
        for(j3 = k2; i3 < l2; j3 = i4)
        {
            int l3 = 0;
            i4 = j3;
            while(l3 < k) 
            {
                int j4;
                byte abyte1[];
                int k4;
                if(flag && l3 > 7)
                    j4 = i3 - 1;
                else
                    j4 = i3;
                abyte1 = adatablock[l3].codewords;
                k4 = i4 + 1;
                abyte1[j4] = abyte0[i4];
                l3++;
                i4 = k4;
            }
            i3++;
        }

        int k3 = abyte0.length;
        if(j3 != k3)
            throw new IllegalArgumentException();
        else
            return adatablock;
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
