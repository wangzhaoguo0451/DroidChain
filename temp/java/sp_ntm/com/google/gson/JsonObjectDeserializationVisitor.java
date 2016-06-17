// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            JsonDeserializationVisitor, ObjectNavigatorFactory, FieldNamingStrategy2, ObjectConstructor, 
//            JsonParseException, JsonElement, JsonObject, JsonArray, 
//            FieldAttributes, TypeInfo, ObjectTypePair, JsonPrimitive, 
//            ParameterizedTypeHandlerMap, JsonDeserializationContext

final class JsonObjectDeserializationVisitor extends JsonDeserializationVisitor
{

    JsonObjectDeserializationVisitor(JsonElement jsonelement, Type type, ObjectNavigatorFactory objectnavigatorfactory, ObjectConstructor objectconstructor, ParameterizedTypeHandlerMap parameterizedtypehandlermap, JsonDeserializationContext jsondeserializationcontext)
    {
        super(jsonelement, type, objectnavigatorfactory, objectconstructor, parameterizedtypehandlermap, jsondeserializationcontext);
    }

    private String getFieldName(FieldAttributes fieldattributes)
    {
        return factory.getFieldNamingPolicy().translateName(fieldattributes);
    }

    protected Object constructTarget()
    {
        return objectConstructor.construct(targetType);
    }

    public void startVisitingObject(Object obj)
    {
    }

    public void visitArray(Object obj, Type type)
    {
        throw new JsonParseException((new StringBuilder()).append("Expecting object but found array: ").append(obj).toString());
    }

    public void visitArrayField(FieldAttributes fieldattributes, Type type, Object obj)
    {
        try
        {
            if(!json.isJsonObject())
                throw new JsonParseException((new StringBuilder()).append("Expecting object found: ").append(json).toString());
        }
        catch(IllegalAccessException illegalaccessexception)
        {
            throw new RuntimeException(illegalaccessexception);
        }
        JsonArray jsonarray = (JsonArray)json.getAsJsonObject().get(getFieldName(fieldattributes));
        if(jsonarray != null)
            fieldattributes.set(obj, visitChildAsArray(type, jsonarray));
        else
            fieldattributes.set(obj, null);
        return;
    }

    public boolean visitFieldUsingCustomHandler(FieldAttributes fieldattributes, Type type, Object obj)
    {
        boolean flag;
        String s;
        flag = true;
        try
        {
            s = getFieldName(fieldattributes);
            if(!json.isJsonObject())
                throw new JsonParseException((new StringBuilder()).append("Expecting object found: ").append(json).toString());
        }
        catch(IllegalAccessException illegalaccessexception)
        {
            throw new RuntimeException();
        }
        JsonElement jsonelement = json.getAsJsonObject().get(s);
        TypeInfo typeinfo = new TypeInfo(type);
        if(jsonelement != null)
            if(jsonelement.isJsonNull())
            {
                if(!typeinfo.isPrimitive())
                    fieldattributes.set(obj, null);
            } else
            {
                Pair pair = (new ObjectTypePair(null, type, false)).getMatchingHandler(deserializers);
                if(pair == null)
                {
                    flag = false;
                } else
                {
                    Object obj1 = invokeCustomDeserializer(jsonelement, pair);
                    if(obj1 != null || !typeinfo.isPrimitive())
                        fieldattributes.set(obj, obj1);
                }
            }
        return flag;
    }

    public void visitObjectField(FieldAttributes fieldattributes, Type type, Object obj)
    {
        try
        {
            if(!json.isJsonObject())
                throw new JsonParseException((new StringBuilder()).append("Expecting object found: ").append(json).toString());
        }
        catch(IllegalAccessException illegalaccessexception)
        {
            throw new RuntimeException(illegalaccessexception);
        }
        JsonElement jsonelement = json.getAsJsonObject().get(getFieldName(fieldattributes));
        if(jsonelement != null)
            fieldattributes.set(obj, visitChildAsObject(type, jsonelement));
        else
            fieldattributes.set(obj, null);
        return;
    }

    public void visitPrimitive(Object obj)
    {
        if(!json.isJsonPrimitive())
        {
            throw new JsonParseException((new StringBuilder()).append("Type information is unavailable, and the target object is not a primitive: ").append(json).toString());
        } else
        {
            target = json.getAsJsonPrimitive().getAsObject();
            return;
        }
    }
}
