// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.object;

import java.util.*;
import net.sf.ezmorph.MorphException;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.object:
//            AbstractObjectMorpher

public class MapToDateMorpher extends AbstractObjectMorpher
{

    public MapToDateMorpher()
    {
    }

    public MapToDateMorpher(Date date)
    {
        super(true);
        defaultValue = date;
    }

    private int getValue(Map map, String s)
    {
        Object obj = map.get(s);
        int i;
        if(obj == null || !(obj instanceof Number))
            i = 0;
        else
            i = ((Number)obj).intValue();
        return i;
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
        if(obj != null && (obj instanceof MapToDateMorpher))
        {
            MapToDateMorpher maptodatemorpher = (MapToDateMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && maptodatemorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), maptodatemorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !maptodatemorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public Date getDefaultValue()
    {
        return (Date)defaultValue.clone();
    }

    public int hashCode()
    {
        HashCodeBuilder hashcodebuilder = new HashCodeBuilder();
        if(isUseDefault())
            hashcodebuilder.append(getDefaultValue());
        return hashcodebuilder.toHashCode();
    }

    public Object morph(Object obj)
    {
        Date date;
        if(obj == null)
        {
            date = null;
        } else
        {
            Class class1 = class$0;
            if(class1 == null)
            {
                Class class2;
                try
                {
                    class2 = Class.forName("java.util.Date");
                }
                catch(ClassNotFoundException classnotfoundexception)
                {
                    throw new NoClassDefFoundError(classnotfoundexception.getMessage());
                }
                class1 = class2;
                class$0 = class1;
            }
            if(class1.isAssignableFrom(obj.getClass()))
            {
                date = (Date)obj;
            } else
            {
                if(!supports(obj.getClass()))
                    throw new MorphException(obj.getClass() + " is not supported");
                Map map = (Map)obj;
                if(map.isEmpty())
                {
                    if(isUseDefault())
                        date = defaultValue;
                    else
                        throw new MorphException("Unable to parse the date " + obj);
                } else
                {
                    Calendar calendar = Calendar.getInstance();
                    calendar.set(1, getValue(map, "year"));
                    calendar.set(2, getValue(map, "month"));
                    calendar.set(5, getValue(map, "day"));
                    calendar.set(11, getValue(map, "hour"));
                    calendar.set(12, getValue(map, "minutes"));
                    calendar.set(13, getValue(map, "seconds"));
                    calendar.set(14, getValue(map, "milliseconds"));
                    date = calendar.getTime();
                }
            }
        }
        return date;
    }

    public Class morphsTo()
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("java.util.Date");
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

    public void setDefaultValue(Date date)
    {
        defaultValue = (Date)date.clone();
    }

    public boolean supports(Class class1)
    {
        if(class1 == null) goto _L2; else goto _L1
_L1:
        boolean flag;
        Class class2 = class$1;
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
            class$1 = class2;
        }
        if(!class2.isAssignableFrom(class1)) goto _L2; else goto _L3
_L3:
        flag = true;
_L5:
        return flag;
_L2:
        flag = false;
        if(true) goto _L5; else goto _L4
_L4:
    }

    static Class class$0;
    static Class class$1;
    private Date defaultValue;
}
