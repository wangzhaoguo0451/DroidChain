// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;

// Referenced classes of package com.google.zxing.qrcode.decoder:
//            FormatInformation, DataMask, Version

final class BitMatrixParser
{

    BitMatrixParser(BitMatrix bitmatrix)
        throws FormatException
    {
        int i = bitmatrix.getHeight();
        if(i < 21 || (i & 3) != 1)
        {
            throw FormatException.getFormatInstance();
        } else
        {
            bitMatrix = bitmatrix;
            return;
        }
    }

    private int copyBit(int i, int j, int k)
    {
        int l;
        if(bitMatrix.get(i, j))
            l = 1 | k << 1;
        else
            l = k << 1;
        return l;
    }

    byte[] readCodewords()
        throws FormatException
    {
        Version version;
        int i;
        BitMatrix bitmatrix;
        boolean flag;
        byte abyte0[];
        int j;
        int k;
        int l;
        int i1;
        FormatInformation formatinformation = readFormatInformation();
        version = readVersion();
        DataMask datamask = DataMask.forReference(formatinformation.getDataMask());
        i = bitMatrix.getHeight();
        datamask.unmaskBitMatrix(bitMatrix, i);
        bitmatrix = version.buildFunctionPattern();
        flag = true;
        abyte0 = new byte[version.getTotalCodewords()];
        j = 0;
        k = 0;
        l = 0;
        i1 = i - 1;
_L8:
        if(i1 <= 0) goto _L2; else goto _L1
_L1:
        int j1;
        if(i1 == 6)
            i1--;
        j1 = 0;
_L7:
        if(j1 >= i) goto _L4; else goto _L3
_L3:
        int i2;
        int j2;
        int k1;
        int l1;
        if(flag)
            k1 = i - 1 - j1;
        else
            k1 = j1;
        l1 = 0;
        i2 = j;
        if(l1 >= 2)
            break; /* Loop/switch isn't completed */
        if(bitmatrix.get(i1 - l1, k1))
            break MISSING_BLOCK_LABEL_250;
        l++;
        k <<= 1;
        if(bitMatrix.get(i1 - l1, k1))
            k |= 1;
        if(l != 8)
            break MISSING_BLOCK_LABEL_250;
        j2 = i2 + 1;
        abyte0[i2] = (byte)k;
        l = 0;
        k = 0;
_L9:
        l1++;
        i2 = j2;
        if(true) goto _L6; else goto _L5
_L6:
        break MISSING_BLOCK_LABEL_115;
_L5:
        j1++;
        j = i2;
          goto _L7
_L4:
        flag ^= true;
        i1 -= 2;
          goto _L8
_L2:
        if(j != version.getTotalCodewords())
            throw FormatException.getFormatInstance();
        else
            return abyte0;
        j2 = i2;
          goto _L9
    }

    FormatInformation readFormatInformation()
        throws FormatException
    {
        FormatInformation formatinformation;
        if(parsedFormatInfo != null)
        {
            formatinformation = parsedFormatInfo;
        } else
        {
            int i = 0;
            for(int j = 0; j < 6; j++)
                i = copyBit(j, 8, i);

            int k = copyBit(8, 7, copyBit(8, 8, copyBit(7, 8, i)));
            for(int l = 5; l >= 0; l--)
                k = copyBit(8, l, k);

            int i1 = bitMatrix.getHeight();
            int j1 = 0;
            int k1 = i1 - 8;
            for(int l1 = i1 - 1; l1 >= k1; l1--)
                j1 = copyBit(l1, 8, j1);

            for(int i2 = i1 - 7; i2 < i1; i2++)
                j1 = copyBit(8, i2, j1);

            parsedFormatInfo = FormatInformation.decodeFormatInformation(k, j1);
            if(parsedFormatInfo != null)
                formatinformation = parsedFormatInfo;
            else
                throw FormatException.getFormatInstance();
        }
        return formatinformation;
    }

    Version readVersion()
        throws FormatException
    {
        Version version;
        if(parsedVersion != null)
        {
            version = parsedVersion;
        } else
        {
            int i = bitMatrix.getHeight();
            int j = i - 17 >> 2;
            if(j <= 6)
            {
                version = Version.getVersionForNumber(j);
            } else
            {
                int k = 0;
                int l = i - 11;
                for(int i1 = 5; i1 >= 0; i1--)
                {
                    for(int i2 = i - 9; i2 >= l; i2--)
                        k = copyBit(i2, i1, k);

                }

                parsedVersion = Version.decodeVersionInformation(k);
                if(parsedVersion != null && parsedVersion.getDimensionForVersion() == i)
                {
                    version = parsedVersion;
                } else
                {
                    int j1 = 0;
                    for(int k1 = 5; k1 >= 0; k1--)
                    {
                        for(int l1 = i - 9; l1 >= l; l1--)
                            j1 = copyBit(k1, l1, j1);

                    }

                    parsedVersion = Version.decodeVersionInformation(j1);
                    if(parsedVersion != null && parsedVersion.getDimensionForVersion() == i)
                        version = parsedVersion;
                    else
                        throw FormatException.getFormatInstance();
                }
            }
        }
        return version;
    }

    private final BitMatrix bitMatrix;
    private FormatInformation parsedFormatInfo;
    private Version parsedVersion;
}
