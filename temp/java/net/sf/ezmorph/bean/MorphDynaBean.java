// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.bean;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.*;
import net.sf.ezmorph.*;
import org.apache.commons.beanutils.*;
import org.apache.commons.lang.builder.*;

// Referenced classes of package net.sf.ezmorph.bean:
//            MorphDynaClass

public final class MorphDynaBean
    implements DynaBean, Serializable
{

    public MorphDynaBean()
    {
        this(null);
    }

    public MorphDynaBean(MorpherRegistry morpherregistry)
    {
        dynaValues = new HashMap();
        setMorpherRegistry(morpherregistry);
    }

    private boolean isByte(Class class1)
    {
        Class class2 = class$3;
        boolean flag;
        if(class2 == null)
        {
            Class class3;
            try
            {
                class3 = Class.forName("java.lang.Byte");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class2 = class3;
            class$3 = class2;
        }
        if(!class2.isAssignableFrom(class1) && class1 != Byte.TYPE)
            flag = false;
        else
            flag = true;
        return flag;
    }

    private boolean isFloat(Class class1)
    {
        Class class2 = class$8;
        boolean flag;
        if(class2 == null)
        {
            Class class3;
            try
            {
                class3 = Class.forName("java.lang.Float");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class2 = class3;
            class$8 = class2;
        }
        if(!class2.isAssignableFrom(class1) && class1 != Float.TYPE)
            flag = false;
        else
            flag = true;
        return flag;
    }

    private boolean isInteger(Class class1)
    {
        Class class2 = class$6;
        boolean flag;
        if(class2 == null)
        {
            Class class3;
            try
            {
                class3 = Class.forName("java.lang.Integer");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class2 = class3;
            class$6 = class2;
        }
        if(!class2.isAssignableFrom(class1) && class1 != Integer.TYPE)
            flag = false;
        else
            flag = true;
        return flag;
    }

    private boolean isLong(Class class1)
    {
        Class class2 = class$7;
        boolean flag;
        if(class2 == null)
        {
            Class class3;
            try
            {
                class3 = Class.forName("java.lang.Long");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class2 = class3;
            class$7 = class2;
        }
        if(!class2.isAssignableFrom(class1) && class1 != Long.TYPE)
            flag = false;
        else
            flag = true;
        return flag;
    }

    private boolean isShort(Class class1)
    {
        Class class2 = class$5;
        boolean flag;
        if(class2 == null)
        {
            Class class3;
            try
            {
                class3 = Class.forName("java.lang.Short");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class2 = class3;
            class$5 = class2;
        }
        if(!class2.isAssignableFrom(class1) && class1 != Short.TYPE)
            flag = false;
        else
            flag = true;
        return flag;
    }

    public boolean contains(String s, String s1)
    {
        Class class1 = getDynaProperty(s).getType();
        Class class2 = class$0;
        if(class2 == null)
        {
            Class class3;
            try
            {
                class3 = Class.forName("java.util.Map");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class2 = class3;
            class$0 = class2;
        }
        if(!class2.isAssignableFrom(class1))
            throw new MorphException("Non-Mapped property name: " + s + " key: " + s1);
        Object obj = dynaValues.get(s);
        if(obj == null)
        {
            obj = new HashMap();
            dynaValues.put(s, obj);
        }
        return ((Map)obj).containsKey(s1);
    }

    public boolean equals(Object obj)
    {
        boolean flag = false;
        if(this != obj) goto _L2; else goto _L1
_L1:
        flag = true;
_L4:
        return flag;
_L2:
        EqualsBuilder equalsbuilder;
        DynaProperty adynaproperty[];
        int i;
        if(obj == null || !(obj instanceof MorphDynaBean))
            continue; /* Loop/switch isn't completed */
        MorphDynaBean morphdynabean = (MorphDynaBean)obj;
        equalsbuilder = (new EqualsBuilder()).append(dynaClass, morphdynabean.dynaClass);
        adynaproperty = dynaClass.getDynaProperties();
        i = 0;
_L5:
label0:
        {
            if(i < adynaproperty.length)
                break label0;
            flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
        DynaProperty dynaproperty = adynaproperty[i];
        equalsbuilder.append(dynaValues.get(dynaproperty.getName()), dynaValues.get(dynaproperty.getName()));
        i++;
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    public Object get(String s)
    {
        Object obj = dynaValues.get(s);
        if(obj == null) goto _L2; else goto _L1
_L1:
        return obj;
_L2:
        Class class1 = getDynaProperty(s).getType();
        if(class1.isPrimitive())
            obj = morpherRegistry.morph(class1, obj);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public Object get(String s, int i)
    {
        Object obj;
        Class class1 = getDynaProperty(s).getType();
        if(!class1.isArray())
        {
            Class class2 = class$1;
            if(class2 == null)
            {
                Class class3;
                try
                {
                    class3 = Class.forName("java.util.List");
                }
                catch(ClassNotFoundException classnotfoundexception)
                {
                    throw new NoClassDefFoundError(classnotfoundexception.getMessage());
                }
                class2 = class3;
                class$1 = class2;
            }
            if(!class2.isAssignableFrom(class1))
                throw new MorphException("Non-Indexed property name: " + s + " index: " + i);
        }
        obj = dynaValues.get(s);
        if(!obj.getClass().isArray()) goto _L2; else goto _L1
_L1:
        obj = Array.get(obj, i);
_L4:
        return obj;
_L2:
        if(obj instanceof List)
            obj = ((List)obj).get(i);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public Object get(String s, String s1)
    {
        Class class1 = getDynaProperty(s).getType();
        Class class2 = class$0;
        if(class2 == null)
        {
            Class class3;
            try
            {
                class3 = Class.forName("java.util.Map");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class2 = class3;
            class$0 = class2;
        }
        if(!class2.isAssignableFrom(class1))
            throw new MorphException("Non-Mapped property name: " + s + " key: " + s1);
        Object obj = dynaValues.get(s);
        if(obj == null)
        {
            obj = new HashMap();
            dynaValues.put(s, obj);
        }
        return ((Map)obj).get(s1);
    }

    public DynaClass getDynaClass()
    {
        return dynaClass;
    }

    protected DynaProperty getDynaProperty(String s)
    {
        DynaProperty dynaproperty = getDynaClass().getDynaProperty(s);
        if(dynaproperty == null)
            throw new MorphException("Unspecified property for " + s);
        else
            return dynaproperty;
    }

    public MorpherRegistry getMorpherRegistry()
    {
        return morpherRegistry;
    }

    public int hashCode()
    {
        HashCodeBuilder hashcodebuilder = (new HashCodeBuilder()).append(dynaClass);
        DynaProperty adynaproperty[] = dynaClass.getDynaProperties();
        int i = 0;
        do
        {
            if(i >= adynaproperty.length)
                return hashcodebuilder.toHashCode();
            DynaProperty dynaproperty = adynaproperty[i];
            hashcodebuilder.append(dynaValues.get(dynaproperty.getName()));
            i++;
        } while(true);
    }

    protected boolean isDynaAssignable(Class class1, Class class2)
    {
        boolean flag;
        boolean flag1;
        flag = true;
        flag1 = class1.isAssignableFrom(class2);
        if(!flag1) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
label0:
        {
            if(class1 == Boolean.TYPE)
            {
                Class class27 = class$2;
                if(class27 == null)
                {
                    Class class3;
                    Class class4;
                    Class class5;
                    Class class6;
                    Class class7;
                    Class class8;
                    Class class9;
                    Class class10;
                    Class class11;
                    Class class12;
                    Class class13;
                    Class class14;
                    Class class15;
                    Class class16;
                    Class class17;
                    Class class18;
                    Class class19;
                    Class class20;
                    Class class21;
                    Class class22;
                    Class class23;
                    Class class24;
                    Class class25;
                    Class class26;
                    Class class28;
                    try
                    {
                        class28 = Class.forName("java.lang.Boolean");
                    }
                    catch(ClassNotFoundException classnotfoundexception12)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception12.getMessage());
                    }
                    class27 = class28;
                    class$2 = class27;
                }
                if(class2 == class27)
                    flag1 = flag;
            }
            if(class1 == Byte.TYPE)
            {
                class25 = class$3;
                if(class25 == null)
                {
                    try
                    {
                        class26 = Class.forName("java.lang.Byte");
                    }
                    catch(ClassNotFoundException classnotfoundexception11)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception11.getMessage());
                    }
                    class25 = class26;
                    class$3 = class25;
                }
                if(class2 == class25)
                    flag1 = flag;
            }
            if(class1 == Character.TYPE)
            {
                class23 = class$4;
                if(class23 == null)
                {
                    try
                    {
                        class24 = Class.forName("java.lang.Character");
                    }
                    catch(ClassNotFoundException classnotfoundexception10)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception10.getMessage());
                    }
                    class23 = class24;
                    class$4 = class23;
                }
                if(class2 == class23)
                    flag1 = flag;
            }
            if(class1 == Short.TYPE)
            {
                class21 = class$5;
                if(class21 == null)
                {
                    try
                    {
                        class22 = Class.forName("java.lang.Short");
                    }
                    catch(ClassNotFoundException classnotfoundexception9)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception9.getMessage());
                    }
                    class21 = class22;
                    class$5 = class21;
                }
                if(class2 == class21)
                    flag1 = flag;
            }
            if(class1 == Integer.TYPE)
            {
                class19 = class$6;
                if(class19 == null)
                {
                    try
                    {
                        class20 = Class.forName("java.lang.Integer");
                    }
                    catch(ClassNotFoundException classnotfoundexception8)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception8.getMessage());
                    }
                    class19 = class20;
                    class$6 = class19;
                }
                if(class2 == class19)
                    flag1 = flag;
            }
            if(class1 == Long.TYPE)
            {
                class17 = class$7;
                if(class17 == null)
                {
                    try
                    {
                        class18 = Class.forName("java.lang.Long");
                    }
                    catch(ClassNotFoundException classnotfoundexception7)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception7.getMessage());
                    }
                    class17 = class18;
                    class$7 = class17;
                }
                if(class2 == class17)
                    flag1 = flag;
            }
            if(class1 == Float.TYPE)
            {
                class15 = class$8;
                if(class15 == null)
                {
                    try
                    {
                        class16 = Class.forName("java.lang.Float");
                    }
                    catch(ClassNotFoundException classnotfoundexception6)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception6.getMessage());
                    }
                    class15 = class16;
                    class$8 = class15;
                }
                if(class2 == class15)
                    flag1 = flag;
            }
            if(class1 == Double.TYPE)
            {
                class13 = class$9;
                if(class13 == null)
                {
                    try
                    {
                        class14 = Class.forName("java.lang.Double");
                    }
                    catch(ClassNotFoundException classnotfoundexception5)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception5.getMessage());
                    }
                    class13 = class14;
                    class$9 = class13;
                }
                if(class2 == class13)
                    flag1 = flag;
            }
            if(class2 != Double.TYPE)
            {
                class11 = class$9;
                if(class11 == null)
                {
                    try
                    {
                        class12 = Class.forName("java.lang.Double");
                    }
                    catch(ClassNotFoundException classnotfoundexception4)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception4.getMessage());
                    }
                    class11 = class12;
                    class$9 = class11;
                }
                if(!class11.isAssignableFrom(class2))
                    break label0;
            }
            if(isByte(class1) || isShort(class1) || isInteger(class1) || isLong(class1) || isFloat(class1))
                flag1 = flag;
        }
