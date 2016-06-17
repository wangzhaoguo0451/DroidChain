// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.object;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Locale;
import net.sf.ezmorph.MorphException;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.object:
//            AbstractObjectMorpher

public final class BigIntegerMorpher extends AbstractObjectMorpher
{

    public BigIntegerMorpher()
    {
    }

    public BigIntegerMorpher(BigInteger biginteger)
    {
        super(true);
        defaultValue = biginteger;
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
        if(obj != null && (obj instanceof BigIntegerMorpher))
        {
            BigIntegerMorpher bigintegermorpher = (BigIntegerMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && bigintegermorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), bigintegermorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !bigintegermorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public BigInteger getDefaultValue()
    {
        return defaultValue;
    }

    protected String getIntegerValue(Object obj)
    {
        Locale locale = Locale.getDefault();
        String s;
        Locale.setDefault(Locale.US);
        s = String.valueOf(obj).trim();
        String s1 = s;
        Locale.setDefault(locale);
        int i = s1.indexOf(".");
        if(i != -1)
            s1 = s1.substring(0, i);
        return s1;
        Exception exception;
        exception;
        Locale.setDefault(locale);
        throw exception;
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
        if(!(obj instanceof BigInteger)) goto _L2; else goto _L1
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
                    throw new MorphException("BigInteger can not be infinite or NaN");
            } else
            if(obj instanceof Double)
            {
                Double double1 = (Double)obj;
                if(double1.isInfinite() || double1.isNaN())
                    throw new MorphException("BigInteger can not be infinite or NaN");
            } else
            if(obj instanceof BigDecimal)
            {
                obj = ((BigDecimal)obj).toBigInteger();
                continue; /* Loop/switch isn't completed */
            }
            obj = BigInteger.valueOf(((Number)obj).longValue());
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            String s = getIntegerValue(obj);
            if(s.length() != 0 && !s.equalsIgnoreCase("null"))
            {
                obj = new BigInteger(s);
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
                class2 = Class.forName("java.math.BigInteger");
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
    private BigInteger defaultValue;
}
