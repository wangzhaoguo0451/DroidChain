// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.oned;

import com.google.zxing.*;
import com.google.zxing.common.BitArray;
import java.util.Hashtable;

// Referenced classes of package com.google.zxing.oned:
//            OneDReader

public final class CodaBarReader extends OneDReader
{

    public CodaBarReader()
    {
    }

    private static boolean arrayContains(char ac[], char c)
    {
        int i;
        if(ac == null)
            break MISSING_BLOCK_LABEL_29;
        i = 0;
_L3:
        if(i >= ac.length)
            break MISSING_BLOCK_LABEL_29;
        if(ac[i] != c) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        i++;
          goto _L3
        flag = false;
          goto _L4
    }

    private static int[] findAsteriskPattern(BitArray bitarray)
        throws NotFoundException
    {
        int i;
        int j;
        i = bitarray.getSize();
        j = 0;
_L8:
        if(j < i && !bitarray.get(j)) goto _L2; else goto _L1
_L1:
        int k;
        int ai[];
        int l;
        boolean flag;
        int i1;
        int j1;
        k = 0;
        ai = new int[7];
        l = j;
        flag = false;
        i1 = ai.length;
        j1 = j;
_L4:
        if(j1 >= i)
            break MISSING_BLOCK_LABEL_231;
        if(!(flag ^ bitarray.get(j1)))
            break; /* Loop/switch isn't completed */
        ai[k] = 1 + ai[k];
_L5:
        j1++;
        if(true) goto _L4; else goto _L3
_L2:
        j++;
        continue; /* Loop/switch isn't completed */
_L3:
        if(k != i1 - 1)
            break MISSING_BLOCK_LABEL_225;
        int ai1[];
        if(!arrayContains(STARTEND_ENCODING, toNarrowWidePattern(ai)) || !bitarray.isRange(Math.max(0, l - (j1 - l) / 2), l, false))
            break MISSING_BLOCK_LABEL_150;
        ai1 = new int[2];
        ai1[0] = l;
        ai1[1] = j1;
        return ai1;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        l += ai[0] + ai[1];
        for(int k1 = 2; k1 < i1; k1++)
            ai[k1 - 2] = ai[k1];

        ai[i1 - 2] = 0;
        ai[i1 - 1] = 0;
        k--;
_L6:
        ai[k] = 1;
        flag ^= true;
          goto _L5
        k++;
          goto _L6
        throw NotFoundException.getNotFoundInstance();
        if(true) goto _L8; else goto _L7
_L7:
    }

    private static char toNarrowWidePattern(int ai[])
    {
        int i;
        int j;
        int k;
        i = ai.length;
        j = 0;
        k = 0x7fffffff;
        for(int l = 0; l < i; l++)
        {
            if(ai[l] < k)
                k = ai[l];
            if(ai[l] > j)
                j = ai[l];
        }

_L5:
        int j1;
        int l1;
        int i1 = 0;
        j1 = 0;
        for(int k1 = 0; k1 < i; k1++)
            if(ai[k1] > j)
            {
                j1 |= 1 << i - 1 - k1;
                i1++;
            }

        if(i1 != 2 && i1 != 3)
            continue; /* Loop/switch isn't completed */
        l1 = 0;
_L3:
        if(l1 >= CHARACTER_ENCODINGS.length)
            continue; /* Loop/switch isn't completed */
        if(CHARACTER_ENCODINGS[l1] != j1) goto _L2; else goto _L1
_L1:
        char c = ALPHABET[l1];
_L6:
        return c;
_L2:
        l1++;
          goto _L3
        if(--j > k) goto _L5; else goto _L4
_L4:
        c = '!';
          goto _L6
    }

    public Result decodeRow(int i, BitArray bitarray, Hashtable hashtable)
        throws NotFoundException
    {
        int ai[] = findAsteriskPattern(bitarray);
        ai[1] = 0;
        int j = ai[1];
        int k;
        for(k = bitarray.getSize(); j < k && !bitarray.get(j); j++);
        StringBuffer stringbuffer = new StringBuffer();
        int ai1[];
        int l;
        do
        {
            ai1 = new int[7];
            ai1[0] = 0;
            ai1[1] = 0;
            ai1[2] = 0;
            ai1[3] = 0;
            ai1[4] = 0;
            ai1[5] = 0;
            ai1[6] = 0;
            recordPattern(bitarray, j, ai1);
            char c = toNarrowWidePattern(ai1);
            if(c == '!')
                throw NotFoundException.getNotFoundInstance();
            stringbuffer.append(c);
            l = j;
            for(int i1 = 0; i1 < ai1.length; i1++)
                j += ai1[i1];

            for(; j < k && !bitarray.get(j); j++);
        } while(j < k);
        int j1 = 0;
        for(int k1 = 0; k1 < ai1.length; k1++)
            j1 += ai1[k1];

        int l1 = j - l - j1;
        if(j != k && l1 / 2 < j1)
            throw NotFoundException.getNotFoundInstance();
        if(stringbuffer.length() < 2)
            throw NotFoundException.getNotFoundInstance();
        char c1 = stringbuffer.charAt(0);
        if(!arrayContains(STARTEND_ENCODING, c1))
            throw NotFoundException.getNotFoundInstance();
        for(int i2 = 1; i2 < stringbuffer.length(); i2++)
            if(stringbuffer.charAt(i2) == c1 && i2 + 1 != stringbuffer.length())
            {
                stringbuffer.delete(i2 + 1, -1 + stringbuffer.length());
                i2 = stringbuffer.length();
            }

        if(stringbuffer.length() > 6)
        {
            stringbuffer.deleteCharAt(-1 + stringbuffer.length());
            stringbuffer.deleteCharAt(0);
            float f = (float)(ai[1] + ai[0]) / 2.0F;
            float f1 = (float)(j + l) / 2.0F;
            String s = stringbuffer.toString();
            ResultPoint aresultpoint[] = new ResultPoint[2];
            ResultPoint resultpoint = new ResultPoint(f, i);
            aresultpoint[0] = resultpoint;
            ResultPoint resultpoint1 = new ResultPoint(f1, i);
            aresultpoint[1] = resultpoint1;
            return new Result(s, null, aresultpoint, BarcodeFormat.CODABAR);
        } else
        {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private static final char ALPHABET[] = "0123456789-$:/.+ABCDTN".toCharArray();
    private static final String ALPHABET_STRING = "0123456789-$:/.+ABCDTN";
    private static final int CHARACTER_ENCODINGS[];
    private static final char STARTEND_ENCODING[];
    private static final int minCharacterLength = 6;

    static 
    {
        int ai[] = new int[22];
        ai[0] = 3;
        ai[1] = 6;
        ai[2] = 9;
        ai[3] = 96;
        ai[4] = 18;
        ai[5] = 66;
        ai[6] = 33;
        ai[7] = 36;
        ai[8] = 48;
        ai[9] = 72;
        ai[10] = 12;
        ai[11] = 24;
        ai[12] = 37;
        ai[13] = 81;
        ai[14] = 84;
        ai[15] = 21;
        ai[16] = 26;
        ai[17] = 41;
        ai[18] = 11;
        ai[19] = 14;
        ai[20] = 26;
        ai[21] = 41;
        CHARACTER_ENCODINGS = ai;
        char ac[] = new char[8];
        ac[0] = 'E';
        ac[1] = '*';
        ac[2] = 'A';
        ac[3] = 'B';
        ac[4] = 'C';
        ac[5] = 'D';
        ac[6] = 'T';
        ac[7] = 'N';
        STARTEND_ENCODING = ac;
    }
}
