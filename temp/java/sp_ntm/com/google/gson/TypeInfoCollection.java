// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;

// Referenced classes of package com.google.gson:
//            TypeInfo, Preconditions

final class TypeInfoCollection
{

    public TypeInfoCollection(Type type)
    {
        if(!(type instanceof ParameterizedType))
        {
            throw new IllegalArgumentException("Collection objects need to be parameterized unless you use a custom serializer. Use the com.google.gson.reflect.TypeToken to extract the ParameterizedType.");
        } else
        {
            Preconditions.checkArgument(java/util/Collection.isAssignableFrom((new TypeInfo(type)).getRawClass()));
            collectionType = (ParameterizedType)type;
            return;
        }
    }

    public Type getElementType()
    {
        return collectionType.getActualTypeArguments()[0];
    }

    private final ParameterizedType collectionType;
}
