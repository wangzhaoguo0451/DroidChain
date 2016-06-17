// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson.reflect;

import java.lang.reflect.*;
import java.util.HashMap;
import java.util.Map;

public abstract class TypeToken
{
    private static class SimpleTypeToken extends TypeToken
    {

        public SimpleTypeToken(Type type1)
        {
            super(type1, null);
        }
    }


    protected TypeToken()
    {
        type = getSuperclassTypeParameter(getClass());
        rawType = getRawType(type);
    }

    private TypeToken(Type type1)
    {
        rawType = getRawType((Type)nonNull(type1, "type"));
        type = type1;
    }


    private static transient AssertionError buildUnexpectedTypeError(Type type1, Class aclass[])
    {
        StringBuilder stringbuilder = new StringBuilder("Unexpected type. Expected one of: ");
        int i = aclass.length;
        for(int j = 0; j < i; j++)
            stringbuilder.append(aclass[j].getName()).append(", ");

        stringbuilder.append("but got: ").append(type1.getClass().getName()).append(", for type token: ").append(type1.toString()).append('.');
        return new AssertionError(stringbuilder.toString());
    }

    static TypeToken fromSuperclassTypeParameter(Class class1)
    {
        return new SimpleTypeToken(class1);
    }

    public static TypeToken get(Class class1)
    {
        return new SimpleTypeToken(class1);
    }

    public static TypeToken get(Type type1)
    {
        return new SimpleTypeToken(type1);
    }

    private static Class getRawType(Type type1)
    {
        Class class1;
        if(type1 instanceof Class)
            class1 = (Class)type1;
        else
        if(type1 instanceof ParameterizedType)
        {
            Type type2 = ((ParameterizedType)type1).getRawType();
            if(type2 instanceof Class)
            {
                class1 = (Class)type2;
            } else
            {
                Class aclass1[] = new Class[1];
                aclass1[0] = java/lang/Class;
                throw buildUnexpectedTypeError(type2, aclass1);
            }
        } else
        if(type1 instanceof GenericArrayType)
        {
            class1 = Array.newInstance(getRawType(((GenericArrayType)type1).getGenericComponentType()), 0).getClass();
        } else
        {
            Class aclass[] = new Class[2];
            aclass[0] = java/lang/reflect/ParameterizedType;
            aclass[1] = java/lang/reflect/GenericArrayType;
            throw buildUnexpectedTypeError(type1, aclass);
        }
        return class1;
    }

    static Type getSuperclassTypeParameter(Class class1)
    {
        Type type1 = class1.getGenericSuperclass();
        if(type1 instanceof Class)
            throw new RuntimeException("Missing type parameter.");
        else
            return ((ParameterizedType)type1).getActualTypeArguments()[0];
    }

    private static boolean isAssignableFrom(Type type1, GenericArrayType genericarraytype)
    {
        Type type2 = genericarraytype.getGenericComponentType();
        boolean flag;
        if(type2 instanceof ParameterizedType)
        {
            Object obj = type1;
            if(type1 instanceof GenericArrayType)
                obj = ((GenericArrayType)type1).getGenericComponentType();
            else
            if(type1 instanceof Class)
            {
                Class class1;
                for(class1 = (Class)type1; class1.isArray(); class1 = class1.getComponentType());
                obj = class1;
            }
            flag = isAssignableFrom(((Type) (obj)), (ParameterizedType)type2, ((Map) (new HashMap())));
        } else
        {
            flag = true;
        }
        return flag;
    }

