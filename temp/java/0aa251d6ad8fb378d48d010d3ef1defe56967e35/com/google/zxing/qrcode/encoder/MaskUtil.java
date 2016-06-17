// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.qrcode.encoder;


// Referenced classes of package com.google.zxing.qrcode.encoder:
//            ByteMatrix, QRCode

public final class MaskUtil
{

    private MaskUtil()
    {
    }

    public static int applyMaskPenaltyRule1(ByteMatrix bytematrix)
    {
        return applyMaskPenaltyRule1Internal(bytematrix, true) + applyMaskPenaltyRule1Internal(bytematrix, false);
    }

    private static int applyMaskPenaltyRule1Internal(ByteMatrix bytematrix, boolean flag)
    {
        int i = 0;
        int j = 0;
        byte byte0 = -1;
        int k;
        int l;
        byte abyte0[][];
        int i1;
        if(flag)
            k = bytematrix.getHeight();
        else
            k = bytematrix.getWidth();
        if(flag)
            l = bytematrix.getWidth();
        else
            l = bytematrix.getHeight();
        abyte0 = bytematrix.getArray();
        i1 = 0;
        do
        {
            if(i1 >= k)
                break;
            int j1 = 0;
            while(j1 < l) 
            {
                byte byte1;
                if(flag)
                    byte1 = abyte0[i1][j1];
                else
                    byte1 = abyte0[j1][i1];
                if(byte1 == byte0)
                {
                    if(++j == 5)
                        i += 3;
                    else
                    if(j > 5)
                        i++;
                } else
                {
                    j = 1;
                    byte0 = byte1;
                }
                j1++;
            }
            j = 0;
            i1++;
        } while(true);
        return i;
    }

    public static int applyMaskPenaltyRule2(ByteMatrix bytematrix)
    {
        int i = 0;
        byte abyte0[][] = bytematrix.getArray();
        int j = bytematrix.getWidth();
        int k = bytematrix.getHeight();
        for(int l = 0; l < k - 1; l++)
        {
            for(int i1 = 0; i1 < j - 1; i1++)
            {
                byte byte0 = abyte0[l][i1];
                if(byte0 == abyte0[l][i1 + 1] && byte0 == abyte0[l + 1][i1] && byte0 == abyte0[l + 1][i1 + 1])
                    i += 3;
            }

        }

        return i;
    }

    public static int applyMaskPenaltyRule3(ByteMatrix bytematrix)
    {
        int i = 0;
        byte abyte0[][] = bytematrix.getArray();
        int j = bytematrix.getWidth();
        int k = bytematrix.getHeight();
        for(int l = 0; l < k; l++)
        {
            for(int i1 = 0; i1 < j; i1++)
            {
                if(i1 + 6 < j && abyte0[l][i1] == 1 && abyte0[l][i1 + 1] == 0 && abyte0[l][i1 + 2] == 1 && abyte0[l][i1 + 3] == 1 && abyte0[l][i1 + 4] == 1 && abyte0[l][i1 + 5] == 0 && abyte0[l][i1 + 6] == 1 && (i1 + 10 < j && abyte0[l][i1 + 7] == 0 && abyte0[l][i1 + 8] == 0 && abyte0[l][i1 + 9] == 0 && abyte0[l][i1 + 10] == 0 || i1 - 4 >= 0 && abyte0[l][i1 - 1] == 0 && abyte0[l][i1 - 2] == 0 && abyte0[l][i1 - 3] == 0 && abyte0[l][i1 - 4] == 0))
                    i += 40;
                if(l + 6 < k && abyte0[l][i1] == 1 && abyte0[l + 1][i1] == 0 && abyte0[l + 2][i1] == 1 && abyte0[l + 3][i1] == 1 && abyte0[l + 4][i1] == 1 && abyte0[l + 5][i1] == 0 && abyte0[l + 6][i1] == 1 && (l + 10 < k && abyte0[l + 7][i1] == 0 && abyte0[l + 8][i1] == 0 && abyte0[l + 9][i1] == 0 && abyte0[l + 10][i1] == 0 || l - 4 >= 0 && abyte0[l - 1][i1] == 0 && abyte0[l - 2][i1] == 0 && abyte0[l - 3][i1] == 0 && abyte0[l - 4][i1] == 0))
                    i += 40;
            }

        }

        return i;
    }

    public static int applyMaskPenaltyRule4(ByteMatrix bytematrix)
    {
        int i = 0;
        byte abyte0[][] = bytematrix.getArray();
        int j = bytematrix.getWidth();
        int k = bytematrix.getHeight();
        for(int l = 0; l < k; l++)
        {
            for(int j1 = 0; j1 < j; j1++)
                if(abyte0[l][j1] == 1)
                    i++;

        }

        int i1 = bytematrix.getHeight() * bytematrix.getWidth();
        return 10 * (Math.abs((int)(100D * ((double)i / (double)i1) - 50D)) / 5);
    }

    public static boolean getDataMaskBit(int i, int j, int k)
    {
        if(!QRCode.isValidMaskPattern(i))
            throw new IllegalArgumentException("Invalid mask pattern");
        i;
        JVM INSTR tableswitch 0 7: default 64
    //                   0 91
    //                   1 107
    //                   2 114
    //                   3 121
    //                   4 130
    //                   5 143
    //                   6 161
    //                   7 181;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L9:
        break MISSING_BLOCK_LABEL_181;
_L1:
        throw new IllegalArgumentException("Invalid mask pattern: " + i);
_L2:
        int l = 1 & k + j;
_L10:
        boolean flag;
        int i1;
        int j1;
        if(l == 0)
            flag = true;
        else
            flag = false;
        return flag;
_L3:
        l = k & 1;
          goto _L10
_L4:
        l = j % 3;
          goto _L10
_L5:
        l = (k + j) % 3;
          goto _L10
_L6:
        l = 1 & (k >>> 1) + j / 3;
          goto _L10
_L7:
        j1 = k * j;
        l = (j1 & 1) + j1 % 3;
          goto _L10
_L8:
        i1 = k * j;
        l = 1 & (i1 & 1) + i1 % 3;
          goto _L10
        l = 1 & (k * j) % 3 + (1 & k + j);
          goto _L10
    }
}
