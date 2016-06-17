// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.object;

import java.math.BigDecimal;
import java.math.BigInteger;
import net.sf.ezmorph.MorphException;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.object:
//            AbstractObjectMorpher

public final class BigDecimalMorpher extends AbstractObjectMorpher
{

    public BigDecimalMorpher()
    {
    }

    public BigDecimalMorpher(BigDecimal bigdecimal)
    {
        super(true);
        defaultValue = bigdecimal;
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
        if(obj != null && (obj instanceof BigDecimalMorpher))
        {
            BigDecimalMorpher bigdecimalmorpher = (BigDecimalMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && bigdecimalmorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), bigdecimalmorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !bigdecimalmorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public BigDecimal getDefaultValue()
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
        if(!(obj instanceof BigDecimal)) goto _L2; else goto _L1
_L1:
        return obj;
_L2:
        if(obj == null)
        {
            if(isUseDefault())
                obj = defaultValue;
            else
                obj = null;
            continue; /* Loop/switch isn't completed */
        }
        if(obj instanceof Number)
        {
            if(obj instanceof Float)
            {
                Float float1 = (Float)obj;
                if(float1.isInfinite() || float1.isNaN())
                    throw new MorphException("BigDecimal can not be infinite or NaN");
            } else
            if(obj instanceof Double)
            {
                Double double1 = (Double)obj;
                if(double1.isInfinite() || double1.isNaN())
                    throw new MorphException("BigDecimal can not be infinite or NaN");
            } else
            if(obj instanceof BigInteger)
            {
                obj = new BigDecimal((BigInteger)obj);
                continue; /* Loop/switch isn't completed */
            }
            obj = new BigDecimal(((Number)obj).doubleValue());
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            String s = String.valueOf(obj).trim();
            if(s.length() != 0 && !s.equalsIgnoreCase("null"))
            {
                obj = new BigDecimal(s);
                continue; /* Loop/switch isn't completed */
            }
        }
        catch(NumberFormatException numberformatexception)
        {
            if(isUseDefault())
                obj = defaultValue;
            else
                throw new MorphException(numberformatexception);
            continue; /* Loop/switch isn't completed */
        }
        obj = null;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public Class morphsTo()
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("java.math.BigDecimal");
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
    private BigDecimal defaultValue;
}
