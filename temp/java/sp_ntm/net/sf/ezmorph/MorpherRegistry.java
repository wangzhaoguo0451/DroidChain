// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph;

import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.*;
import net.sf.ezmorph.object.IdentityObjectMorpher;

// Referenced classes of package net.sf.ezmorph:
//            Morpher, ObjectMorpher, MorphException

public class MorpherRegistry
    implements Serializable
{

    public MorpherRegistry()
    {
        morphers = new HashMap();
    }

    static Class _mthclass$(String s)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        catch(ClassNotFoundException classnotfoundexception)
        {
            throw new NoClassDefFoundError(classnotfoundexception.getMessage());
        }
        return class1;
    }

    /**
     * @deprecated Method clear is deprecated
     */

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        morphers.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method clear is deprecated
     */

    public void clear(Class class1)
    {
        this;
        JVM INSTR monitorenter ;
        if((List)morphers.get(class1) != null)
            morphers.remove(class1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method deregisterMorpher is deprecated
     */

    public void deregisterMorpher(Morpher morpher)
    {
        this;
        JVM INSTR monitorenter ;
        List list = (List)morphers.get(morpher.morphsTo());
        if(list != null && !list.isEmpty())
        {
            list.remove(morpher);
            if(list.isEmpty())
                morphers.remove(morpher.morphsTo());
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method getMorpherFor is deprecated
     */

    public Morpher getMorpherFor(Class class1)
    {
        this;
        JVM INSTR monitorenter ;
        List list = (List)morphers.get(class1);
        if(list != null && !list.isEmpty()) goto _L2; else goto _L1
_L1:
        IdentityObjectMorpher identityobjectmorpher = IdentityObjectMorpher.getInstance();
        Object obj = identityobjectmorpher;
_L4:
        this;
        JVM INSTR monitorexit ;
        return ((Morpher) (obj));
_L2:
        obj = (Morpher)list.get(0);
        if(true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method getMorphersFor is deprecated
     */

    public Morpher[] getMorphersFor(Class class1)
    {
        this;
        JVM INSTR monitorenter ;
        List list = (List)morphers.get(class1);
        if(list != null && !list.isEmpty()) goto _L2; else goto _L1
_L1:
        Morpher amorpher[];
        amorpher = new Morpher[1];
        amorpher[0] = IdentityObjectMorpher.getInstance();
_L6:
        this;
        JVM INSTR monitorexit ;
        return amorpher;
_L2:
        Iterator iterator;
        int i;
        amorpher = new Morpher[list.size()];
        iterator = list.iterator();
        i = 0;
_L4:
        int j;
        if(!iterator.hasNext())
            break; /* Loop/switch isn't completed */
        j = i + 1;
        amorpher[i] = (Morpher)iterator.next();
        i = j;
        if(true) goto _L4; else goto _L3
_L3:
        if(true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
    }

    public Object morph(Class class1, Object obj)
    {
        if(obj != null) goto _L2; else goto _L1
_L1:
        Morpher morpher1 = getMorpherFor(class1);
        if(morpher1 instanceof ObjectMorpher)
            obj = ((ObjectMorpher)morpher1).morph(obj);
        else
            try
            {
                Class class4 = morpher1.getClass();
                Class aclass1[] = new Class[1];
                Class class5;
                Method method1;
                Object aobj1[];
                if(class$java$lang$Object == null)
                {
                    class5 = _mthclass$("java.lang.Object");
                    class$java$lang$Object = class5;
                } else
                {
                    class5 = class$java$lang$Object;
                }
                aclass1[0] = class5;
                method1 = class4.getDeclaredMethod("morph", aclass1);
                aobj1 = new Object[1];
                aobj1[0] = obj;
                obj = method1.invoke(morpher1, aobj1);
            }
            catch(Exception exception1)
            {
                throw new MorphException(exception1);
            }
_L4:
        return obj;
_L2:
        Morpher amorpher[] = getMorphersFor(class1);
        int i = 0;
        do
        {
            if(i < amorpher.length)
            {
label0:
                {
                    Morpher morpher = amorpher[i];
                    if(!morpher.supports(obj.getClass()))
                        break label0;
                    if(morpher instanceof ObjectMorpher)
                        obj = ((ObjectMorpher)morpher).morph(obj);
                    else
                        try
                        {
                            Class class2 = morpher.getClass();
                            Class aclass[] = new Class[1];
                            Class class3;
                            Method method;
                            Object aobj[];
                            if(class$java$lang$Object == null)
                            {
                                class3 = _mthclass$("java.lang.Object");
                                class$java$lang$Object = class3;
                            } else
                            {
                                class3 = class$java$lang$Object;
                            }
                            aclass[0] = class3;
                            method = class2.getDeclaredMethod("morph", aclass);
                            aobj = new Object[1];
                            aobj[0] = obj;
                            obj = method.invoke(morpher, aobj);
                        }
                        catch(Exception exception)
                        {
                            throw new MorphException(exception);
                        }
                }
            }
            if(true)
                continue;
            i++;
        } while(true);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void registerMorpher(Morpher morpher)
    {
        registerMorpher(morpher, false);
    }

    /**
     * @deprecated Method registerMorpher is deprecated
     */

    public void registerMorpher(Morpher morpher, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj = (List)morphers.get(morpher.morphsTo());
        if(flag || obj == null)
        {
            obj = new ArrayList();
            morphers.put(morpher.morphsTo(), obj);
        }
        if(!((List) (obj)).contains(morpher))
            ((List) (obj)).add(morpher);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static Class class$java$lang$Object;
    private static final long serialVersionUID = 0xc9f301efcb98785dL;
    private Map morphers;
}
