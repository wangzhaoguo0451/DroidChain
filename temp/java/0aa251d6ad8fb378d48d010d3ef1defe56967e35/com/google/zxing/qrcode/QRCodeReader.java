// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.qrcode;

import com.google.zxing.*;
import com.google.zxing.common.*;
import com.google.zxing.qrcode.decoder.Decoder;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.detector.Detector;
import java.util.Hashtable;

public class QRCodeReader
    implements Reader
{

    public QRCodeReader()
    {
    }

    public static BitMatrix extractPureBits(BitMatrix bitmatrix)
        throws NotFoundException
    {
        int i = bitmatrix.getHeight();
        int j = bitmatrix.getWidth();
        int k = Math.min(i, j);
        int ai[] = bitmatrix.getTopLeftOnBit();
        if(ai == null)
            throw NotFoundException.getNotFoundInstance();
        int l = ai[0];
        int i1;
        for(i1 = ai[1]; l < k && i1 < k && bitmatrix.get(l, i1); i1++)
            l++;

        if(l == k || i1 == k)
            throw NotFoundException.getNotFoundInstance();
        int j1 = l - ai[0];
        if(j1 == 0)
            throw NotFoundException.getNotFoundInstance();
        int k1;
        for(k1 = j - 1; k1 > l && !bitmatrix.get(k1, i1); k1--);
        if(k1 <= l)
            throw NotFoundException.getNotFoundInstance();
        int l1 = k1 + 1;
        if((l1 - l) % j1 != 0)
            throw NotFoundException.getNotFoundInstance();
        int i2 = 1 + (l1 - l) / j1;
        int j2;
        int k2;
        int l2;
        if(j1 == 1)
            j2 = 1;
        else
            j2 = j1 >> 1;
        k2 = l - j2;
        l2 = i1 - j2;
        if(k2 + j1 * (i2 - 1) >= j || l2 + j1 * (i2 - 1) >= i)
            throw NotFoundException.getNotFoundInstance();
        BitMatrix bitmatrix1 = new BitMatrix(i2);
        for(int i3 = 0; i3 < i2; i3++)
        {
            int j3 = l2 + i3 * j1;
            for(int k3 = 0; k3 < i2; k3++)
                if(bitmatrix.get(k2 + k3 * j1, j3))
                    bitmatrix1.set(k3, i3);

        }

        return bitmatrix1;
    }

    public Result decode(BinaryBitmap binarybitmap)
        throws NotFoundException, ChecksumException, FormatException
    {
        return decode(binarybitmap, null);
    }

    public Result decode(BinaryBitmap binarybitmap, Hashtable hashtable)
        throws NotFoundException, ChecksumException, FormatException
    {
        DecoderResult decoderresult;
        ResultPoint aresultpoint[];
        Result result;
        if(hashtable != null && hashtable.containsKey(DecodeHintType.PURE_BARCODE))
        {
            BitMatrix bitmatrix = extractPureBits(binarybitmap.getBlackMatrix());
            decoderresult = decoder.decode(bitmatrix, hashtable);
            aresultpoint = NO_POINTS;
        } else
        {
            DetectorResult detectorresult = (new Detector(binarybitmap.getBlackMatrix())).detect(hashtable);
            decoderresult = decoder.decode(detectorresult.getBits(), hashtable);
            aresultpoint = detectorresult.getPoints();
        }
        result = new Result(decoderresult.getText(), decoderresult.getRawBytes(), aresultpoint, BarcodeFormat.QR_CODE);
        if(decoderresult.getByteSegments() != null)
            result.putMetadata(ResultMetadataType.BYTE_SEGMENTS, decoderresult.getByteSegments());
        if(decoderresult.getECLevel() != null)
            result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, decoderresult.getECLevel().toString());
        return result;
    }

    protected Decoder getDecoder()
    {
        return decoder;
    }

    public void reset()
    {
    }

    private static final ResultPoint NO_POINTS[] = new ResultPoint[0];
    private final Decoder decoder = new Decoder();

}
