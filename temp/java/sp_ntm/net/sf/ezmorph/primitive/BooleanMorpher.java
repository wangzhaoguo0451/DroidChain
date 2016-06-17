// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.primitive;

import net.sf.ezmorph.MorphException;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.primitive:
//            AbstractPrimitiveMorpher

public final class BooleanMorpher extends AbstractPrimitiveMorpher
{

    public BooleanMorpher()
    {
    }

    public BooleanMorpher(boolean flag)
    {
        super(true);
        defaultValue = flag;
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
        if(obj != null && (obj instanceof BooleanMorpher))
        {
            BooleanMorpher booleanmorpher = (BooleanMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && booleanmorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), booleanmorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !booleanmorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public boolean getDefaultValue()
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

    public boolean morph(Object obj)
    {
        if(obj != null) goto _L2; else goto _L1
_L1:
        if(!isUseDefault()) goto _L4; else goto _L3
_L3:
        boolean flag = defaultValue;
_L6:
        return flag;
_L4:
        throw new MorphException("value is null");
_L2:
        if(obj instanceof Boolean)
            flag = ((Boolean)obj).booleanValue();
        else
        if(obj instanceof Number)
        {
            if((obj instanceof Double) && (Double.isInfinite(((Number)obj).doubleValue()) || Double.isNaN(((Number)obj).doubleValue())))
                flag = true;
            else
            if((obj instanceof Float) && (Float.isInfinite(((Number)obj).floatValue()) || Float.isNaN(((Number)obj).floatValue())))
                flag = true;
            else
            if(((Number)obj).longValue() != 0L)
                flag = true;
            else
                flag = false;
        } else
        {
            String s = String.valueOf(obj);
            if(s.equalsIgnoreCase("true") || s.equalsIgnoreCase("yes") || s.equalsIgnoreCase("on"))
                flag = true;
            else
            if(s.equalsIgnoreCase("false") || s.equalsIgnoreCase("no") || s.equalsIgnoreCase("off"))
                flag = false;
            else
            if(isUseDefault())
                flag = defaultValue;
            else
                throw new MorphException("Can't morph value: " + obj);
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public Class morphsTo()
    {
        return Boolean.TYPE;
    }

    private boolean defaultValue;
}