    private static boolean isAssignableFrom(Type type1, ParameterizedType parameterizedtype, Map map)
    {
        if(type1 != null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        if(parameterizedtype.equals(type1))
        {
            flag = true;
            continue; /* Loop/switch isn't completed */
        }
        Class class1 = getRawType(type1);
        ParameterizedType parameterizedtype1 = null;
        if(type1 instanceof ParameterizedType)
            parameterizedtype1 = (ParameterizedType)type1;
        if(parameterizedtype1 != null)
        {
            Type atype1[] = parameterizedtype1.getActualTypeArguments();
            TypeVariable atypevariable[] = class1.getTypeParameters();
            for(int k = 0; k < atype1.length; k++)
            {
                Type type2 = atype1[k];
                TypeVariable typevariable = atypevariable[k];
                for(; type2 instanceof TypeVariable; type2 = (Type)map.get(((TypeVariable)type2).getName()));
                map.put(typevariable.getName(), type2);
            }

            if(typeEquals(parameterizedtype1, parameterizedtype, map))
            {
                flag = true;
                continue; /* Loop/switch isn't completed */
            }
        }
        Type atype[] = class1.getGenericInterfaces();
        int i = atype.length;
        int j = 0;
        do
        {
            if(j >= i)
                break;
            if(isAssignableFrom(atype[j], parameterizedtype, ((Map) (new HashMap(map)))))
            {
                flag = true;
                continue; /* Loop/switch isn't completed */
            }
            j++;
        } while(true);
        if(isAssignableFrom(class1.getGenericSuperclass(), parameterizedtype, ((Map) (new HashMap(map)))))
            flag = true;
        else
            flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static boolean matches(Type type1, Type type2, Map map)
    {
        boolean flag;
        if(type2.equals(type1))
            flag = true;
        else
        if(type1 instanceof TypeVariable)
            flag = type2.equals(map.get(((TypeVariable)type1).getName()));
        else
            flag = false;
        return flag;
    }

    private static Object nonNull(Object obj, String s)
    {
        if(obj == null)
            throw new NullPointerException(s);
        else
            return obj;
    }

    private static boolean typeEquals(ParameterizedType parameterizedtype, ParameterizedType parameterizedtype1, Map map)
    {
        boolean flag = false;
        if(!parameterizedtype.getRawType().equals(parameterizedtype1.getRawType())) goto _L2; else goto _L1
_L1:
        Type atype[];
        Type atype1[];
        int i;
        atype = parameterizedtype.getActualTypeArguments();
        atype1 = parameterizedtype1.getActualTypeArguments();
        i = 0;
_L4:
        if(i >= atype.length)
            break MISSING_BLOCK_LABEL_72;
        if(matches(atype[i], atype1[i], map)) goto _L3; else goto _L2
_L2:
        return flag;
_L3:
        i++;
          goto _L4
        flag = true;
          goto _L2
    }

    public boolean equals(Object obj)
    {
        boolean flag;
        if(obj == this)
            flag = true;
        else
        if(!(obj instanceof TypeToken))
        {
            flag = false;
        } else
        {
            TypeToken typetoken = (TypeToken)obj;
            flag = type.equals(typetoken.type);
        }
        return flag;
    }

    public Class getRawType()
    {
        return rawType;
    }

    public Type getType()
    {
        return type;
    }

    public int hashCode()
    {
        return type.hashCode();
    }

    public boolean isAssignableFrom(TypeToken typetoken)
    {
        return isAssignableFrom(typetoken.getType());
    }

    public boolean isAssignableFrom(Class class1)
    {
        return isAssignableFrom(((Type) (class1)));
    }

    public boolean isAssignableFrom(Type type1)
    {
        boolean flag = false;
        if(type1 != null)
            if(type.equals(type1))
                flag = true;
            else
            if(type instanceof Class)
                flag = rawType.isAssignableFrom(getRawType(type1));
            else
            if(type instanceof ParameterizedType)
                flag = isAssignableFrom(type1, (ParameterizedType)type, ((Map) (new HashMap())));
            else
            if(type instanceof GenericArrayType)
            {
                boolean flag1;
                if(rawType.isAssignableFrom(getRawType(type1)) && isAssignableFrom(type1, (GenericArrayType)type))
                    flag1 = true;
                else
                    flag1 = false;
                flag = flag1;
            } else
            {
                Type type2 = type;
                Class aclass[] = new Class[3];
                aclass[flag] = java/lang/Class;
                aclass[1] = java/lang/reflect/ParameterizedType;
                aclass[2] = java/lang/reflect/GenericArrayType;
                throw buildUnexpectedTypeError(type2, aclass);
            }
        return flag;
    }

    public String toString()
    {
        String s;
        if(type instanceof Class)
            s = ((Class)type).getName();
        else
            s = type.toString();
        return s;
    }

    final Class rawType;
    final Type type;
}
