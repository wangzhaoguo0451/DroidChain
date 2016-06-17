// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph;

import org.apache.commons.lang.exception.NestableRuntimeException;

public class MorphException extends NestableRuntimeException
{

    public MorphException(String s)
    {
        super(s);
        cause = null;
    }

    public MorphException(String s, Throwable throwable)
    {
        super(s);
        cause = null;
        cause = throwable;
    }

    public MorphException(Throwable throwable)
    {
        super(throwable.getMessage());
        cause = null;
        cause = throwable;
    }

    public Throwable getCause()
    {
        return cause;
    }

    private static final long serialVersionUID = 0xf881338c7f17f720L;
    protected Throwable cause;
}
