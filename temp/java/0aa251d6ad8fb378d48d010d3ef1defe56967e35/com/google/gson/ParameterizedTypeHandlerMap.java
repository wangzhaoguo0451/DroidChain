// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Type;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.google.gson:
//            Pair, TypeUtils

final class ParameterizedTypeHandlerMap
{

    ParameterizedTypeHandlerMap()
    {
        modifiable = true;
    }

    private Object getHandlerForTypeHierarchy(Class class1)
    {
        Iterator iterator = typeHierarchyList.iterator();
_L4:
        if(!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Pair pair = (Pair)iterator.next();
        if(!((Class)pair.first).isAssignableFrom(class1)) goto _L4; else goto _L3
_L3:
        Object obj = pair.second;
_L6:
        return obj;
_L2:
        obj = null;
        if(true) goto _L6; else goto _L5
_L5:
    }

    private int getIndexOfAnOverriddenHandler(Class class1)
    {
        int i = -1 + typeHierarchyList.size();
_L3:
        if(i < 0)
            break MISSING_BLOCK_LABEL_51;
        if(!class1.isAssignableFrom((Class)((Pair)typeHierarchyList.get(i)).first)) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        i--;
          goto _L3
        i = -1;
          goto _L1
    }

    /**
     * @deprecated Method getIndexOfSpecificHandlerForTypeHierarchy is deprecated
     */

    private int getIndexOfSpecificHandlerForTypeHierarchy(Class class1)
    {
        this;
        JVM INSTR monitorenter ;
        int i = -1 + typeHierarchyList.size();
_L5:
        if(i < 0) goto _L2; else goto _L1
_L1:
        boolean flag = class1.equals(((Pair)typeHierarchyList.get(i)).first);
        if(!flag) goto _L4; else goto _L3
_L3:
        this;
        JVM INSTR monitorexit ;
        return i;
_L4:
        i--;
          goto _L5
_L2:
        i = -1;
          goto _L3
        Exception exception;
        exception;
        throw exception;
          goto _L5
    }

    private String typeToString(Type type)
    {
        return TypeUtils.toRawClass(type).getSimpleName();
    }

    /**
     * @deprecated Method copyOf is deprecated
     */

    public ParameterizedTypeHandlerMap copyOf()
    {
        this;
        JVM INSTR monitorenter ;
        ParameterizedTypeHandlerMap parameterizedtypehandlermap;
        parameterizedtypehandlermap = new ParameterizedTypeHandlerMap();
        java.util.Map.Entry entry;
        for(Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); parameterizedtypehandlermap.register((Type)entry.getKey(), entry.getValue()))
            entry = (java.util.Map.Entry)iterator.next();

        break MISSING_BLOCK_LABEL_74;
        Exception exception;
        exception;
        throw exception;
        for(Iterator iterator1 = typeHierarchyList.iterator(); iterator1.hasNext(); parameterizedtypehandlermap.registerForTypeHierarchy((Pair)iterator1.next()));
        this;
        JVM INSTR monitorexit ;
        return parameterizedtypehandlermap;
    }

    /**
     * @deprecated Method getHandlerFor is deprecated
     */

    public Object getHandlerFor(Type type)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        Object obj1;
        obj = map.get(type);
        if(obj != null)
            break MISSING_BLOCK_LABEL_51;
        Class class1 = TypeUtils.toRawClass(type);
        if(class1 != type)
            obj = getHandlerFor(((Type) (class1)));
        if(obj != null)
            break MISSING_BLOCK_LABEL_51;
        obj1 = getHandlerForTypeHierarchy(class1);
        obj = obj1;
        this;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method hasSpecificHandlerFor is deprecated
     */

    public boolean hasSpecificHandlerFor(Type type)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = map.containsKey(type);
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method makeUnmodifiable is deprecated
     */

