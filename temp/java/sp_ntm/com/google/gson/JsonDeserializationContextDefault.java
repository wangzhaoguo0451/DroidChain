// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            JsonDeserializationContext, JsonParseException, JsonArrayDeserializationVisitor, ObjectTypePair, 
//            ObjectNavigatorFactory, ObjectNavigator, JsonObjectDeserializationVisitor, JsonPrimitive, 
//            JsonElement, ParameterizedTypeHandlerMap, MappedObjectConstructor, JsonArray, 
//            JsonObject, ObjectConstructor

final class JsonDeserializationContextDefault
    implements JsonDeserializationContext
{

    JsonDeserializationContextDefault(ObjectNavigatorFactory objectnavigatorfactory, ParameterizedTypeHandlerMap parameterizedtypehandlermap, MappedObjectConstructor mappedobjectconstructor)
    {
        navigatorFactory = objectnavigatorfactory;
        deserializers = parameterizedtypehandlermap;
        objectConstructor = mappedobjectconstructor;
    }

    private Object fromJsonArray(Type type, JsonArray jsonarray, JsonDeserializationContext jsondeserializationcontext)
        throws JsonParseException
    {
        JsonArrayDeserializationVisitor jsonarraydeserializationvisitor = new JsonArrayDeserializationVisitor(jsonarray, type, navigatorFactory, objectConstructor, deserializers, jsondeserializationcontext);
        navigatorFactory.create(new ObjectTypePair(null, type, true)).accept(jsonarraydeserializationvisitor);
        return jsonarraydeserializationvisitor.getTarget();
    }

    private Object fromJsonObject(Type type, JsonObject jsonobject, JsonDeserializationContext jsondeserializationcontext)
        throws JsonParseException
    {
        JsonObjectDeserializationVisitor jsonobjectdeserializationvisitor = new JsonObjectDeserializationVisitor(jsonobject, type, navigatorFactory, objectConstructor, deserializers, jsondeserializationcontext);
        navigatorFactory.create(new ObjectTypePair(null, type, true)).accept(jsonobjectdeserializationvisitor);
        return jsonobjectdeserializationvisitor.getTarget();
    }

    private Object fromJsonPrimitive(Type type, JsonPrimitive jsonprimitive, JsonDeserializationContext jsondeserializationcontext)
        throws JsonParseException
    {
        JsonObjectDeserializationVisitor jsonobjectdeserializationvisitor = new JsonObjectDeserializationVisitor(jsonprimitive, type, navigatorFactory, objectConstructor, deserializers, jsondeserializationcontext);
        navigatorFactory.create(new ObjectTypePair(jsonprimitive.getAsObject(), type, true)).accept(jsonobjectdeserializationvisitor);
        return jsonobjectdeserializationvisitor.getTarget();
    }

    public Object deserialize(JsonElement jsonelement, Type type)
        throws JsonParseException
    {
        Object obj;
        if(jsonelement == null || jsonelement.isJsonNull())
            obj = null;
        else
        if(jsonelement.isJsonArray())
            obj = fromJsonArray(type, jsonelement.getAsJsonArray(), this);
        else
        if(jsonelement.isJsonObject())
            obj = fromJsonObject(type, jsonelement.getAsJsonObject(), this);
        else
        if(jsonelement.isJsonPrimitive())
            obj = fromJsonPrimitive(type, jsonelement.getAsJsonPrimitive(), this);
        else
            throw new JsonParseException((new StringBuilder()).append("Failed parsing JSON source: ").append(jsonelement).append(" to Json").toString());
        return obj;
    }

    ObjectConstructor getObjectConstructor()
    {
        return objectConstructor;
    }

    private final ParameterizedTypeHandlerMap deserializers;
    private final ObjectNavigatorFactory navigatorFactory;
    private final MappedObjectConstructor objectConstructor;
}
