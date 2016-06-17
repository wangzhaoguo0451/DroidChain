// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.primitive;

import net.sf.ezmorph.MorphException;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.primitive:
//            AbstractIntegerMorpher, AbstractPrimitiveMorpher

public final class IntMorpher extends AbstractIntegerMorpher
{

    public IntMorpher()
    {
    }

    public IntMorpher(int i)
    {
        super(true);
        defaultValue = i;
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
        if(obj != null && (obj instanceof IntMorpher))
        {
            IntMorpher intmorpher = (IntMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && intmorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), intmorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !intmorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public int getDefaultValue()
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

    public int morph(Object obj)
    {
        if(obj != null) goto _L2; else goto _L1
_L1:
        if(!isUseDefault()) goto _L4; else goto _L3
_L3:
        int i = defaultValue;
_L6:
        return i;
_L4:
        throw new MorphException("value is null");
_L2:
        if(obj instanceof Number)
        {
            i = ((Number)obj).intValue();
            continue; /* Loop/switch isn't completed */
        }
        int j = Integer.parseInt(getIntegerValue(obj));
        i = j;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        if(isUseDefault())
            i = defaultValue;
        else
            throw new MorphException(numberformatexception);
        if(true) goto _L6; else goto _L5
_L5:
    }

    public Class morphsTo()
    {
        return Integer.TYPE;
    }

    private int defaultValue;
}
