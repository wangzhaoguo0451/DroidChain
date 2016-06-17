// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            JsonSerializationContext, MemoryRefStack, JsonNull, ObjectTypePair, 
//            ObjectNavigatorFactory, JsonSerializationVisitor, ObjectNavigator, ParameterizedTypeHandlerMap, 
//            JsonElement

final class JsonSerializationContextDefault
    implements JsonSerializationContext
{

    JsonSerializationContextDefault(ObjectNavigatorFactory objectnavigatorfactory, boolean flag, ParameterizedTypeHandlerMap parameterizedtypehandlermap)
    {
        factory = objectnavigatorfactory;
        serializeNulls = flag;
        serializers = parameterizedtypehandlermap;
    }

    public JsonElement serialize(Object obj)
    {
        Object obj1;
        if(obj == null)
            obj1 = JsonNull.createJsonNull();
        else
            obj1 = serialize(obj, ((Type) (obj.getClass())), true);
        return ((JsonElement) (obj1));
    }

    public JsonElement serialize(Object obj, Type type)
    {
        return serialize(obj, type, true);
    }

    public JsonElement serialize(Object obj, Type type, boolean flag)
    {
        ObjectNavigator objectnavigator = factory.create(new ObjectTypePair(obj, type, flag));
        JsonSerializationVisitor jsonserializationvisitor = new JsonSerializationVisitor(factory, serializeNulls, serializers, this, ancestors);
        objectnavigator.accept(jsonserializationvisitor);
        return jsonserializationvisitor.getJsonElement();
    }

    private final MemoryRefStack ancestors = new MemoryRefStack();
    private final ObjectNavigatorFactory factory;
    private final boolean serializeNulls;
    private final ParameterizedTypeHandlerMap serializers;
}
