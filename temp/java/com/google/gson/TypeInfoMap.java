// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
import java.util.Properties;

// Referenced classes of package com.google.gson:
//            TypeInfo, Preconditions

final class TypeInfoMap
{

    public TypeInfoMap(Type type)
    {
        if((type instanceof Class) && java/util/Properties.isAssignableFrom((Class)type))
        {
            keyType = java/lang/String;
            valueType = java/lang/String;
        } else
        if(type instanceof ParameterizedType)
        {
            Preconditions.checkArgument(java/util/Map.isAssignableFrom((new TypeInfo(type)).getRawClass()));
            ParameterizedType parameterizedtype = (ParameterizedType)type;
            keyType = parameterizedtype.getActualTypeArguments()[0];
            valueType = parameterizedtype.getActualTypeArguments()[1];
        } else
        {
            throw new IllegalArgumentException("Map objects need to be parameterized unless you use a custom serializer. Use the com.google.gson.reflect.TypeToken to extract the ParameterizedType.");
        }
    }

    public Type getKeyType()
    {
        return keyType;
    }

    public Type getValueType()
    {
        return valueType;
    }

    private final Type keyType;
    private final Type valueType;
}
