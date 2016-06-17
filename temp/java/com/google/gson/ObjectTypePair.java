// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            ParameterizedTypeHandlerMap, Pair

final class ObjectTypePair
{

    ObjectTypePair(Object obj1, Type type1, boolean flag)
    {
        obj = obj1;
        type = type1;
        preserveType = flag;
    }

    static Type getActualTypeIfMoreSpecific(Type type1, Class class1)
    {
        if(type1 instanceof Class)
        {
            if(((Class)type1).isAssignableFrom(class1))
                type1 = class1;
            if(type1 == java/lang/Object)
                type1 = class1;
        }
        return type1;
    }

    public boolean equals(Object obj1)
    {
        boolean flag;
        boolean flag1;
        flag = true;
        flag1 = false;
        if(this != obj1) goto _L2; else goto _L1
_L1:
        flag1 = flag;
_L4:
        return flag1;
_L2:
        if(obj1 != null && getClass() == obj1.getClass())
        {
            ObjectTypePair objecttypepair = (ObjectTypePair)obj1;
            if((obj != null ? obj == objecttypepair.obj : objecttypepair.obj == null) && (type != null ? type.equals(objecttypepair.type) : objecttypepair.type == null))
            {
                if(preserveType != objecttypepair.preserveType)
                    flag = false;
                flag1 = flag;
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    Pair getMatchingHandler(ParameterizedTypeHandlerMap parameterizedtypehandlermap)
    {
        if(preserveType || obj == null) goto _L2; else goto _L1
_L1:
        ObjectTypePair objecttypepair;
        Object obj2;
        objecttypepair = toMoreSpecificType();
        obj2 = parameterizedtypehandlermap.getHandlerFor(objecttypepair.type);
        if(obj2 == null) goto _L2; else goto _L3
_L3:
        Pair pair = new Pair(obj2, objecttypepair);
_L5:
        return pair;
_L2:
        Object obj1 = parameterizedtypehandlermap.getHandlerFor(type);
        if(obj1 == null)
            pair = null;
        else
            pair = new Pair(obj1, this);
        if(true) goto _L5; else goto _L4
_L4:
    }

    Object getObject()
    {
        return obj;
    }

    Type getType()
    {
        return type;
    }

    public int hashCode()
    {
        int i;
        if(obj == null)
            i = 31;
        else
            i = obj.hashCode();
        return i;
    }

    public boolean isPreserveType()
    {
        return preserveType;
    }

    void setObject(Object obj1)
    {
        obj = obj1;
    }

    ObjectTypePair toMoreSpecificType()
    {
        if(!preserveType && obj != null) goto _L2; else goto _L1
_L1:
        return this;
_L2:
        Type type1 = getActualTypeIfMoreSpecific(type, obj.getClass());
        if(type1 != type)
            this = new ObjectTypePair(obj, type1, preserveType);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public String toString()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Boolean.valueOf(preserveType);
        aobj[1] = type;
        aobj[2] = obj;
        return String.format("preserveType: %b, type: %s, obj: %s", aobj);
    }

    private Object obj;
    private final boolean preserveType;
    final Type type;
}
