// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.object;

import net.sf.ezmorph.MorphException;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.object:
//            AbstractObjectMorpher

public final class BooleanObjectMorpher extends AbstractObjectMorpher
{

    public BooleanObjectMorpher()
    {
    }

    public BooleanObjectMorpher(Boolean boolean1)
    {
        super(true);
        defaultValue = boolean1;
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
        if(obj != null && (obj instanceof BooleanObjectMorpher))
        {
            BooleanObjectMorpher booleanobjectmorpher = (BooleanObjectMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && booleanobjectmorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), booleanobjectmorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !booleanobjectmorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public Boolean getDefaultValue()
    {
        return defaultValue;
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
        if(obj != null) goto _L2; else goto _L1
_L1:
        if(!isUseDefault()) goto _L4; else goto _L3
_L3:
        Boolean boolean1 = defaultValue;
_L6:
        return boolean1;
_L4:
        throw new MorphException("value is null");
_L2:
        if(obj instanceof Boolean)
        {
            boolean1 = (Boolean)obj;
        } else
        {
            String s = String.valueOf(obj);
            if(s.equalsIgnoreCase("true") || s.equalsIgnoreCase("yes") || s.equalsIgnoreCase("on"))
                boolean1 = Boolean.TRUE;
            else
            if(s.equalsIgnoreCase("false") || s.equalsIgnoreCase("no") || s.equalsIgnoreCase("off"))
                boolean1 = Boolean.FALSE;
            else
            if(isUseDefault())
                boolean1 = defaultValue;
            else
                throw new MorphException("Can't morph value: " + obj);
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public Class morphsTo()
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("java.lang.Boolean");
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

    static Class class$0;
    private Boolean defaultValue;
}
