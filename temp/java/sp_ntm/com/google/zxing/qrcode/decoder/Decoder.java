// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.qrcode.decoder;

import com.google.zxing.*;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.*;
import java.util.Hashtable;

// Referenced classes of package com.google.zxing.qrcode.decoder:
//            BitMatrixParser, FormatInformation, DataBlock, DecodedBitStreamParser

public final class Decoder
{

    public Decoder()
    {
        rsDecoder = new ReedSolomonDecoder(GF256.QR_CODE_FIELD);
    }

    private void correctErrors(byte abyte0[], int i)
        throws ChecksumException
    {
        int j = abyte0.length;
        int ai[] = new int[j];
        for(int k = 0; k < j; k++)
            ai[k] = 0xff & abyte0[k];

        int l = abyte0.length - i;
        int i1;
        try
        {
            rsDecoder.decode(ai, l);
        }
        catch(ReedSolomonException reedsolomonexception)
        {
            throw ChecksumException.getChecksumInstance();
        }
        for(i1 = 0; i1 < i; i1++)
            abyte0[i1] = (byte)ai[i1];

    }

    public DecoderResult decode(BitMatrix bitmatrix)
        throws ChecksumException, FormatException, NotFoundException
    {
        return decode(bitmatrix, null);
    }

    public DecoderResult decode(BitMatrix bitmatrix, Hashtable hashtable)
        throws FormatException, ChecksumException
    {
        BitMatrixParser bitmatrixparser = new BitMatrixParser(bitmatrix);
        Version version = bitmatrixparser.readVersion();
        ErrorCorrectionLevel errorcorrectionlevel = bitmatrixparser.readFormatInformation().getErrorCorrectionLevel();
        DataBlock adatablock[] = DataBlock.getDataBlocks(bitmatrixparser.readCodewords(), version, errorcorrectionlevel);
        int i = 0;
        for(int j = 0; j < adatablock.length; j++)
            i += adatablock[j].getNumDataCodewords();

        byte abyte0[] = new byte[i];
        int k = 0;
        for(int l = 0; l < adatablock.length;)
        {
            DataBlock datablock = adatablock[l];
            byte abyte1[] = datablock.getCodewords();
            int i1 = datablock.getNumDataCodewords();
            correctErrors(abyte1, i1);
            int j1 = 0;
            int k1;
            int l1;
            for(k1 = k; j1 < i1; k1 = l1)
            {
                l1 = k1 + 1;
                abyte0[k1] = abyte1[j1];
                j1++;
            }

            l++;
            k = k1;
        }

        return DecodedBitStreamParser.decode(abyte0, version, errorcorrectionlevel, hashtable);
    }

    public DecoderResult decode(boolean aflag[][])
        throws ChecksumException, FormatException, NotFoundException
    {
        return decode(aflag, null);
    }

    public DecoderResult decode(boolean aflag[][], Hashtable hashtable)
        throws ChecksumException, FormatException, NotFoundException
    {
        int i = aflag.length;
        BitMatrix bitmatrix = new BitMatrix(i);
        for(int j = 0; j < i; j++)
        {
            for(int k = 0; k < i; k++)
                if(aflag[j][k])
                    bitmatrix.set(k, j);

        }

        return decode(bitmatrix, hashtable);
    }

    private final ReedSolomonDecoder rsDecoder;
}
