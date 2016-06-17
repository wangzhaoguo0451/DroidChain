// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.oned;

import com.google.zxing.*;
import com.google.zxing.common.BitArray;
import java.util.Hashtable;

// Referenced classes of package com.google.zxing.oned:
//            OneDReader

public final class Code39Reader extends OneDReader
{

    public Code39Reader()
    {
        usingCheckDigit = false;
        extendedMode = false;
    }

    public Code39Reader(boolean flag)
    {
        usingCheckDigit = flag;
        extendedMode = false;
    }

    public Code39Reader(boolean flag, boolean flag1)
    {
        usingCheckDigit = flag;
        extendedMode = flag1;
    }

    private static String decodeExtended(StringBuffer stringbuffer)
        throws FormatException
    {
        int i;
        StringBuffer stringbuffer1;
        int j;
        i = stringbuffer.length();
        stringbuffer1 = new StringBuffer(i);
        j = 0;
_L8:
        char c;
        char c1;
        int k;
        if(j >= i)
            break MISSING_BLOCK_LABEL_288;
        c = stringbuffer.charAt(j);
        if(c != '+' && c != '$' && c != '%' && c != '/')
            break MISSING_BLOCK_LABEL_278;
        c1 = stringbuffer.charAt(j + 1);
        k = 0;
        c;
        JVM INSTR lookupswitch 4: default 112
    //                   36: 156
    //                   37: 184
    //                   43: 128
    //                   47: 236;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        stringbuffer1.append(k);
        j++;
_L6:
        j++;
        continue; /* Loop/switch isn't completed */
_L4:
        if(c1 >= 'A' && c1 <= 'Z')
            k = c1 + 32;
        else
            throw FormatException.getFormatInstance();
          goto _L1
_L2:
        if(c1 >= 'A' && c1 <= 'Z')
            k = c1 + -64;
        else
            throw FormatException.getFormatInstance();
          goto _L1
_L3:
        if(c1 >= 'A' && c1 <= 'E')
            k = c1 + -38;
        else
        if(c1 >= 'F' && c1 <= 'W')
            k = c1 + -11;
        else
            throw FormatException.getFormatInstance();
          goto _L1
_L5:
        if(c1 >= 'A' && c1 <= 'O')
            k = c1 + -32;
        else
        if(c1 == 'Z')
            k = 58;
        else
            throw FormatException.getFormatInstance();
          goto _L1
        stringbuffer1.append(c);
          goto _L6
        return stringbuffer1.toString();
        if(true) goto _L8; else goto _L7
_L7:
    }

    private static int[] findAsteriskPattern(BitArray bitarray)
        throws NotFoundException
    {
        int i = bitarray.getSize();
        int j = 0;
        do
        {
            if(j >= i || bitarray.get(j))
            {
                int k = 0;
                int ai[] = new int[9];
                int l = j;
                boolean flag = false;
                int i1 = ai.length;
                int j1 = j;
                while(j1 < i) 
                {
                    if(flag ^ bitarray.get(j1))
                    {
                        ai[k] = 1 + ai[k];
                    } else
                    {
                        if(k == i1 - 1)
                        {
                            if(toNarrowWidePattern(ai) == ASTERISK_ENCODING && bitarray.isRange(Math.max(0, l - (j1 - l) / 2), l, false))
                            {
                                int ai1[] = new int[2];
                                ai1[0] = l;
                                ai1[1] = j1;
                                return ai1;
                            }
                            l += ai[0] + ai[1];
                            for(int k1 = 2; k1 < i1; k1++)
                                ai[k1 - 2] = ai[k1];

                            ai[i1 - 2] = 0;
                            ai[i1 - 1] = 0;
                            k--;
                        } else
                        {
                            k++;
                        }
                        ai[k] = 1;
                        if(!flag)
                            flag = true;
                        else
                            flag = false;
                    }
                    j1++;
                }
            } else
            {
                j++;
                continue;
            }
            throw NotFoundException.getNotFoundInstance();
        } while(true);
    }

    private static char patternToChar(int i)
        throws NotFoundException
    {
        for(int j = 0; j < CHARACTER_ENCODINGS.length; j++)
            if(CHARACTER_ENCODINGS[j] == i)
                return ALPHABET[j];

        throw NotFoundException.getNotFoundInstance();
    }

