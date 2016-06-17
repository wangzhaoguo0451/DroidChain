// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.*;

// Referenced classes of package com.google.gson:
//            Preconditions, ParameterizedTypeImpl, TypeUtils, GenericArrayTypeImpl, 
//            TypeInfoArray, TypeInfo

final class TypeInfoFactory
{

    private TypeInfoFactory()
    {
    }

    private static Type[] extractRealTypes(Type atype[], Type type, Class class1)
    {
        Preconditions.checkNotNull(atype);
        Type atype1[] = new Type[atype.length];
        for(int i = 0; i < atype.length; i++)
            atype1[i] = getActualType(atype[i], type, class1);

        return atype1;
    }

    private static Type extractTypeForHierarchy(Type type, TypeVariable typevariable)
    {
        Type type1 = null;
        if(!(type instanceof Class)) goto _L2; else goto _L1
_L1:
        Class class1 = (Class)type;
_L7:
        Type type2;
        int i;
        type2 = class1.getGenericSuperclass();
        if(!(type2 instanceof ParameterizedType) || ((ParameterizedType)type2).getRawType() != typevariable.getGenericDeclaration())
            break MISSING_BLOCK_LABEL_140;
        i = getIndex(((Class)((ParameterizedType)type2).getRawType()).getTypeParameters(), typevariable);
        if(!(type instanceof Class)) goto _L4; else goto _L3
_L3:
        Type atype[] = ((ParameterizedType)type2).getActualTypeArguments();
_L9:
        type1 = atype[i];
_L6:
        return type1;
_L2:
        if(!(type instanceof ParameterizedType)) goto _L6; else goto _L5
_L5:
        class1 = (Class)((ParameterizedType)type).getRawType();
          goto _L7
_L4:
        if(!(type instanceof ParameterizedType)) goto _L6; else goto _L8
_L8:
        atype = ((ParameterizedType)type).getActualTypeArguments();
          goto _L9
        type1 = null;
        if(type2 != null)
            type1 = extractTypeForHierarchy(type2, typevariable);
          goto _L6
    }

    private static Type getActualType(Type type, Type type1, Class class1)
    {
        if(!(type instanceof Class)) goto _L2; else goto _L1
_L1:
        return type;
_L2:
        if(type instanceof ParameterizedType)
        {
            ParameterizedType parameterizedtype1 = (ParameterizedType)type;
            Type type5 = parameterizedtype1.getOwnerType();
            Type atype[] = extractRealTypes(parameterizedtype1.getActualTypeArguments(), type1, class1);
            Type type6 = parameterizedtype1.getRawType();
            type = new ParameterizedTypeImpl(type6, atype, type5);
            continue; /* Loop/switch isn't completed */
        }
        if(type instanceof GenericArrayType)
        {
            GenericArrayType genericarraytype = (GenericArrayType)type;
            Type type3 = genericarraytype.getGenericComponentType();
            Type type4 = getActualType(type3, type1, class1);
            if(type3.equals(type4))
            {
                type = genericarraytype;
            } else
            {
                Object obj;
                if(type4 instanceof Class)
                    obj = TypeUtils.wrapWithArray(TypeUtils.toRawClass(type4));
                else
                    obj = new GenericArrayTypeImpl(type4);
                type = ((Type) (obj));
            }
            continue; /* Loop/switch isn't completed */
        }
        if(type instanceof TypeVariable)
        {
            if(type1 instanceof ParameterizedType)
            {
                TypeVariable typevariable = (TypeVariable)type;
                TypeVariable atypevariable[] = class1.getTypeParameters();
                ParameterizedType parameterizedtype = (ParameterizedType)type1;
                int i = getIndex(atypevariable, typevariable);
                type = parameterizedtype.getActualTypeArguments()[i];
                continue; /* Loop/switch isn't completed */
            }
            if(type instanceof TypeVariable)
            {
                Type type2;
                do
                    type2 = extractTypeForHierarchy(type1, (TypeVariable)type);
                while(type2 != null && (type2 instanceof TypeVariable));
                if(type2 != null)
                {
                    type = type2;
                    continue; /* Loop/switch isn't completed */
                }
            }
            throw new UnsupportedOperationException((new StringBuilder()).append("Expecting parameterized type, got ").append(type1).append(".\n Are you missing the use of TypeToken idiom?\n See ").append("http://sites.google.com/site/gson/gson-user-guide#TOC-Serializing-and-Deserializing-Gener").toString());
        }
        if(type instanceof WildcardType)
            type = getActualType(((WildcardType)type).getUpperBounds()[0], type1, class1);
        else
            throw new IllegalArgumentException((new StringBuilder()).append("Type '").append(type).append("' is not a Class, ").append("ParameterizedType, GenericArrayType or TypeVariable. Can't extract type.").toString());
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static int getIndex(TypeVariable atypevariable[], TypeVariable typevariable)
    {
        for(int i = 0; i < atypevariable.length; i++)
            if(typevariable.equals(atypevariable[i]))
                return i;

        throw new IllegalStateException("How can the type variable not be present in the class declaration!");
    }

    public static TypeInfoArray getTypeInfoForArray(Type type)
    {
        Preconditions.checkArgument(TypeUtils.isArray(type));
        return new TypeInfoArray(type);
    }

    public static TypeInfo getTypeInfoForField(Field field, Type type)
    {
        Class class1 = TypeUtils.toRawClass(type);
        return new TypeInfo(getActualType(field.getGenericType(), type, class1));
    }
}