    public void makeUnmodifiable()
    {
        this;
        JVM INSTR monitorenter ;
        modifiable = false;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method register is deprecated
     */

    public void register(Type type, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        if(!modifiable)
            throw new IllegalStateException("Attempted to modify an unmodifiable map.");
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if(hasSpecificHandlerFor(type))
            logger.log(Level.WARNING, "Overriding the existing type handler for {0}", type);
        map.put(type, obj);
        this;
        JVM INSTR monitorexit ;
    }

    /**
     * @deprecated Method registerForTypeHierarchy is deprecated
     */

    public void registerForTypeHierarchy(Pair pair)
    {
        this;
        JVM INSTR monitorenter ;
        if(!modifiable)
            throw new IllegalStateException("Attempted to modify an unmodifiable map.");
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int i = getIndexOfSpecificHandlerForTypeHierarchy((Class)pair.first);
        if(i >= 0)
        {
            logger.log(Level.WARNING, "Overriding the existing type handler for {0}", pair.first);
            typeHierarchyList.remove(i);
        }
        int j = getIndexOfAnOverriddenHandler((Class)pair.first);
        if(j >= 0)
            throw new IllegalArgumentException((new StringBuilder()).append("The specified type handler for type ").append(pair.first).append(" hides the previously registered type hierarchy handler for ").append(((Pair)typeHierarchyList.get(j)).first).append(". Gson does not allow this.").toString());
        typeHierarchyList.add(0, pair);
        this;
        JVM INSTR monitorexit ;
    }

    /**
     * @deprecated Method registerForTypeHierarchy is deprecated
     */

    public void registerForTypeHierarchy(Class class1, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        registerForTypeHierarchy(new Pair(class1, obj));
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method registerIfAbsent is deprecated
     */

    public void registerIfAbsent(ParameterizedTypeHandlerMap parameterizedtypehandlermap)
    {
        this;
        JVM INSTR monitorenter ;
        if(!modifiable)
            throw new IllegalStateException("Attempted to modify an unmodifiable map.");
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int i;
        Iterator iterator = parameterizedtypehandlermap.map.entrySet().iterator();
        do
        {
            if(!iterator.hasNext())
                break;
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if(!map.containsKey(entry.getKey()))
                register((Type)entry.getKey(), entry.getValue());
        } while(true);
        i = -1 + parameterizedtypehandlermap.typeHierarchyList.size();
_L1:
        if(i < 0)
            break MISSING_BLOCK_LABEL_164;
        Pair pair = (Pair)parameterizedtypehandlermap.typeHierarchyList.get(i);
        if(getIndexOfSpecificHandlerForTypeHierarchy((Class)pair.first) < 0)
            registerForTypeHierarchy(pair);
        i--;
          goto _L1
        this;
        JVM INSTR monitorexit ;
    }

    /**
     * @deprecated Method registerIfAbsent is deprecated
     */

    public void registerIfAbsent(Type type, Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        if(!modifiable)
            throw new IllegalStateException("Attempted to modify an unmodifiable map.");
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if(!map.containsKey(type))
            register(type, obj);
        this;
        JVM INSTR monitorexit ;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("{mapForTypeHierarchy:{");
        boolean flag = true;
        Iterator iterator = typeHierarchyList.iterator();
        while(iterator.hasNext()) 
        {
            Pair pair = (Pair)iterator.next();
            if(flag)
                flag = false;
            else
                stringbuilder.append(',');
            stringbuilder.append(typeToString((Type)pair.first)).append(':');
            stringbuilder.append(pair.second);
        }
        stringbuilder.append("},map:{");
        boolean flag1 = true;
        Iterator iterator1 = map.entrySet().iterator();
        while(iterator1.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
            if(flag1)
                flag1 = false;
            else
                stringbuilder.append(',');
            stringbuilder.append(typeToString((Type)entry.getKey())).append(':');
            stringbuilder.append(entry.getValue());
        }
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    private static final Logger logger = Logger.getLogger(com/google/gson/ParameterizedTypeHandlerMap.getName());
    private final Map map = new HashMap();
    private boolean modifiable;
    private final List typeHierarchyList = new ArrayList();

}
