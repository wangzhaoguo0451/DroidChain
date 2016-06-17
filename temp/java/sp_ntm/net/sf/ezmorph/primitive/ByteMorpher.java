// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.primitive;

import net.sf.ezmorph.MorphException;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.primitive:
//            AbstractIntegerMorpher, AbstractPrimitiveMorpher

public final class ByteMorpher extends AbstractIntegerMorpher
{

    public ByteMorpher()
    {
    }

    public ByteMorpher(byte byte0)
    {
        super(true);
        defaultValue = byte0;
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
        if(obj != null && (obj instanceof ByteMorpher))
        {
            ByteMorpher bytemorpher = (ByteMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && bytemorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), bytemorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !bytemorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public byte getDefaultValue()
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

    public byte morph(Object obj)
    {
        if(obj != null) goto _L2; else goto _L1
_L1:
        if(!isUseDefault()) goto _L4; else goto _L3
_L3:
        byte byte0 = defaultValue;
_L6:
        return byte0;
_L4:
        throw new MorphException("value is null");
_L2:
        if(obj instanceof Number)
        {
            byte0 = ((Number)obj).byteValue();
            continue; /* Loop/switch isn't completed */
        }
        byte byte1 = Byte.parseByte(getIntegerValue(obj));
        byte0 = byte1;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        if(isUseDefault())
            byte0 = defaultValue;
        else
            throw new MorphException(numberformatexception);
        if(true) goto _L6; else goto _L5
_L5:
    }

    public Class morphsTo()
    {
        return Byte.TYPE;
    }

    private byte defaultValue;
}
