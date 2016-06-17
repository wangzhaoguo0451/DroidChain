// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson.stream;

import java.io.IOException;

public final class MalformedJsonException extends IOException
{

    public MalformedJsonException(String s)
    {
        super(s);
    }

    public MalformedJsonException(String s, Throwable throwable)
    {
        super(s);
        initCause(throwable);
    }

    public MalformedJsonException(Throwable throwable)
    {
        initCause(throwable);
    }

    private static final long serialVersionUID = 1L;
}
