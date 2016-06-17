// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.primitive;

import net.sf.ezmorph.MorphException;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.primitive:
//            AbstractPrimitiveMorpher

public final class CharMorpher extends AbstractPrimitiveMorpher
{

    public CharMorpher()
    {
    }

    public CharMorpher(char c)
    {
        super(true);
        defaultValue = c;
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
        if(obj != null && (obj instanceof CharMorpher))
        {
            CharMorpher charmorpher = (CharMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && charmorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), charmorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !charmorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public char getDefaultValue()
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

    public char morph(Object obj)
    {
        if(obj != null) goto _L2; else goto _L1
_L1:
        if(!isUseDefault()) goto _L4; else goto _L3
_L3:
        char c = defaultValue;
_L6:
        return c;
_L4:
        throw new MorphException("value is null");
_L2:
        if(obj instanceof Character)
        {
            c = ((Character)obj).charValue();
        } else
        {
            String s = String.valueOf(obj);
            if(s.length() > 0)
                c = s.charAt(0);
            else
            if(isUseDefault())
                c = defaultValue;
            else
                throw new MorphException("Can't morph value: " + obj);
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public Class morphsTo()
    {
        return Character.TYPE;
    }

    private char defaultValue;
}
