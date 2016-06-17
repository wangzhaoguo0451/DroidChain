// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.object;

import java.util.*;
import net.sf.ezmorph.*;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.object:
//            NumberMorpher

public class SwitchingMorpher
    implements ObjectMorpher
{

    public SwitchingMorpher(Map map, MorpherRegistry morpherregistry)
    {
        classMap = new HashMap();
        morpherRegistry = morpherregistry;
        if(map == null || map.isEmpty())
        {
            throw new MorphException("Must specify at least one mapping");
        } else
        {
            classMap.putAll(map);
            return;
        }
    }

    public boolean equals(Object obj)
    {
        boolean flag = true;
        if(this != obj) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        if(obj == null)
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        if(!(obj instanceof NumberMorpher))
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        SwitchingMorpher switchingmorpher = (SwitchingMorpher)obj;
        if(classMap.size() != switchingmorpher.classMap.size())
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        Iterator iterator = classMap.entrySet().iterator();
        java.util.Map.Entry entry;
        do
        {
            if(iterator.hasNext())
            {
                entry = (java.util.Map.Entry)iterator.next();
                if(switchingmorpher.classMap.containsKey(entry.getKey()))
                    continue;
                flag = false;
            }
            continue; /* Loop/switch isn't completed */
        } while(entry.getValue().equals(switchingmorpher.classMap.get(entry.getKey())));
        flag = false;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public int hashCode()
    {
        HashCodeBuilder hashcodebuilder = new HashCodeBuilder();
        Iterator iterator = classMap.entrySet().iterator();
        do
        {
            if(!iterator.hasNext())
                return hashcodebuilder.toHashCode();
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            hashcodebuilder.append(entry.getKey());
            hashcodebuilder.append(entry.getValue());
        } while(true);
    }

    public Object morph(Object obj)
    {
        Object obj1;
        if(obj == null)
        {
            obj1 = null;
        } else
        {
            Class class1 = (Class)classMap.get(obj.getClass());
            obj1 = morpherRegistry.morph(class1, obj);
        }
        return obj1;
    }

    public Class morphsTo()
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("java.lang.Object");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class1 = class2;
            class$0 = class1;
        }
        return class1;
    }

    public boolean supports(Class class1)
    {
        return true;
    }

    static Class class$0;
    private Map classMap;
    private MorpherRegistry morpherRegistry;
}
