// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.datamatrix.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;

// Referenced classes of package com.google.zxing.datamatrix.decoder:
//            Version

final class BitMatrixParser
{

    BitMatrixParser(BitMatrix bitmatrix)
        throws FormatException
    {
        int i = bitmatrix.getHeight();
        if(i < 10 || i > 144 || (i & 1) != 0)
        {
            throw FormatException.getFormatInstance();
        } else
        {
            version = readVersion(bitmatrix);
            mappingBitMatrix = extractDataRegion(bitmatrix);
            readMappingMatrix = new BitMatrix(mappingBitMatrix.getHeight());
            return;
        }
    }

    BitMatrix extractDataRegion(BitMatrix bitmatrix)
    {
        int i = version.getSymbolSizeRows();
        int j = version.getSymbolSizeColumns();
        if(bitmatrix.getHeight() != i)
            throw new IllegalArgumentException("Dimension of bitMarix must match the version size");
        int k = version.getDataRegionSizeRows();
        int l = version.getDataRegionSizeColumns();
        int i1 = i / k;
        int j1 = j / l;
        BitMatrix bitmatrix1 = new BitMatrix(i1 * k);
        for(int k1 = 0; k1 < i1; k1++)
        {
            int l1 = k1 * k;
            for(int i2 = 0; i2 < j1; i2++)
            {
                int j2 = i2 * l;
                for(int k2 = 0; k2 < k; k2++)
                {
                    int l2 = k2 + (1 + k1 * (k + 2));
                    int i3 = l1 + k2;
                    for(int j3 = 0; j3 < l; j3++)
                        if(bitmatrix.get(j3 + (1 + i2 * (l + 2)), l2))
                            bitmatrix1.set(j2 + j3, i3);

                }

            }

        }

        return bitmatrix1;
    }

    byte[] readCodewords()
        throws FormatException
    {
        byte abyte0[];
        int i;
        int j;
        int k;
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        int l;
        abyte0 = new byte[version.getTotalCodewords()];
        i = 4;
        j = 0;
        k = mappingBitMatrix.getHeight();
        flag = false;
        flag1 = false;
        flag2 = false;
        flag3 = false;
        l = 0;
_L14:
        if(i != k || j != 0 || flag) goto _L2; else goto _L1
_L1:
        int i2;
        i2 = l + 1;
        abyte0[l] = (byte)readCorner1(k, k);
        i -= 2;
        j += 2;
        flag = true;
_L13:
        int i1;
        if(i >= k && j >= k)
            if(i2 != version.getTotalCodewords())
                throw FormatException.getFormatInstance();
            else
                return abyte0;
          goto _L3
_L2:
        if(i != k - 2 || j != 0 || (k & 3) == 0 || flag1) goto _L5; else goto _L4
_L4:
        i2 = l + 1;
        abyte0[l] = (byte)readCorner2(k, k);
        i -= 2;
        j += 2;
        flag1 = true;
          goto _L6
_L5:
        if(i != k + 4 || j != 2 || (k & 7) != 0 || flag2) goto _L8; else goto _L7
_L7:
        i2 = l + 1;
        abyte0[l] = (byte)readCorner3(k, k);
        i -= 2;
        j += 2;
        flag2 = true;
          goto _L6
_L8:
        if(i != k - 2 || j != 0 || (k & 7) != 4 || flag3) goto _L10; else goto _L9
_L9:
        i2 = l + 1;
        abyte0[l] = (byte)readCorner4(k, k);
        i -= 2;
        j += 2;
        flag3 = true;
          goto _L6
_L12:
        l = i1;
_L10:
        int j1;
        int k1;
        int l1;
        if(i < k && j >= 0 && !readMappingMatrix.get(j, i))
        {
            i1 = l + 1;
            abyte0[l] = (byte)readUtah(i, j, k, k);
        } else
        {
            i1 = l;
        }
        i -= 2;
        j += 2;
        if(i >= 0 && j < k) goto _L12; else goto _L11
_L11:
        j1 = i + 1;
        k1 = j + 3;
        l1 = i1;
_L15:
        if(j1 >= 0 && k1 < k && !readMappingMatrix.get(k1, j1))
        {
            i2 = l1 + 1;
            abyte0[l1] = (byte)readUtah(j1, k1, k, k);
        } else
        {
            i2 = l1;
        }
        j1 += 2;
        k1 -= 2;
        if(j1 < k && k1 >= 0)
            break MISSING_BLOCK_LABEL_444;
        i = j1 + 3;
        j = k1 + 1;
_L6:
        if(true) goto _L13; else goto _L3
_L3:
        l = i2;
          goto _L14
        l1 = i2;
          goto _L15
    }

