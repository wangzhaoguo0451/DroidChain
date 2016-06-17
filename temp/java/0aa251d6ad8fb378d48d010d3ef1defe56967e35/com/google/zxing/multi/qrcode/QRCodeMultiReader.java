// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.multi.qrcode;

import com.google.zxing.*;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.multi.MultipleBarcodeReader;
import com.google.zxing.multi.qrcode.detector.MultiDetector;
import com.google.zxing.qrcode.QRCodeReader;
import com.google.zxing.qrcode.decoder.Decoder;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.util.Hashtable;
import java.util.Vector;

public final class QRCodeMultiReader extends QRCodeReader
    implements MultipleBarcodeReader
{

    public QRCodeMultiReader()
    {
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
        DetectorResult adetectorresult[] = (new MultiDetector(binarybitmap.getBlackMatrix())).detectMulti(hashtable);
        int i = 0;
        while(i < adetectorresult.length) 
        {
            Result aresult[];
            int j;
            try
            {
                DecoderResult decoderresult = getDecoder().decode(adetectorresult[i].getBits());
                com.google.zxing.ResultPoint aresultpoint[] = adetectorresult[i].getPoints();
                Result result = new Result(decoderresult.getText(), decoderresult.getRawBytes(), aresultpoint, BarcodeFormat.QR_CODE);
                if(decoderresult.getByteSegments() != null)
                    result.putMetadata(ResultMetadataType.BYTE_SEGMENTS, decoderresult.getByteSegments());
                if(decoderresult.getECLevel() != null)
                    result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, decoderresult.getECLevel().toString());
                vector.addElement(result);
            }
            catch(ReaderException readerexception) { }
            i++;
        }
        if(vector.isEmpty())
        {
            aresult = EMPTY_RESULT_ARRAY;
        } else
        {
            aresult = new Result[vector.size()];
            j = 0;
            while(j < vector.size()) 
            {
                aresult[j] = (Result)vector.elementAt(j);
                j++;
            }
        }
        return aresult;
    }

    private static final Result EMPTY_RESULT_ARRAY[] = new Result[0];

}
