// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.oned;

import com.google.zxing.*;
import com.google.zxing.common.BitArray;
import java.util.Hashtable;

// Referenced classes of package com.google.zxing.oned:
//            OneDReader

public final class Code93Reader extends OneDReader
{

    public Code93Reader()
    {
    }

    private static void checkChecksums(StringBuffer stringbuffer)
        throws ChecksumException
    {
        int i = stringbuffer.length();
        checkOneChecksum(stringbuffer, i - 2, 20);
        checkOneChecksum(stringbuffer, i - 1, 15);
    }

    private static void checkOneChecksum(StringBuffer stringbuffer, int i, int j)
        throws ChecksumException
    {
        int k = 1;
        int l = 0;
        for(int i1 = i - 1; i1 >= 0; i1--)
        {
            l += k * "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(stringbuffer.charAt(i1));
            if(++k > j)
                k = 1;
        }

        if(stringbuffer.charAt(i) != ALPHABET[l % 47])
            throw ChecksumException.getChecksumInstance();
        else
            return;
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
            break MISSING_BLOCK_LABEL_264;
        c = stringbuffer.charAt(j);
        if(c < 'a' || c > 'd')
            break MISSING_BLOCK_LABEL_254;
        c1 = stringbuffer.charAt(j + 1);
        k = 0;
        c;
        JVM INSTR tableswitch 97 100: default 88
    //                   97 132
    //                   98 160
    //                   99 212
    //                   100 104;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        stringbuffer1.append(k);
        j++;
_L6:
        j++;
        continue; /* Loop/switch isn't completed */
_L5:
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
_L4:
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
                int ai[] = new int[6];
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
                            if(toPattern(ai) == ASTERISK_ENCODING)
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

    private static int toPattern(int ai[])
    {
        int i = ai.length;
        int j = 0;
        for(int k = 0; k < i; k++)
            j += ai[k];

        int l = 0;
        int i1 = 0;
        do
        {
            int k1;
label0:
            {
                if(i1 < i)
                {
                    int j1 = (9 * (ai[i1] << 8)) / j;
                    k1 = j1 >> 8;
                    if((j1 & 0xff) > 127)
                        k1++;
                    if(k1 >= 1 && k1 <= 4)
                        break label0;
                    l = -1;
                }
                return l;
            }
            if((i1 & 1) == 0)
            {
                for(int l1 = 0; l1 < k1; l1++)
                    l = 1 | l << 1;

            } else
            {
                l <<= k1;
            }
            i1++;
        } while(true);
    }

    public Result decodeRow(int i, BitArray bitarray, Hashtable hashtable)
        throws NotFoundException, ChecksumException, FormatException
    {
        int ai[] = findAsteriskPattern(bitarray);
        int j = ai[1];
        int k;
        for(k = bitarray.getSize(); j < k && !bitarray.get(j); j++);
        StringBuffer stringbuffer = new StringBuffer(20);
        int ai1[] = new int[6];
        char c;
        int i1;
        do
        {
            recordPattern(bitarray, j, ai1);
            int l = toPattern(ai1);
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
        if(j == k || !bitarray.get(j))
            throw NotFoundException.getNotFoundInstance();
        if(stringbuffer.length() < 2)
        {
            throw NotFoundException.getNotFoundInstance();
        } else
        {
            checkChecksums(stringbuffer);
            stringbuffer.setLength(-2 + stringbuffer.length());
            String s = decodeExtended(stringbuffer);
            float f = (float)(ai[1] + ai[0]) / 2.0F;
            float f1 = (float)(j + i1) / 2.0F;
            ResultPoint aresultpoint[] = new ResultPoint[2];
            ResultPoint resultpoint = new ResultPoint(f, i);
            aresultpoint[0] = resultpoint;
            ResultPoint resultpoint1 = new ResultPoint(f1, i);
            aresultpoint[1] = resultpoint1;
            return new Result(s, null, aresultpoint, BarcodeFormat.CODE_93);
        }
    }

    private static final char ALPHABET[] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".toCharArray();
    private static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*";
    private static final int ASTERISK_ENCODING;
    private static final int CHARACTER_ENCODINGS[];

    static 
    {
        int ai[] = new int[48];
        ai[0] = 276;
        ai[1] = 328;
        ai[2] = 324;
        ai[3] = 322;
        ai[4] = 296;
        ai[5] = 292;
        ai[6] = 290;
        ai[7] = 336;
        ai[8] = 274;
        ai[9] = 266;
        ai[10] = 424;
        ai[11] = 420;
        ai[12] = 418;
        ai[13] = 404;
        ai[14] = 402;
        ai[15] = 394;
        ai[16] = 360;
        ai[17] = 356;
        ai[18] = 354;
        ai[19] = 308;
        ai[20] = 282;
        ai[21] = 344;
        ai[22] = 332;
        ai[23] = 326;
        ai[24] = 300;
        ai[25] = 278;
        ai[26] = 436;
        ai[27] = 434;
        ai[28] = 428;
        ai[29] = 422;
        ai[30] = 406;
        ai[31] = 410;
        ai[32] = 364;
        ai[33] = 358;
        ai[34] = 310;
        ai[35] = 314;
        ai[36] = 302;
        ai[37] = 468;
        ai[38] = 466;
        ai[39] = 458;
        ai[40] = 366;
        ai[41] = 374;
        ai[42] = 430;
        ai[43] = 294;
        ai[44] = 474;
        ai[45] = 470;
        ai[46] = 306;
        ai[47] = 350;
        CHARACTER_ENCODINGS = ai;
        ASTERISK_ENCODING = CHARACTER_ENCODINGS[47];
    }
}
