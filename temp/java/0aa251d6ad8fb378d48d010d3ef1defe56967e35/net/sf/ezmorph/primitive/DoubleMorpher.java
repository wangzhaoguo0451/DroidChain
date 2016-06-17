// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.primitive;

import net.sf.ezmorph.MorphException;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.primitive:
//            AbstractDecimalMorpher, AbstractPrimitiveMorpher

public final class DoubleMorpher extends AbstractDecimalMorpher
{

    public DoubleMorpher()
    {
    }

    public DoubleMorpher(double d)
    {
        super(true);
        defaultValue = d;
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
        if(obj != null && (obj instanceof DoubleMorpher))
        {
            DoubleMorpher doublemorpher = (DoubleMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && doublemorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), doublemorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !doublemorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public double getDefaultValue()
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

    public double morph(Object obj)
    {
        if(obj != null) goto _L2; else goto _L1
_L1:
        if(!isUseDefault()) goto _L4; else goto _L3
_L3:
        double d = defaultValue;
_L6:
        return d;
_L4:
        throw new MorphException("value is null");
_L2:
        if(obj instanceof Number)
        {
            d = ((Number)obj).doubleValue();
            continue; /* Loop/switch isn't completed */
        }
        double d1 = Double.parseDouble(String.valueOf(obj));
        d = d1;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        if(isUseDefault())
            d = defaultValue;
        else
            throw new MorphException(numberformatexception);
        if(true) goto _L6; else goto _L5
_L5:
    }

    public Class morphsTo()
    {
        return Double.TYPE;
    }

    private double defaultValue;
}