    int readCorner1(int i, int j)
    {
        int k = 0;
        if(readModule(i - 1, 0, i, j))
            k = false | true;
        int l = k << 1;
        if(readModule(i - 1, 1, i, j))
            l |= 1;
        int i1 = l << 1;
        if(readModule(i - 1, 2, i, j))
            i1 |= 1;
        int j1 = i1 << 1;
        if(readModule(0, j - 2, i, j))
            j1 |= 1;
        int k1 = j1 << 1;
        if(readModule(0, j - 1, i, j))
            k1 |= 1;
        int l1 = k1 << 1;
        if(readModule(1, j - 1, i, j))
            l1 |= 1;
        int i2 = l1 << 1;
        if(readModule(2, j - 1, i, j))
            i2 |= 1;
        int j2 = i2 << 1;
        if(readModule(3, j - 1, i, j))
            j2 |= 1;
        return j2;
    }

    int readCorner2(int i, int j)
    {
        int k = 0;
        if(readModule(i - 3, 0, i, j))
            k = false | true;
        int l = k << 1;
        if(readModule(i - 2, 0, i, j))
            l |= 1;
        int i1 = l << 1;
        if(readModule(i - 1, 0, i, j))
            i1 |= 1;
        int j1 = i1 << 1;
        if(readModule(0, j - 4, i, j))
            j1 |= 1;
        int k1 = j1 << 1;
        if(readModule(0, j - 3, i, j))
            k1 |= 1;
        int l1 = k1 << 1;
        if(readModule(0, j - 2, i, j))
            l1 |= 1;
        int i2 = l1 << 1;
        if(readModule(0, j - 1, i, j))
            i2 |= 1;
        int j2 = i2 << 1;
        if(readModule(1, j - 1, i, j))
            j2 |= 1;
        return j2;
    }

    int readCorner3(int i, int j)
    {
        int k = 0;
        if(readModule(i - 1, 0, i, j))
            k = false | true;
        int l = k << 1;
        if(readModule(i - 1, j - 1, i, j))
            l |= 1;
        int i1 = l << 1;
        if(readModule(0, j - 3, i, j))
            i1 |= 1;
        int j1 = i1 << 1;
        if(readModule(0, j - 2, i, j))
            j1 |= 1;
        int k1 = j1 << 1;
        if(readModule(0, j - 1, i, j))
            k1 |= 1;
        int l1 = k1 << 1;
        if(readModule(1, j - 3, i, j))
            l1 |= 1;
        int i2 = l1 << 1;
        if(readModule(1, j - 2, i, j))
            i2 |= 1;
        int j2 = i2 << 1;
        if(readModule(1, j - 1, i, j))
            j2 |= 1;
        return j2;
    }

    int readCorner4(int i, int j)
    {
        int k = 0;
        if(readModule(i - 3, 0, i, j))
            k = false | true;
        int l = k << 1;
        if(readModule(i - 2, 0, i, j))
            l |= 1;
        int i1 = l << 1;
        if(readModule(i - 1, 0, i, j))
            i1 |= 1;
        int j1 = i1 << 1;
        if(readModule(0, j - 2, i, j))
            j1 |= 1;
        int k1 = j1 << 1;
        if(readModule(0, j - 1, i, j))
            k1 |= 1;
        int l1 = k1 << 1;
        if(readModule(1, j - 1, i, j))
            l1 |= 1;
        int i2 = l1 << 1;
        if(readModule(2, j - 1, i, j))
            i2 |= 1;
        int j2 = i2 << 1;
        if(readModule(3, j - 1, i, j))
            j2 |= 1;
        return j2;
    }

    boolean readModule(int i, int j, int k, int l)
    {
        if(i < 0)
        {
            i += k;
            j += 4 - (7 & k + 4);
        }
        if(j < 0)
        {
            j += l;
            i += 4 - (7 & l + 4);
        }
        readMappingMatrix.set(j, i);
        return mappingBitMatrix.get(j, i);
    }

    int readUtah(int i, int j, int k, int l)
    {
        int i1 = 0;
        if(readModule(i - 2, j - 2, k, l))
            i1 = false | true;
        int j1 = i1 << 1;
        if(readModule(i - 2, j - 1, k, l))
            j1 |= 1;
        int k1 = j1 << 1;
        if(readModule(i - 1, j - 2, k, l))
            k1 |= 1;
        int l1 = k1 << 1;
        if(readModule(i - 1, j - 1, k, l))
            l1 |= 1;
        int i2 = l1 << 1;
        if(readModule(i - 1, j, k, l))
            i2 |= 1;
        int j2 = i2 << 1;
        if(readModule(i, j - 2, k, l))
            j2 |= 1;
        int k2 = j2 << 1;
        if(readModule(i, j - 1, k, l))
            k2 |= 1;
        int l2 = k2 << 1;
        if(readModule(i, j, k, l))
            l2 |= 1;
        return l2;
    }

    Version readVersion(BitMatrix bitmatrix)
        throws FormatException
    {
        Version version1;
        if(version != null)
        {
            version1 = version;
        } else
        {
            int i = bitmatrix.getHeight();
            version1 = Version.getVersionForDimensions(i, i);
        }
        return version1;
    }

    private final BitMatrix mappingBitMatrix;
    private final BitMatrix readMappingMatrix;
    private final Version version;
}
