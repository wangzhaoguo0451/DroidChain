// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Type;
import java.util.Collection;

// Referenced classes of package com.google.gson:
//            TypeUtils, Primitives

class TypeInfo
{

    TypeInfo(Type type)
    {
        actualType = type;
        rawClass = TypeUtils.toRawClass(type);
    }

    public final Type getActualType()
    {
        return actualType;
    }

    public final Class getRawClass()
    {
        return rawClass;
    }

    public final Class getWrappedClass()
    {
        return Primitives.wrap(rawClass);
    }

    public final boolean isArray()
    {
        return TypeUtils.isArray(rawClass);
    }

    public final boolean isCollectionOrArray()
    {
        boolean flag;
        if(java/util/Collection.isAssignableFrom(rawClass) || isArray())
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean isEnum()
    {
        return rawClass.isEnum();
    }

    public final boolean isPrimitive()
    {
        return Primitives.isWrapperType(Primitives.wrap(rawClass));
    }

    protected final Type actualType;
    protected final Class rawClass;
}
