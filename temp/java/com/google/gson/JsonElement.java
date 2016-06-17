// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.google.gson:
//            Escaper, JsonArray, JsonNull, JsonObject, 
//            JsonPrimitive

public abstract class JsonElement
{

    public JsonElement()
    {
    }

    public BigDecimal getAsBigDecimal()
    {
        throw new UnsupportedOperationException();
    }

    public BigInteger getAsBigInteger()
    {
        throw new UnsupportedOperationException();
    }

    public boolean getAsBoolean()
    {
        throw new UnsupportedOperationException();
    }

    Boolean getAsBooleanWrapper()
    {
        throw new UnsupportedOperationException();
    }

    public byte getAsByte()
    {
        throw new UnsupportedOperationException();
    }

    public char getAsCharacter()
    {
        throw new UnsupportedOperationException();
    }

    public double getAsDouble()
    {
        throw new UnsupportedOperationException();
    }

    public float getAsFloat()
    {
        throw new UnsupportedOperationException();
    }

    public int getAsInt()
    {
        throw new UnsupportedOperationException();
    }

    public JsonArray getAsJsonArray()
    {
        if(isJsonArray())
            return (JsonArray)this;
        else
            throw new IllegalStateException("This is not a JSON Array.");
    }

    public JsonNull getAsJsonNull()
    {
        if(isJsonNull())
            return (JsonNull)this;
        else
            throw new IllegalStateException("This is not a JSON Null.");
    }

    public JsonObject getAsJsonObject()
    {
        if(isJsonObject())
            return (JsonObject)this;
        else
            throw new IllegalStateException("This is not a JSON Object.");
    }

    public JsonPrimitive getAsJsonPrimitive()
    {
        if(isJsonPrimitive())
            return (JsonPrimitive)this;
        else
            throw new IllegalStateException("This is not a JSON Primitive.");
    }

    public long getAsLong()
    {
        throw new UnsupportedOperationException();
    }

    public Number getAsNumber()
    {
        throw new UnsupportedOperationException();
    }

    Object getAsObject()
    {
        throw new UnsupportedOperationException();
    }

    public short getAsShort()
    {
        throw new UnsupportedOperationException();
    }

    public String getAsString()
    {
        throw new UnsupportedOperationException();
    }

    public boolean isJsonArray()
    {
        return this instanceof JsonArray;
    }

    public boolean isJsonNull()
    {
        return this instanceof JsonNull;
    }

    public boolean isJsonObject()
    {
        return this instanceof JsonObject;
    }

    public boolean isJsonPrimitive()
    {
        return this instanceof JsonPrimitive;
    }

    public String toString()
    {
        String s;
        try
        {
            StringBuilder stringbuilder = new StringBuilder();
            toString(((Appendable) (stringbuilder)), BASIC_ESCAPER);
            s = stringbuilder.toString();
        }
        catch(IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
        return s;
    }

    protected abstract void toString(Appendable appendable, Escaper escaper)
        throws IOException;

    private static final Escaper BASIC_ESCAPER = new Escaper(false);

}
