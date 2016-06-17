// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.io.IOException;
import java.util.*;

// Referenced classes of package com.google.gson:
//            JsonElement, JsonNull, JsonPrimitive, Preconditions, 
//            JsonArray, Escaper

public final class JsonObject extends JsonElement
{

    public JsonObject()
    {
    }

    private JsonElement createJsonElement(Object obj)
    {
        Object obj1;
        if(obj == null)
            obj1 = JsonNull.createJsonNull();
        else
            obj1 = new JsonPrimitive(obj);
        return ((JsonElement) (obj1));
    }

    public void add(String s, JsonElement jsonelement)
    {
        Preconditions.checkNotNull(s);
        if(jsonelement == null)
            jsonelement = JsonNull.createJsonNull();
        members.put(s, jsonelement);
    }

    public void addProperty(String s, Boolean boolean1)
    {
        add(s, createJsonElement(boolean1));
    }

    public void addProperty(String s, Character character)
    {
        add(s, createJsonElement(character));
    }

    public void addProperty(String s, Number number)
    {
        add(s, createJsonElement(number));
    }

    public void addProperty(String s, String s1)
    {
        add(s, createJsonElement(s1));
    }

    public Set entrySet()
    {
        return members.entrySet();
    }

    public JsonElement get(String s)
    {
        Object obj;
        if(members.containsKey(s))
        {
            obj = (JsonElement)members.get(s);
            if(obj == null)
                obj = JsonNull.createJsonNull();
        } else
        {
            obj = null;
        }
        return ((JsonElement) (obj));
    }

    public JsonArray getAsJsonArray(String s)
    {
        return (JsonArray)members.get(s);
    }

    public JsonObject getAsJsonObject(String s)
    {
        return (JsonObject)members.get(s);
    }

    public JsonPrimitive getAsJsonPrimitive(String s)
    {
        return (JsonPrimitive)members.get(s);
    }

    public boolean has(String s)
    {
        return members.containsKey(s);
    }

    public JsonElement remove(String s)
    {
        return (JsonElement)members.remove(s);
    }

    protected void toString(Appendable appendable, Escaper escaper)
        throws IOException
    {
        appendable.append('{');
        boolean flag = true;
        Iterator iterator = members.entrySet().iterator();
        while(iterator.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if(flag)
                flag = false;
            else
                appendable.append(',');
            appendable.append('"');
            appendable.append(escaper.escapeJsonString((CharSequence)entry.getKey()));
            appendable.append("\":");
            ((JsonElement)entry.getValue()).toString(appendable, escaper);
        }
        appendable.append('}');
    }

    private final Map members = new LinkedHashMap();
}
