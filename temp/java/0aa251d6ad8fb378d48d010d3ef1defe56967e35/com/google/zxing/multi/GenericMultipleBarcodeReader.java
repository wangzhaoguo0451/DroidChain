// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.multi;

import com.google.zxing.*;
import java.util.Hashtable;
import java.util.Vector;

// Referenced classes of package com.google.zxing.multi:
//            MultipleBarcodeReader

public final class GenericMultipleBarcodeReader
    implements MultipleBarcodeReader
{

    public GenericMultipleBarcodeReader(Reader reader)
    {
        _flddelegate = reader;
    }

    private void doDecodeMultiple(BinaryBitmap binarybitmap, Hashtable hashtable, Vector vector, int i, int j)
    {
        Result result = _flddelegate.decode(binarybitmap, hashtable);
        boolean flag;
        int k;
        flag = false;
        k = 0;
_L4:
        if(k < vector.size())
        {
            if(!((Result)vector.elementAt(k)).getText().equals(result.getText()))
                break MISSING_BLOCK_LABEL_65;
            flag = true;
        }
        ReaderException readerexception;
        if(!flag)
        {
            vector.addElement(translateResultPoints(result, i, j));
            ResultPoint aresultpoint[] = result.getResultPoints();
            if(aresultpoint != null && aresultpoint.length != 0)
            {
                int l = binarybitmap.getWidth();
                int i1 = binarybitmap.getHeight();
                float f = l;
                float f1 = i1;
                float f2 = 0.0F;
                float f3 = 0.0F;
                for(int j1 = 0; j1 < aresultpoint.length; j1++)
                {
                    ResultPoint resultpoint = aresultpoint[j1];
                    float f4 = resultpoint.getX();
                    float f5 = resultpoint.getY();
                    if(f4 < f)
                        f = f4;
                    if(f5 < f1)
                        f1 = f5;
                    if(f4 > f2)
                        f2 = f4;
                    if(f5 > f3)
                        f3 = f5;
                }

                if(f > 100F)
                    doDecodeMultiple(binarybitmap.crop(0, 0, (int)f, i1), hashtable, vector, i, j);
                if(f1 > 100F)
                    doDecodeMultiple(binarybitmap.crop(0, 0, l, (int)f1), hashtable, vector, i, j);
                if(f2 < (float)(l - 100))
                    doDecodeMultiple(binarybitmap.crop((int)f2, 0, l - (int)f2, i1), hashtable, vector, i + (int)f2, j);
                if(f3 < (float)(i1 - 100))
                    doDecodeMultiple(binarybitmap.crop(0, (int)f3, l, i1 - (int)f3), hashtable, vector, i, j + (int)f3);
            }
        }
_L2:
        return;
        readerexception;
        if(true) goto _L2; else goto _L1
_L1:
        k++;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static Result translateResultPoints(Result result, int i, int j)
    {
        ResultPoint aresultpoint[] = result.getResultPoints();
        ResultPoint aresultpoint1[] = new ResultPoint[aresultpoint.length];
        for(int k = 0; k < aresultpoint.length; k++)
        {
            ResultPoint resultpoint = aresultpoint[k];
            aresultpoint1[k] = new ResultPoint(resultpoint.getX() + (float)i, resultpoint.getY() + (float)j);
        }

        return new Result(result.getText(), result.getRawBytes(), aresultpoint1, result.getBarcodeFormat());
    }

    public Result[] decodeMultiple(BinaryBitmap binarybitmap)
        throws NotFoundException
    {
        return decodeMultiple(binarybitmap, null);
    }

    public Result[] decodeMultiple(BinaryBitmap binarybitmap, Hashtable hashtable)
        throws NotFoundException
    {
        Vector vector = new Vector();
        doDecodeMultiple(binarybitmap, hashtable, vector, 0, 0);
        if(vector.isEmpty())
            throw NotFoundException.getNotFoundInstance();
        int i = vector.size();
        Result aresult[] = new Result[i];
        for(int j = 0; j < i; j++)
            aresult[j] = (Result)vector.elementAt(j);

        return aresult;
    }

    private static final int MIN_DIMENSION_TO_RECUR = 100;
    private final Reader _flddelegate;
}
