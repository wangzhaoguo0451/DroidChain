// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            TypeInfo

final class TypeInfoArray extends TypeInfo
{

    TypeInfoArray(Type type)
    {
        super(type);
        Class class1;
        for(class1 = rawClass; class1.isArray(); class1 = class1.getComponentType());
        componentRawType = class1;
        secondLevel = extractSecondLevelType(actualType, rawClass);
    }

    private static Type extractSecondLevelType(Type type, Class class1)
    {
        Object obj;
        if(type instanceof GenericArrayType)
            obj = ((GenericArrayType)type).getGenericComponentType();
        else
            obj = class1.getComponentType();
        return ((Type) (obj));
    }

    public Class getComponentRawType()
    {
        return componentRawType;
    }

    public Type getSecondLevelType()
    {
        return secondLevel;
    }

    private final Class componentRawType;
    private final Type secondLevel;
}