label1:
        {
            if(class2 != Float.TYPE)
            {
                class9 = class$8;
                if(class9 == null)
                {
                    try
                    {
                        class10 = Class.forName("java.lang.Float");
                    }
                    catch(ClassNotFoundException classnotfoundexception3)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception3.getMessage());
                    }
                    class9 = class10;
                    class$8 = class9;
                }
                if(!class9.isAssignableFrom(class2))
                    break label1;
            }
            if(isByte(class1) || isShort(class1) || isInteger(class1) || isLong(class1))
                flag1 = flag;
        }
label2:
        {
            if(class2 != Long.TYPE)
            {
                class7 = class$7;
                if(class7 == null)
                {
                    try
                    {
                        class8 = Class.forName("java.lang.Long");
                    }
                    catch(ClassNotFoundException classnotfoundexception2)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception2.getMessage());
                    }
                    class7 = class8;
                    class$7 = class7;
                }
                if(!class7.isAssignableFrom(class2))
                    break label2;
            }
            if(isByte(class1) || isShort(class1) || isInteger(class1))
                flag1 = flag;
        }
label3:
        {
            if(class2 != Integer.TYPE)
            {
                class5 = class$6;
                if(class5 == null)
                {
                    try
                    {
                        class6 = Class.forName("java.lang.Integer");
                    }
                    catch(ClassNotFoundException classnotfoundexception1)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception1.getMessage());
                    }
                    class5 = class6;
                    class$6 = class5;
                }
                if(!class5.isAssignableFrom(class2))
                    break label3;
            }
            if(isByte(class1) || isShort(class1))
                flag1 = flag;
        }