    private static int toNarrowWidePattern(int ai[])
    {
        int i;
        int j;
        i = ai.length;
        j = 0;
_L8:
        int i1;
        int j1;
        int k1;
        int i2;
        int k = 0x7fffffff;
        for(int l = 0; l < i; l++)
        {
            int l2 = ai[l];
            if(l2 < k && l2 > j)
                k = l2;
        }

        j = k;
        i1 = 0;
        j1 = 0;
        k1 = 0;
        for(int l1 = 0; l1 < i; l1++)
        {
            int k2 = ai[l1];
            if(ai[l1] > j)
            {
                k1 |= 1 << i - 1 - l1;
                i1++;
                j1 += k2;
            }
        }

        if(i1 != 3)
            continue; /* Loop/switch isn't completed */
        i2 = 0;
_L6:
        if(i2 >= i || i1 <= 0) goto _L2; else goto _L1
_L1:
        int j2 = ai[i2];
        if(ai[i2] <= j) goto _L4; else goto _L3
_L3:
        i1--;
        if(j2 << 1 < j1) goto _L4; else goto _L5
_L5:
        k1 = -1;
_L2:
        return k1;
_L4:
        i2++;
          goto _L6
        if(i1 > 3) goto _L8; else goto _L7
_L7:
        k1 = -1;
          goto _L2
    }

    public Result decodeRow(int i, BitArray bitarray, Hashtable hashtable)
        throws NotFoundException, ChecksumException, FormatException
    {
        int ai[] = findAsteriskPattern(bitarray);
        int j = ai[1];
        int k;
        for(k = bitarray.getSize(); j < k && !bitarray.get(j); j++);
        StringBuffer stringbuffer = new StringBuffer(20);
        int ai1[] = new int[9];
        char c;
        int i1;
        do
        {
            recordPattern(bitarray, j, ai1);
            int l = toNarrowWidePattern(ai1);
            if(l < 0)
                throw NotFoundException.getNotFoundInstance();
            c = patternToChar(l);
            stringbuffer.append(c);
            i1 = j;
            for(int j1 = 0; j1 < ai1.length; j1++)
                j += ai1[j1];

            for(; j < k && !bitarray.get(j); j++);
        } while(c != '*');
        stringbuffer.deleteCharAt(-1 + stringbuffer.length());
        int k1 = 0;
        for(int l1 = 0; l1 < ai1.length; l1++)
            k1 += ai1[l1];

        int i2 = j - i1 - k1;
        if(j != k && i2 / 2 < k1)
            throw NotFoundException.getNotFoundInstance();
        if(usingCheckDigit)
        {
            int j2 = -1 + stringbuffer.length();
            int k2 = 0;
            for(int l2 = 0; l2 < j2; l2++)
                k2 += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(stringbuffer.charAt(l2));

            if(stringbuffer.charAt(j2) != ALPHABET[k2 % 43])
                throw ChecksumException.getChecksumInstance();
            stringbuffer.deleteCharAt(j2);
        }
        if(stringbuffer.length() == 0)
            throw NotFoundException.getNotFoundInstance();
        String s;
        float f;
        float f1;
        ResultPoint aresultpoint[];
        ResultPoint resultpoint;
        ResultPoint resultpoint1;
        Result result;
        if(extendedMode)
            s = decodeExtended(stringbuffer);
        else
            s = stringbuffer.toString();
        f = (float)(ai[1] + ai[0]) / 2.0F;
        f1 = (float)(j + i1) / 2.0F;
        aresultpoint = new ResultPoint[2];
        resultpoint = new ResultPoint(f, i);
        aresultpoint[0] = resultpoint;
        resultpoint1 = new ResultPoint(f1, i);
        aresultpoint[1] = resultpoint1;
        result = new Result(s, null, aresultpoint, BarcodeFormat.CODE_39);
        return result;
    }

    private static final char ALPHABET[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".toCharArray();
    static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%";
    private static final int ASTERISK_ENCODING;
    static final int CHARACTER_ENCODINGS[];
    private final boolean extendedMode;
    private final boolean usingCheckDigit;

    static 
    {
        int ai[] = new int[44];
        ai[0] = 52;
        ai[1] = 289;
        ai[2] = 97;
        ai[3] = 352;
        ai[4] = 49;
        ai[5] = 304;
        ai[6] = 112;
        ai[7] = 37;
        ai[8] = 292;
        ai[9] = 100;
        ai[10] = 265;
        ai[11] = 73;
        ai[12] = 328;
        ai[13] = 25;
        ai[14] = 280;
        ai[15] = 88;
        ai[16] = 13;
        ai[17] = 268;
        ai[18] = 76;
        ai[19] = 28;
        ai[20] = 259;
        ai[21] = 67;
        ai[22] = 322;
        ai[23] = 19;
        ai[24] = 274;
        ai[25] = 82;
        ai[26] = 7;
        ai[27] = 262;
        ai[28] = 70;
        ai[29] = 22;
        ai[30] = 385;
        ai[31] = 193;
        ai[32] = 448;
        ai[33] = 145;
        ai[34] = 400;
        ai[35] = 208;
        ai[36] = 133;
        ai[37] = 388;
        ai[38] = 196;
        ai[39] = 148;
        ai[40] = 168;
        ai[41] = 162;
        ai[42] = 138;
        ai[43] = 42;
        CHARACTER_ENCODINGS = ai;
        ASTERISK_ENCODING = CHARACTER_ENCODINGS[39];
    }
}
