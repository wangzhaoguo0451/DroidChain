// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.oned;

import com.google.zxing.*;
import com.google.zxing.common.BitArray;
import java.util.Enumeration;
import java.util.Hashtable;

public abstract class OneDReader
    implements Reader
{

    public OneDReader()
    {
    }

    private Result doDecode(BinaryBitmap binarybitmap, Hashtable hashtable)
        throws NotFoundException
    {
        int i;
        int j;
        BitArray bitarray;
        int k;
        i = binarybitmap.getWidth();
        j = binarybitmap.getHeight();
        bitarray = new BitArray(i);
        k = j >> 1;
        if(hashtable == null) goto _L2; else goto _L1
_L1:
        DecodeHintType decodehinttype1 = DecodeHintType.TRY_HARDER;
        if(!hashtable.containsKey(decodehinttype1)) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L7:
        int j1;
        int l1;
        byte byte0;
        int l;
        int i1;
        if(flag)
            byte0 = 8;
        else
            byte0 = 5;
        l = Math.max(1, j >> byte0);
        if(flag)
            i1 = j;
        else
            i1 = 15;
        j1 = 0;
_L8:
        if(j1 >= i1) goto _L5; else goto _L4
_L4:
        int k1 = j1 + 1 >> 1;
        boolean flag1;
        if((j1 & 1) == 0)
            flag1 = true;
        else
            flag1 = false;
        if(!flag1)
            k1 = -k1;
        l1 = k + l * k1;
        if(l1 >= 0 && l1 < j) goto _L6; else goto _L5
_L5:
        throw NotFoundException.getNotFoundInstance();
_L2:
        flag = false;
          goto _L7
_L6:
        BitArray bitarray1 = binarybitmap.getBlackRow(l1, bitarray);
        int i2;
        bitarray = bitarray1;
        i2 = 0;
_L9:
        Hashtable hashtable1;
        if(i2 < 2)
        {
            if(i2 != 1)
                break MISSING_BLOCK_LABEL_294;
            bitarray.reverse();
            if(hashtable == null)
                break MISSING_BLOCK_LABEL_294;
            DecodeHintType decodehinttype = DecodeHintType.NEED_RESULT_POINT_CALLBACK;
            if(!hashtable.containsKey(decodehinttype))
                break MISSING_BLOCK_LABEL_294;
            hashtable1 = new Hashtable();
            Enumeration enumeration = hashtable.keys();
            do
            {
                if(!enumeration.hasMoreElements())
                    break;
                Object obj = enumeration.nextElement();
                if(!obj.equals(DecodeHintType.NEED_RESULT_POINT_CALLBACK))
                    hashtable1.put(obj, hashtable.get(obj));
            } while(true);
            break MISSING_BLOCK_LABEL_291;
        }
        break MISSING_BLOCK_LABEL_285;
        NotFoundException notfoundexception;
        notfoundexception;
        j1++;
          goto _L8
        hashtable = hashtable1;
        Result result;
        result = decodeRow(l1, bitarray, hashtable);
        if(i2 == 1)
        {
            result.putMetadata(ResultMetadataType.ORIENTATION, new Integer(180));
            ResultPoint aresultpoint[] = result.getResultPoints();
            aresultpoint[0] = new ResultPoint((float)i - aresultpoint[0].getX() - 1.0F, aresultpoint[0].getY());
            aresultpoint[1] = new ResultPoint((float)i - aresultpoint[1].getX() - 1.0F, aresultpoint[1].getY());
        }
        return result;
        ReaderException readerexception;
        readerexception;
        i2++;
          goto _L9
    }

    protected static int patternMatchVariance(int ai[], int ai1[], int i)
    {
        int j;
        int k;
        int l;
        int i1;
        j = 0x7fffffff;
        k = ai.length;
        l = 0;
        i1 = 0;
        for(int j1 = 0; j1 < k; j1++)
        {
            l += ai[j1];
            i1 += ai1[j1];
        }

        if(l >= i1) goto _L2; else goto _L1
_L1:
        return j;
_L2:
        int k1 = (l << 8) / i1;
        int l1 = i * k1 >> 8;
        int i2 = 0;
        int j2 = 0;
        while(j2 < k) 
        {
            int k2 = ai[j2] << 8;
            int l2 = k1 * ai1[j2];
            int i3;
            if(k2 > l2)
                i3 = k2 - l2;
            else
                i3 = l2 - k2;
            if(i3 > l1)
                continue; /* Loop/switch isn't completed */
            i2 += i3;
            j2++;
        }
        j = i2 / l;
        if(true) goto _L1; else goto _L3
_L3:
    }

    protected static void recordPattern(BitArray bitarray, int i, int ai[])
        throws NotFoundException
    {
        int j;
        int l;
        boolean flag;
        int i1;
        int j1;
        j = ai.length;
        for(int k = 0; k < j; k++)
            ai[k] = 0;

        l = bitarray.getSize();
        if(i >= l)
            throw NotFoundException.getNotFoundInstance();
        if(!bitarray.get(i))
            flag = true;
        else
            flag = false;
        i1 = 0;
        j1 = i;
        if(j1 >= l) goto _L2; else goto _L1
_L1:
        if(!(flag ^ bitarray.get(j1))) goto _L4; else goto _L3
_L3:
        ai[i1] = 1 + ai[i1];
_L6:
        j1++;
        break MISSING_BLOCK_LABEL_56;
_L4:
        if(++i1 != j)
            break MISSING_BLOCK_LABEL_131;
_L2:
        if(i1 != j && (i1 != j - 1 || j1 != l))
            throw NotFoundException.getNotFoundInstance();
        else
            return;
        ai[i1] = 1;
        if(!flag)
            flag = true;
        else
            flag = false;
        if(true) goto _L6; else goto _L5
_L5:
    }

    protected static void recordPatternInReverse(BitArray bitarray, int i, int ai[])
        throws NotFoundException
    {
        int j = ai.length;
        boolean flag = bitarray.get(i);
        do
        {
            if(i <= 0 || j < 0)
                break;
            i--;
            if(bitarray.get(i) != flag)
            {
                j--;
                if(!flag)
                    flag = true;
                else
                    flag = false;
            }
        } while(true);
        if(j >= 0)
        {
            throw NotFoundException.getNotFoundInstance();
        } else
        {
            recordPattern(bitarray, i + 1, ai);
            return;
        }
    }

    public Result decode(BinaryBitmap binarybitmap)
        throws NotFoundException, FormatException
    {
        return decode(binarybitmap, null);
    }

    public Result decode(BinaryBitmap binarybitmap, Hashtable hashtable)
        throws NotFoundException, FormatException
    {
        Result result1 = doDecode(binarybitmap, hashtable);
        Result result = result1;
_L2:
        return result;
        NotFoundException notfoundexception;
        notfoundexception;
        boolean flag;
        if(hashtable != null && hashtable.containsKey(DecodeHintType.TRY_HARDER))
            flag = true;
        else
            flag = false;
        if(flag && binarybitmap.isRotateSupported())
        {
            BinaryBitmap binarybitmap1 = binarybitmap.rotateCounterClockwise();
            result = doDecode(binarybitmap1, hashtable);
            Hashtable hashtable1 = result.getResultMetadata();
            int i = 270;
            if(hashtable1 != null && hashtable1.containsKey(ResultMetadataType.ORIENTATION))
                i = (i + ((Integer)hashtable1.get(ResultMetadataType.ORIENTATION)).intValue()) % 360;
            result.putMetadata(ResultMetadataType.ORIENTATION, new Integer(i));
            ResultPoint aresultpoint[] = result.getResultPoints();
            int j = binarybitmap1.getHeight();
            int k = 0;
            while(k < aresultpoint.length) 
            {
                aresultpoint[k] = new ResultPoint((float)j - aresultpoint[k].getY() - 1.0F, aresultpoint[k].getX());
                k++;
            }
        } else
        {
            throw notfoundexception;
        }
        if(true) goto _L2; else goto _L1
_L1:
    }

    public abstract Result decodeRow(int i, BitArray bitarray, Hashtable hashtable)
        throws NotFoundException, ChecksumException, FormatException;

    public void reset()
    {
    }

    protected static final int INTEGER_MATH_SHIFT = 8;
    protected static final int PATTERN_MATCH_RESULT_SCALE_FACTOR = 256;
}