label4:
        {
            if(class2 != Short.TYPE)
            {
                class3 = class$5;
                if(class3 == null)
                {
                    try
                    {
                        class4 = Class.forName("java.lang.Short");
                    }
                    catch(ClassNotFoundException classnotfoundexception)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception.getMessage());
                    }
                    class3 = class4;
                    class$5 = class3;
                }
                if(!class3.isAssignableFrom(class2))
                    break label4;
            }
            if(isByte(class1))
                flag1 = flag;
        }
        flag = flag1;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void remove(String s, String s1)
    {
        Class class1 = getDynaProperty(s).getType();
        Class class2 = class$0;
        if(class2 == null)
        {
            Class class3;
            try
            {
                class3 = Class.forName("java.util.Map");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class2 = class3;
            class$0 = class2;
        }
        if(!class2.isAssignableFrom(class1))
            throw new MorphException("Non-Mapped property name: " + s + " key: " + s1);
        Object obj = dynaValues.get(s);
        if(obj == null)
        {
            obj = new HashMap();
            dynaValues.put(s, obj);
        }
        ((Map)obj).remove(s1);
    }

    public void set(String s, int i, Object obj)
    {
label0:
        {
            {
                Class class1 = getDynaProperty(s).getType();
                if(!class1.isArray())
                {
                    Class class4 = class$1;
                    if(class4 == null)
                    {
                        Class class5;
                        try
                        {
                            class5 = Class.forName("java.util.List");
                        }
                        catch(ClassNotFoundException classnotfoundexception1)
                        {
                            throw new NoClassDefFoundError(classnotfoundexception1.getMessage());
                        }
                        class4 = class5;
                        class$1 = class4;
                    }
                    if(!class4.isAssignableFrom(class1))
                        throw new MorphException("Non-Indexed property name: " + s + " index: " + i);
                }
                Object obj1 = dynaValues.get(s);
                Object obj2;
                List list;
                int j;
                Object obj3;
                if(obj1 == null)
                {
                    Class class2 = class$1;
                    Object obj5;
                    if(class2 == null)
                    {
                        Object obj4;
                        Class class3;
                        try
                        {
                            class3 = Class.forName("java.util.List");
                        }
                        catch(ClassNotFoundException classnotfoundexception)
                        {
                            throw new NoClassDefFoundError(classnotfoundexception.getMessage());
                        }
                        class2 = class3;
                        class$1 = class2;
                    }
                    if(class2.isAssignableFrom(class1))
                        obj5 = new ArrayList();
                    else
                        obj5 = Array.newInstance(class1.getComponentType(), i + 1);
                    dynaValues.put(s, obj5);
                    obj2 = obj5;
                } else
                {
                    obj2 = obj1;
                }
                if(!obj2.getClass().isArray())
                    break label0;
                if(i >= Array.getLength(obj2))
                {
                    obj4 = Array.newInstance(class1.getComponentType(), i + 1);
                    System.arraycopy(obj2, 0, obj4, 0, Array.getLength(obj2));
                    obj3 = obj4;
                    dynaValues.put(s, obj4);
                } else
                {
                    obj3 = obj2;
                }
                Array.set(obj3, i, obj);
            }
            return;
        }
        if(!(obj2 instanceof List))
            break MISSING_BLOCK_LABEL_252;
        list = (List)obj2;
        if(i < list.size()) goto _L2; else goto _L1
_L1:
        j = list.size();
_L4:
        if(j <= i + 1)
            break MISSING_BLOCK_LABEL_343;
_L2:
        ((List)obj2).set(i, obj);
        break MISSING_BLOCK_LABEL_252;
        list.add(null);
        j++;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void set(String s, Object obj)
    {
        DynaProperty dynaproperty = getDynaProperty(s);
        if(obj == null || !isDynaAssignable(dynaproperty.getType(), obj.getClass()))
            obj = morpherRegistry.morph(dynaproperty.getType(), obj);
        dynaValues.put(s, obj);
    }

    public void set(String s, String s1, Object obj)
    {
        Class class1 = getDynaProperty(s).getType();
        Class class2 = class$0;
        if(class2 == null)
        {
            Class class3;
            try
            {
                class3 = Class.forName("java.util.Map");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class2 = class3;
            class$0 = class2;
        }
        if(!class2.isAssignableFrom(class1))
            throw new MorphException("Non-Mapped property name: " + s + " key: " + s1);
        Object obj1 = dynaValues.get(s);
        if(obj1 == null)
        {
            obj1 = new HashMap();
            dynaValues.put(s, obj1);
        }
        ((Map)obj1).put(s1, obj);
    }

    /**
     * @deprecated Method setDynaBeanClass is deprecated
     */

    public void setDynaBeanClass(MorphDynaClass morphdynaclass)
    {
        this;
        JVM INSTR monitorenter ;
        if(dynaClass == null)
            dynaClass = morphdynaclass;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setMorpherRegistry(MorpherRegistry morpherregistry)
    {
        if(morpherregistry == null)
        {
            morpherRegistry = new MorpherRegistry();
            MorphUtils.registerStandardMorphers(morpherRegistry);
        } else
        {
            morpherRegistry = morpherregistry;
        }
    }

    public String toString()
    {
        return (new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)).append(dynaValues).toString();
    }

    static Class class$0;
    static Class class$1;
    static Class class$2;
    static Class class$3;
    static Class class$4;
    static Class class$5;
    static Class class$6;
    static Class class$7;
    static Class class$8;
    static Class class$9;
    private static final long serialVersionUID = 0xf798a9db9a1e8cd8L;
    private MorphDynaClass dynaClass;
    private Map dynaValues;
    private MorpherRegistry morpherRegistry;
}
