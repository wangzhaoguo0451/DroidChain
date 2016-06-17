// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            Preconditions, ObjectTypePair, ObjectNavigatorFactory, ObjectNavigator, 
//            JsonElement, Pair, JsonDeserializer, JsonArrayDeserializationVisitor, 
//            JsonArray, JsonObjectDeserializationVisitor, JsonDeserializationContext, ParameterizedTypeHandlerMap, 
//            ObjectConstructor

abstract class JsonDeserializationVisitor
    implements ObjectNavigator.Visitor
{

    public JsonDeserializationVisitor(JsonElement jsonelement, Type type, ObjectNavigatorFactory objectnavigatorfactory, ObjectConstructor objectconstructor, ParameterizedTypeHandlerMap parameterizedtypehandlermap, JsonDeserializationContext jsondeserializationcontext)
    {
        Preconditions.checkNotNull(jsonelement);
        targetType = type;
        factory = objectnavigatorfactory;
        objectConstructor = objectconstructor;
        deserializers = parameterizedtypehandlermap;
        json = jsonelement;
        context = jsondeserializationcontext;
        constructed = false;
    }

    private Object visitChild(Type type, JsonDeserializationVisitor jsondeserializationvisitor)
    {
        factory.create(new ObjectTypePair(null, type, false)).accept(jsondeserializationvisitor);
        return jsondeserializationvisitor.getTarget();
    }

    protected abstract Object constructTarget();

    public void end(ObjectTypePair objecttypepair)
    {
    }

    public Object getTarget()
    {
        if(!constructed)
        {
            target = constructTarget();
            constructed = true;
        }
        return target;
    }

    protected Object invokeCustomDeserializer(JsonElement jsonelement, Pair pair)
    {
        Object obj;
        if(jsonelement == null || jsonelement.isJsonNull())
        {
            obj = null;
        } else
        {
            Type type = ((ObjectTypePair)pair.second).type;
            obj = ((JsonDeserializer)pair.first).deserialize(jsonelement, type, context);
        }
        return obj;
    }

    public void start(ObjectTypePair objecttypepair)
    {
    }

    final Object visitChildAsArray(Type type, JsonArray jsonarray)
    {
        return visitChild(type, new JsonArrayDeserializationVisitor(jsonarray.getAsJsonArray(), type, factory, objectConstructor, deserializers, context));
    }

    final Object visitChildAsObject(Type type, JsonElement jsonelement)
    {
        return visitChild(type, new JsonObjectDeserializationVisitor(jsonelement, type, factory, objectConstructor, deserializers, context));
    }

    public final boolean visitUsingCustomHandler(ObjectTypePair objecttypepair)
    {
        boolean flag = true;
        Pair pair = objecttypepair.getMatchingHandler(deserializers);
        if(pair == null)
        {
            flag = false;
        } else
        {
            target = invokeCustomDeserializer(json, pair);
            constructed = flag;
        }
        return flag;
    }

    protected boolean constructed;
    protected final JsonDeserializationContext context;
    protected final ParameterizedTypeHandlerMap deserializers;
    protected final ObjectNavigatorFactory factory;
    protected final JsonElement json;
    protected final ObjectConstructor objectConstructor;
    protected Object target;
    protected final Type targetType;
}
