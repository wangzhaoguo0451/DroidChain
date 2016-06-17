// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            JsonDeserializer, Preconditions, JsonParseException, JsonElement, 
//            JsonDeserializationContext

class JsonDeserializerExceptionWrapper
    implements JsonDeserializer
{

    JsonDeserializerExceptionWrapper(JsonDeserializer jsondeserializer)
    {
        Preconditions.checkNotNull(jsondeserializer);
        _flddelegate = jsondeserializer;
    }

    public Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
        throws JsonParseException
    {
        Object obj;
        try
        {
            obj = _flddelegate.deserialize(jsonelement, type, jsondeserializationcontext);
        }
        catch(JsonParseException jsonparseexception)
        {
            throw jsonparseexception;
        }
        catch(Exception exception)
        {
            throw new JsonParseException((new StringBuilder()).append("The JsonDeserializer ").append(_flddelegate).append(" failed to deserialized json object ").append(jsonelement).append(" given the type ").append(type).toString(), exception);
        }
        return obj;
    }

    public String toString()
    {
        return _flddelegate.toString();
    }

    private final JsonDeserializer _flddelegate;
}
