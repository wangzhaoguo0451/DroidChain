// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.bean;

import java.io.Serializable;
import java.util.*;
import net.sf.ezmorph.*;
import org.apache.commons.beanutils.*;
import org.apache.commons.lang.builder.*;

// Referenced classes of package net.sf.ezmorph.bean:
//            MorphDynaBean

public final class MorphDynaClass
    implements DynaClass, Serializable
{

    public MorphDynaClass(String s, Class class1, Map map)
    {
        this(s, class1, map, false);
    }

    public MorphDynaClass(String s, Class class1, Map map, boolean flag)
    {
        properties = new HashMap();
        if(s == null)
            s = "MorphDynaClass";
        if(class1 == null)
        {
            class1 = class$0;
            if(class1 == null)
            {
                Class class2;
                Class class3;
                Class class4;
                try
                {
                    class4 = Class.forName("net.sf.ezmorph.bean.MorphDynaBean");
                }
                catch(ClassNotFoundException classnotfoundexception1)
                {
                    throw new NoClassDefFoundError(classnotfoundexception1.getMessage());
                }
                class1 = class4;
                class$0 = class1;
            }
        }
        class2 = class$0;
        if(class2 == null)
        {
            try
            {
                class3 = Class.forName("net.sf.ezmorph.bean.MorphDynaBean");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class2 = class3;
            class$0 = class2;
        }
        if(!class2.isAssignableFrom(class1))
            throw new MorphException("MorphDynaBean is not assignable from " + class1.getName());
        if(map == null || map.isEmpty())
        {
            if(flag)
                throw new MorphException("Attributes map is null or empty.");
            map = new HashMap();
        }
        name = s;
        type = class1;
        attributes = map;
        process();
    }

    public MorphDynaClass(Map map)
    {
        this(null, null, map);
    }

    public MorphDynaClass(Map map, boolean flag)
    {
        this(null, null, map, flag);
    }

    private void process()
    {
        beanClass = type;
        Iterator iterator;
        int i;
        iterator = attributes.entrySet().iterator();
        dynaProperties = new DynaProperty[attributes.size()];
        i = 0;
_L1:
        boolean flag = iterator.hasNext();
        String s;
        Object obj;
        Class class2;
        if(!flag)
        {
            Arrays.sort(dynaProperties, 0, dynaProperties.length, dynaPropertyComparator);
            return;
        }
        try
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            s = (String)entry.getKey();
            obj = entry.getValue();
            if(!(obj instanceof String))
                break MISSING_BLOCK_LABEL_213;
            class2 = Class.forName((String)obj);
            if(class2.isArray() && class2.getComponentType().isArray())
                throw new MorphException("Multidimensional arrays are not supported");
        }
        catch(ClassNotFoundException classnotfoundexception)
        {
            throw new MorphException(classnotfoundexception);
        }
        DynaProperty dynaproperty = new DynaProperty(s, class2);
_L2:
        properties.put(dynaproperty.getName(), dynaproperty);
        DynaProperty adynaproperty[] = dynaProperties;
        int j = i + 1;
        adynaproperty[i] = dynaproperty;
        i = j;
          goto _L1
        if(obj instanceof Class)
        {
            Class class1 = (Class)obj;
            if(class1.isArray() && class1.getComponentType().isArray())
                throw new MorphException("Multidimensional arrays are not supported");
            dynaproperty = new DynaProperty(s, class1);
        } else
        {
            throw new MorphException("Type must be String or Class");
        }
          goto _L2
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
        MorphDynaClass morphdynaclass;
        EqualsBuilder equalsbuilder;
        int i;
        if(obj == null || !(obj instanceof MorphDynaClass))
            continue; /* Loop/switch isn't completed */
        morphdynaclass = (MorphDynaClass)obj;
        equalsbuilder = (new EqualsBuilder()).append(name, morphdynaclass.name).append(type, morphdynaclass.type);
        if(dynaProperties.length != morphdynaclass.dynaProperties.length)
            continue; /* Loop/switch isn't completed */
        i = 0;
_L5:
label0:
        {
            if(i < dynaProperties.length)
                break label0;
            flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
        DynaProperty dynaproperty = dynaProperties[i];
        DynaProperty dynaproperty1 = morphdynaclass.dynaProperties[i];
        equalsbuilder.append(dynaproperty.getName(), dynaproperty1.getName());
        equalsbuilder.append(dynaproperty.getType(), dynaproperty1.getType());
        i++;
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    protected Class getBeanClass()
    {
        if(beanClass == null)
            process();
        return beanClass;
    }

    public DynaProperty[] getDynaProperties()
    {
        return dynaProperties;
    }

    public DynaProperty getDynaProperty(String s)
    {
        if(s == null)
            throw new MorphException("Unnespecified bean property name");
        else
            return (DynaProperty)properties.get(s);
    }

    public String getName()
    {
        return name;
    }

    public int hashCode()
    {
        HashCodeBuilder hashcodebuilder = (new HashCodeBuilder()).append(name).append(type);
        int i = 0;
        do
        {
            if(i >= dynaProperties.length)
                return hashcodebuilder.toHashCode();
            hashcodebuilder.append(dynaProperties[i].getName());
            hashcodebuilder.append(dynaProperties[i].getType());
            i++;
        } while(true);
    }

    public DynaBean newInstance()
        throws IllegalAccessException, InstantiationException
    {
        return newInstance(null);
    }

    public DynaBean newInstance(MorpherRegistry morpherregistry)
        throws IllegalAccessException, InstantiationException
    {
        if(morpherregistry == null)
        {
            morpherregistry = new MorpherRegistry();
            MorphUtils.registerStandardMorphers(morpherregistry);
        }
        MorphDynaBean morphdynabean = (MorphDynaBean)getBeanClass().newInstance();
        morphdynabean.setDynaBeanClass(this);
        morphdynabean.setMorpherRegistry(morpherregistry);
        Iterator iterator = attributes.keySet().iterator();
        do
        {
            if(!iterator.hasNext())
                return morphdynabean;
            morphdynabean.set((String)iterator.next(), null);
        } while(true);
    }

    public String toString()
    {
        return (new ToStringBuilder(this)).append("name", name).append("type", type).append("attributes", attributes).toString();
    }

    static Class class$0;
    private static final Comparator dynaPropertyComparator = new _cls1();
    private static final long serialVersionUID = 0xf77d6d19c1b7a478L;
    private Map attributes;
    private Class beanClass;
    private DynaProperty dynaProperties[];
    private String name;
    private Map properties;
    private Class type;


    private class _cls1
        implements Comparator
    {

        public int compare(Object obj, Object obj1)
        {
            int i;
            if((obj instanceof DynaProperty) && (obj1 instanceof DynaProperty))
            {
                DynaProperty dynaproperty = (DynaProperty)obj;
                DynaProperty dynaproperty1 = (DynaProperty)obj1;
                i = dynaproperty.getName().compareTo(dynaproperty1.getName());
            } else
            {
                i = -1;
            }
            return i;
        }

        _cls1()
        {
        }
    }

}
