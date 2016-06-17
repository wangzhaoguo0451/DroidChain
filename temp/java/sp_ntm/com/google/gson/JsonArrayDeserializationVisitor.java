// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Array;
import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            JsonDeserializationVisitor, TypeInfo, JsonElement, JsonParseException, 
//            TypeInfoFactory, TypeInfoArray, JsonArray, ObjectConstructor, 
//            JsonObject, JsonPrimitive, FieldAttributes, ObjectNavigatorFactory, 
//            ParameterizedTypeHandlerMap, JsonDeserializationContext

final class JsonArrayDeserializationVisitor extends JsonDeserializationVisitor
{

    JsonArrayDeserializationVisitor(JsonArray jsonarray, Type type, ObjectNavigatorFactory objectnavigatorfactory, ObjectConstructor objectconstructor, ParameterizedTypeHandlerMap parameterizedtypehandlermap, JsonDeserializationContext jsondeserializationcontext)
    {
        super(jsonarray, type, objectnavigatorfactory, objectconstructor, parameterizedtypehandlermap, jsondeserializationcontext);
    }

    protected Object constructTarget()
    {
        TypeInfo typeinfo = new TypeInfo(targetType);
        if(!json.isJsonArray())
            throw new JsonParseException((new StringBuilder()).append("Expecting array found: ").append(json).toString());
        JsonArray jsonarray = json.getAsJsonArray();
        Object obj;
        if(typeinfo.isArray())
        {
            TypeInfoArray typeinfoarray = TypeInfoFactory.getTypeInfoForArray(targetType);
            obj = objectConstructor.constructArray(typeinfoarray.getSecondLevelType(), jsonarray.size());
        } else
        {
            obj = objectConstructor.construct(typeinfo.getRawClass());
        }
        return obj;
    }

    public void startVisitingObject(Object obj)
    {
        throw new JsonParseException((new StringBuilder()).append("Expecting array but found object: ").append(obj).toString());
    }

    public void visitArray(Object obj, Type type)
    {
        if(!json.isJsonArray())
            throw new JsonParseException((new StringBuilder()).append("Expecting array found: ").append(json).toString());
        JsonArray jsonarray = json.getAsJsonArray();
        TypeInfoArray typeinfoarray = TypeInfoFactory.getTypeInfoForArray(type);
        int i = 0;
        while(i < jsonarray.size()) 
        {
            JsonElement jsonelement = jsonarray.get(i);
            Object obj1;
            if(jsonelement == null || jsonelement.isJsonNull())
                obj1 = null;
            else
            if(jsonelement instanceof JsonObject)
                obj1 = visitChildAsObject(typeinfoarray.getComponentRawType(), jsonelement);
            else
            if(jsonelement instanceof JsonArray)
                obj1 = visitChildAsArray(typeinfoarray.getSecondLevelType(), jsonelement.getAsJsonArray());
            else
            if(jsonelement instanceof JsonPrimitive)
                obj1 = visitChildAsObject(typeinfoarray.getComponentRawType(), jsonelement.getAsJsonPrimitive());
            else
                throw new IllegalStateException();
            Array.set(obj, i, obj1);
            i++;
        }
    }

    public void visitArrayField(FieldAttributes fieldattributes, Type type, Object obj)
    {
        throw new JsonParseException((new StringBuilder()).append("Expecting array but found array field ").append(fieldattributes.getName()).append(": ").append(obj).toString());
    }

    public boolean visitFieldUsingCustomHandler(FieldAttributes fieldattributes, Type type, Object obj)
    {
        throw new JsonParseException((new StringBuilder()).append("Expecting array but found field ").append(fieldattributes.getName()).append(": ").append(obj).toString());
    }

    public void visitObjectField(FieldAttributes fieldattributes, Type type, Object obj)
    {
        throw new JsonParseException((new StringBuilder()).append("Expecting array but found object field ").append(fieldattributes.getName()).append(": ").append(obj).toString());
    }

    public void visitPrimitive(Object obj)
    {
        throw new JsonParseException((new StringBuilder()).append("Type information is unavailable, and the target is not a primitive: ").append(json).toString());
    }
}
