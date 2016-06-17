// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.*;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.google.gson:
//            ObjectConstructor, TypeInfo, ParameterizedTypeHandlerMap, InstanceCreator, 
//            TypeUtils

final class MappedObjectConstructor
    implements ObjectConstructor
{

    public MappedObjectConstructor(ParameterizedTypeHandlerMap parameterizedtypehandlermap)
    {
        instanceCreatorMap = parameterizedtypehandlermap;
    }

    private Object constructWithNoArgConstructor(Type type)
    {
        Constructor constructor;
        Object obj;
        try
        {
            constructor = getNoArgsConstructor(type);
            if(constructor == null)
                throw new RuntimeException((new StringBuilder()).append("No-args constructor for ").append(type).append(" does not exist. ").append("Register an InstanceCreator with Gson for this type to fix this problem.").toString());
        }
        catch(InstantiationException instantiationexception)
        {
            throw new RuntimeException((new StringBuilder()).append("Unable to invoke no-args constructor for ").append(type).append(". ").append("Register an InstanceCreator with Gson for this type may fix this problem.").toString(), instantiationexception);
        }
        catch(IllegalAccessException illegalaccessexception)
        {
            throw new RuntimeException((new StringBuilder()).append("Unable to invoke no-args constructor for ").append(type).append(". ").append("Register an InstanceCreator with Gson for this type may fix this problem.").toString(), illegalaccessexception);
        }
        catch(InvocationTargetException invocationtargetexception)
        {
            throw new RuntimeException((new StringBuilder()).append("Unable to invoke no-args constructor for ").append(type).append(". ").append("Register an InstanceCreator with Gson for this type may fix this problem.").toString(), invocationtargetexception);
        }
        obj = constructor.newInstance(new Object[0]);
        return obj;
    }

    private Constructor getNoArgsConstructor(Type type)
    {
        Constructor aconstructor[];
        int i;
        int j;
        aconstructor = (Constructor[])(new TypeInfo(type)).getRawClass().getDeclaredConstructors();
        AccessibleObject.setAccessible(aconstructor, true);
        i = aconstructor.length;
        j = 0;
_L3:
        Constructor constructor;
        if(j >= i)
            break MISSING_BLOCK_LABEL_59;
        constructor = aconstructor[j];
        if(constructor.getParameterTypes().length != 0) goto _L2; else goto _L1
_L1:
        return constructor;
_L2:
        j++;
          goto _L3
        constructor = null;
          goto _L1
    }

    public Object construct(Type type)
    {
        InstanceCreator instancecreator = (InstanceCreator)instanceCreatorMap.getHandlerFor(type);
        Object obj;
        if(instancecreator != null)
            obj = instancecreator.createInstance(type);
        else
            obj = constructWithNoArgConstructor(type);
        return obj;
    }

    public Object constructArray(Type type, int i)
    {
        return Array.newInstance(TypeUtils.toRawClass(type), i);
    }

    void register(Type type, InstanceCreator instancecreator)
    {
        if(instanceCreatorMap.hasSpecificHandlerFor(type))
            log.log(Level.WARNING, "Overriding the existing InstanceCreator for {0}", type);
        instanceCreatorMap.register(type, instancecreator);
    }

    public String toString()
    {
        return instanceCreatorMap.toString();
    }

    private static final Logger log = Logger.getLogger(com/google/gson/MappedObjectConstructor.getName());
    private final ParameterizedTypeHandlerMap instanceCreatorMap;

}
