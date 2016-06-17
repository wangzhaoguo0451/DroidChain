// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Type;

// Referenced classes of package com.google.gson:
//            Preconditions, Primitives, FieldAttributes, ExclusionStrategy, 
//            ObjectTypePair, TypeInfoFactory, TypeInfo

final class ObjectNavigator
{
    public static interface Visitor
    {

        public abstract void end(ObjectTypePair objecttypepair);

        public abstract Object getTarget();

        public abstract void start(ObjectTypePair objecttypepair);

        public abstract void startVisitingObject(Object obj);

        public abstract void visitArray(Object obj, Type type);

        public abstract void visitArrayField(FieldAttributes fieldattributes, Type type, Object obj);

        public abstract boolean visitFieldUsingCustomHandler(FieldAttributes fieldattributes, Type type, Object obj);

        public abstract void visitObjectField(FieldAttributes fieldattributes, Type type, Object obj);

        public abstract void visitPrimitive(Object obj);

        public abstract boolean visitUsingCustomHandler(ObjectTypePair objecttypepair);
    }


    ObjectNavigator(ObjectTypePair objecttypepair, ExclusionStrategy exclusionstrategy)
    {
        Preconditions.checkNotNull(exclusionstrategy);
        objTypePair = objecttypepair;
        exclusionStrategy = exclusionstrategy;
    }

    private boolean isPrimitiveOrString(Object obj)
    {
        Class class1 = obj.getClass();
        boolean flag;
        if(class1 == java/lang/Object || class1 == java/lang/String || Primitives.unwrap(class1).isPrimitive())
            flag = true;
        else
            flag = false;
        return flag;
    }

    private void navigateClassFields(Object obj, Class class1, Visitor visitor)
    {
        java.lang.reflect.Field afield[] = class1.getDeclaredFields();
        AccessibleObject.setAccessible(afield, true);
        int i = afield.length;
        int j = 0;
        while(j < i) 
        {
            java.lang.reflect.Field field = afield[j];
            FieldAttributes fieldattributes = new FieldAttributes(class1, field);
            if(!exclusionStrategy.shouldSkipField(fieldattributes) && !exclusionStrategy.shouldSkipClass(fieldattributes.getDeclaredClass()))
            {
                TypeInfo typeinfo = TypeInfoFactory.getTypeInfoForField(field, objTypePair.type);
                Type type = typeinfo.getActualType();
                if(!visitor.visitFieldUsingCustomHandler(fieldattributes, type, obj))
                    if(typeinfo.isArray())
                        visitor.visitArrayField(fieldattributes, type, obj);
                    else
                        visitor.visitObjectField(fieldattributes, type, obj);
            }
            j++;
        }
    }

    public void accept(Visitor visitor)
    {
        TypeInfo typeinfo;
        typeinfo = new TypeInfo(objTypePair.type);
        break MISSING_BLOCK_LABEL_15;
_L2:
        Object obj1;
        do
            return;
        while(exclusionStrategy.shouldSkipClass(typeinfo.getRawClass()) || visitor.visitUsingCustomHandler(objTypePair));
        Object obj = objTypePair.getObject();
        if(obj == null)
            obj1 = visitor.getTarget();
        else
            obj1 = obj;
        if(obj1 == null)
            continue; /* Loop/switch isn't completed */
        objTypePair.setObject(obj1);
        visitor.start(objTypePair);
        if(!typeinfo.isArray())
            break; /* Loop/switch isn't completed */
        visitor.visitArray(obj1, objTypePair.type);
_L3:
        visitor.end(objTypePair);
        if(true) goto _L2; else goto _L1
_L1:
label0:
        {
            if(typeinfo.getActualType() != java/lang/Object || !isPrimitiveOrString(obj1))
                break label0;
            visitor.visitPrimitive(obj1);
            visitor.getTarget();
        }
          goto _L3
        Class class1;
        visitor.startVisitingObject(obj1);
        class1 = (new TypeInfo(objTypePair.toMoreSpecificType().type)).getRawClass();
_L5:
        if(class1 == null || class1.equals(java/lang/Object)) goto _L3; else goto _L4
_L4:
        Class class2;
        if(!class1.isSynthetic())
            navigateClassFields(obj1, class1, visitor);
        class2 = class1.getSuperclass();
        class1 = class2;
          goto _L5
          goto _L3
        Exception exception;
        exception;
        visitor.end(objTypePair);
        throw exception;
    }

    private final ExclusionStrategy exclusionStrategy;
    private final ObjectTypePair objTypePair;
}
