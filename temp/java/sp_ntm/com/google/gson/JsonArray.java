// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.*;

// Referenced classes of package com.google.gson:
//            JsonElement, JsonNull, Escaper

public final class JsonArray extends JsonElement
    implements Iterable
{

    public JsonArray()
    {
    }

    public void add(JsonElement jsonelement)
    {
        if(jsonelement == null)
            jsonelement = JsonNull.createJsonNull();
        elements.add(jsonelement);
    }

    public void addAll(JsonArray jsonarray)
    {
        elements.addAll(jsonarray.elements);
    }

    public JsonElement get(int i)
    {
        return (JsonElement)elements.get(i);
    }

    public BigDecimal getAsBigDecimal()
    {
        if(elements.size() == 1)
            return ((JsonElement)elements.get(0)).getAsBigDecimal();
        else
            throw new IllegalStateException();
    }

    public BigInteger getAsBigInteger()
    {
        if(elements.size() == 1)
            return ((JsonElement)elements.get(0)).getAsBigInteger();
        else
            throw new IllegalStateException();
    }

    public boolean getAsBoolean()
    {
        if(elements.size() == 1)
            return ((JsonElement)elements.get(0)).getAsBoolean();
        else
            throw new IllegalStateException();
    }

    public byte getAsByte()
    {
        if(elements.size() == 1)
            return ((JsonElement)elements.get(0)).getAsByte();
        else
            throw new IllegalStateException();
    }

    public char getAsCharacter()
    {
        if(elements.size() == 1)
            return ((JsonElement)elements.get(0)).getAsCharacter();
        else
            throw new IllegalStateException();
    }

    public double getAsDouble()
    {
        if(elements.size() == 1)
            return ((JsonElement)elements.get(0)).getAsDouble();
        else
            throw new IllegalStateException();
    }

    public float getAsFloat()
    {
        if(elements.size() == 1)
            return ((JsonElement)elements.get(0)).getAsFloat();
        else
            throw new IllegalStateException();
    }

    public int getAsInt()
    {
        if(elements.size() == 1)
            return ((JsonElement)elements.get(0)).getAsInt();
        else
            throw new IllegalStateException();
    }

    public long getAsLong()
    {
        if(elements.size() == 1)
            return ((JsonElement)elements.get(0)).getAsLong();
        else
            throw new IllegalStateException();
    }

    public Number getAsNumber()
    {
        if(elements.size() == 1)
            return ((JsonElement)elements.get(0)).getAsNumber();
        else
            throw new IllegalStateException();
    }

    Object getAsObject()
    {
        if(elements.size() == 1)
            return ((JsonElement)elements.get(0)).getAsObject();
        else
            throw new IllegalStateException();
    }

    public short getAsShort()
    {
        if(elements.size() == 1)
            return ((JsonElement)elements.get(0)).getAsShort();
        else
            throw new IllegalStateException();
    }

    public String getAsString()
    {
        if(elements.size() == 1)
            return ((JsonElement)elements.get(0)).getAsString();
        else
            throw new IllegalStateException();
    }

    public Iterator iterator()
    {
        return elements.iterator();
    }

    void reverse()
    {
        Collections.reverse(elements);
    }

    public int size()
    {
        return elements.size();
    }

    protected void toString(Appendable appendable, Escaper escaper)
        throws IOException
    {
        appendable.append('[');
        boolean flag = true;
        Iterator iterator1 = elements.iterator();
        while(iterator1.hasNext()) 
        {
            JsonElement jsonelement = (JsonElement)iterator1.next();
            if(flag)
                flag = false;
            else
                appendable.append(',');
            jsonelement.toString(appendable, escaper);
        }
        appendable.append(']');
    }

    private final List elements = new ArrayList();
}
