// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.io.IOException;

// Referenced classes of package com.google.gson:
//            JsonElement, Escaper

public final class JsonNull extends JsonElement
{

    public JsonNull()
    {
    }

    static JsonNull createJsonNull()
    {
        return INSTANCE;
    }

    public boolean equals(Object obj)
    {
        return obj instanceof JsonNull;
    }

    public int hashCode()
    {
        return com/google/gson/JsonNull.hashCode();
    }

    protected void toString(Appendable appendable, Escaper escaper)
        throws IOException
    {
        appendable.append("null");
    }

    private static final JsonNull INSTANCE = new JsonNull();

}
