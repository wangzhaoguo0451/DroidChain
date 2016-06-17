// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.*;

final class TypeUtils
{

    private TypeUtils()
    {
    }

    static Type getActualTypeForFirstTypeVariable(Type type)
    {
        Type type1;
        if(type instanceof Class)
            type1 = java/lang/Object;
        else
        if(type instanceof ParameterizedType)
            type1 = ((ParameterizedType)type).getActualTypeArguments()[0];
        else
        if(type instanceof GenericArrayType)
            type1 = getActualTypeForFirstTypeVariable(((GenericArrayType)type).getGenericComponentType());
        else
            throw new IllegalArgumentException((new StringBuilder()).append("Type '").append(type).append("' is not a Class, ").append("ParameterizedType, or GenericArrayType. Can't extract class.").toString());
        return type1;
    }

    static boolean isArray(Type type)
    {
        boolean flag;
        if(type instanceof Class)
            flag = ((Class)type).isArray();
        else
        if(type instanceof GenericArrayType)
            flag = true;
        else
            flag = false;
        return flag;
    }

    static Class toRawClass(Type type)
    {
        Class class1;
        if(type instanceof Class)
            class1 = (Class)type;
        else
        if(type instanceof ParameterizedType)
            class1 = toRawClass(((ParameterizedType)type).getRawType());
        else
        if(type instanceof GenericArrayType)
            class1 = wrapWithArray(toRawClass(((GenericArrayType)type).getGenericComponentType()));
        else
        if(type instanceof WildcardType)
            class1 = toRawClass(((WildcardType)type).getUpperBounds()[0]);
        else
            throw new IllegalArgumentException((new StringBuilder()).append("Type '").append(type).append("' is not a Class, ").append("ParameterizedType, or GenericArrayType. Can't extract class.").toString());
        return class1;
    }

    static Class wrapWithArray(Class class1)
    {
        return Array.newInstance(class1, 0).getClass();
    }
}
