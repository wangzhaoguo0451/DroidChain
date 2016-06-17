// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.primitive;

import net.sf.ezmorph.MorphException;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.primitive:
//            AbstractIntegerMorpher, AbstractPrimitiveMorpher

public final class ShortMorpher extends AbstractIntegerMorpher
{

    public ShortMorpher()
    {
    }

    public ShortMorpher(short word0)
    {
        super(true);
        defaultValue = word0;
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
        if(obj != null && (obj instanceof ShortMorpher))
        {
            ShortMorpher shortmorpher = (ShortMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && shortmorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), shortmorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !shortmorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public short getDefaultValue()
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

    public short morph(Object obj)
    {
        if(obj != null) goto _L2; else goto _L1
_L1:
        if(!isUseDefault()) goto _L4; else goto _L3
_L3:
        short word0 = defaultValue;
_L6:
        return word0;
_L4:
        throw new MorphException("value is null");
_L2:
        if(obj instanceof Number)
        {
            word0 = ((Number)obj).shortValue();
            continue; /* Loop/switch isn't completed */
        }
        short word1 = Short.parseShort(getIntegerValue(obj));
        word0 = word1;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        if(isUseDefault())
            word0 = defaultValue;
        else
            throw new MorphException(numberformatexception);
        if(true) goto _L6; else goto _L5
_L5:
    }

    public Class morphsTo()
    {
        return Short.TYPE;
    }

    private short defaultValue;
}
