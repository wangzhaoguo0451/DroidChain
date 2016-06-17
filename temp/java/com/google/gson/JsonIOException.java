// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            JsonParseException

public final class JsonIOException extends JsonParseException
{

    public JsonIOException(String s)
    {
        super(s);
    }

    public JsonIOException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public JsonIOException(Throwable throwable)
    {
        super(throwable);
    }

    private static final long serialVersionUID = 1L;
}
