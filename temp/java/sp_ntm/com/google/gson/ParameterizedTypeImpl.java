// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

final class ParameterizedTypeImpl
    implements ParameterizedType
{

    public ParameterizedTypeImpl(Type type, Type atype[], Type type1)
    {
        rawType = type;
        actualTypeArguments = atype;
        owner = type1;
    }

    public boolean equals(Object obj)
    {
        boolean flag = true;
        if(obj instanceof ParameterizedType) goto _L2; else goto _L1
_L1:
        flag = false;
_L4:
        return flag;
_L2:
        ParameterizedType parameterizedtype = (ParameterizedType)obj;
        if(this != parameterizedtype)
        {
            Type type = parameterizedtype.getOwnerType();
            Type type1 = parameterizedtype.getRawType();
            if((owner != null ? !owner.equals(type) : type != null) || (rawType != null ? !rawType.equals(type1) : type1 != null) || !Arrays.equals(actualTypeArguments, parameterizedtype.getActualTypeArguments()))
                flag = false;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public Type[] getActualTypeArguments()
    {
        return actualTypeArguments;
    }

    public Type getOwnerType()
    {
        return owner;
    }

    public Type getRawType()
    {
        return rawType;
    }

    public int hashCode()
    {
        int i = 0;
        int j = Arrays.hashCode(actualTypeArguments);
        int k;
        int l;
        if(owner == null)
            k = 0;
        else
            k = owner.hashCode();
        l = k ^ j;
        if(rawType != null)
            i = rawType.hashCode();
        return l ^ i;
    }

    private final Type actualTypeArguments[];
    private final Type owner;
    private final Type rawType;
}
