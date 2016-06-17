// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing;


// Referenced classes of package com.google.zxing:
//            ReaderException

public final class ChecksumException extends ReaderException
{

    private ChecksumException()
    {
    }

    public static ChecksumException getChecksumInstance()
    {
        return instance;
    }

    private static final ChecksumException instance = new ChecksumException();

}
