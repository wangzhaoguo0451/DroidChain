// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.qrcode.encoder;


final class BlockPair
{

    BlockPair(byte abyte0[], byte abyte1[])
    {
        dataBytes = abyte0;
        errorCorrectionBytes = abyte1;
    }

    public byte[] getDataBytes()
    {
        return dataBytes;
    }

    public byte[] getErrorCorrectionBytes()
    {
        return errorCorrectionBytes;
    }

    private final byte dataBytes[];
    private final byte errorCorrectionBytes[];
}
