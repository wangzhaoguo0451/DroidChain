// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.*;

// Referenced classes of package com.google.gson:
//            LruCache, Preconditions, Pair, Cache

public final class FieldAttributes
{

    FieldAttributes(Class class1, Field field1)
    {
        Preconditions.checkNotNull(class1);
        declaringClazz = class1;
        name = field1.getName();
        declaredType = field1.getType();
        isSynthetic = field1.isSynthetic();
        modifiers = field1.getModifiers();
        field = field1;
    }

    private static Annotation getAnnotationFromArray(Collection collection, Class class1)
    {
        Iterator iterator = collection.iterator();
_L4:
        if(!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Annotation annotation = (Annotation)iterator.next();
        if(annotation.annotationType() != class1) goto _L4; else goto _L3
_L3:
        return annotation;
_L2:
        annotation = null;
        if(true) goto _L3; else goto _L5
_L5:
    }

    private static int getMaxCacheSize()
    {
        int i = 2000;
        int j = Integer.parseInt(System.getProperty("com.google.gson.annotation_cache_size_hint", String.valueOf(2000)));
        i = j;
_L2:
        return i;
        NumberFormatException numberformatexception;
        numberformatexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    Object get(Object obj)
        throws IllegalAccessException
    {
        return field.get(obj);
    }

    public Annotation getAnnotation(Class class1)
    {
        return getAnnotationFromArray(getAnnotations(), class1);
    }

    public Collection getAnnotations()
    {
        if(annotations == null)
        {
            Pair pair = new Pair(declaringClazz, name);
            annotations = (Collection)ANNOTATION_CACHE.getElement(pair);
            if(annotations == null)
            {
                annotations = Collections.unmodifiableCollection(Arrays.asList(field.getAnnotations()));
                ANNOTATION_CACHE.addElement(pair, annotations);
            }
        }
        return annotations;
    }

    public Class getDeclaredClass()
    {
        return declaredType;
    }

    public Type getDeclaredType()
    {
        if(genericType == null)
            genericType = field.getGenericType();
        return genericType;
    }

    public Class getDeclaringClass()
    {
        return declaringClazz;
    }

    Field getFieldObject()
    {
        return field;
    }

    public String getName()
    {
        return name;
    }

    public boolean hasModifier(int i)
    {
        boolean flag;
        if((i & modifiers) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    boolean isSynthetic()
    {
        return isSynthetic;
    }

    void set(Object obj, Object obj1)
        throws IllegalAccessException
    {
        field.set(obj, obj1);
    }

    private static final Cache ANNOTATION_CACHE = new LruCache(getMaxCacheSize());
    private static final String MAX_CACHE_PROPERTY_NAME = "com.google.gson.annotation_cache_size_hint";
    private Collection annotations;
    private final Class declaredType;
    private final Class declaringClazz;
    private final Field field;
    private Type genericType;
    private final boolean isSynthetic;
    private final int modifiers;
    private final String name;

}
