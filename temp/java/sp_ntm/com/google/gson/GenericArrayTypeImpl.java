// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class GenericArrayTypeImpl
    implements GenericArrayType
{

    public GenericArrayTypeImpl(Type type)
    {
        genericComponentType = type;
    }

    public boolean equals(Object obj)
    {
        boolean flag = false;
        if(obj instanceof GenericArrayType) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        Type type = ((GenericArrayType)obj).getGenericComponentType();
        if(genericComponentType == null)
        {
            if(type == null)
                flag = true;
        } else
        {
            flag = genericComponentType.equals(type);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public Type getGenericComponentType()
    {
        return genericComponentType;
    }

    public int hashCode()
    {
        int i;
        if(genericComponentType == null)
            i = 0;
        else
            i = genericComponentType.hashCode();
        return i;
    }

    private final Type genericComponentType;
}
