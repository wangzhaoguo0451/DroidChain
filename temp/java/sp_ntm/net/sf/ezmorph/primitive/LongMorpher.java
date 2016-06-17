// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.primitive;

import net.sf.ezmorph.MorphException;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.primitive:
//            AbstractIntegerMorpher, AbstractPrimitiveMorpher

public final class LongMorpher extends AbstractIntegerMorpher
{

    public LongMorpher()
    {
    }

    public LongMorpher(long l)
    {
        super(true);
        defaultValue = l;
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
        if(obj != null && (obj instanceof LongMorpher))
        {
            LongMorpher longmorpher = (LongMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && longmorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), longmorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !longmorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public long getDefaultValue()
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

    public long morph(Object obj)
    {
        if(obj != null) goto _L2; else goto _L1
_L1:
        if(!isUseDefault()) goto _L4; else goto _L3
_L3:
        long l = defaultValue;
_L6:
        return l;
_L4:
        throw new MorphException("value is null");
_L2:
        if(obj instanceof Number)
        {
            l = ((Number)obj).longValue();
            continue; /* Loop/switch isn't completed */
        }
        long l1 = Long.parseLong(getIntegerValue(obj));
        l = l1;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        if(isUseDefault())
            l = defaultValue;
        else
            throw new MorphException(numberformatexception);
        if(true) goto _L6; else goto _L5
_L5:
    }

    public Class morphsTo()
    {
        return Long.TYPE;
    }

    private long defaultValue;
}
