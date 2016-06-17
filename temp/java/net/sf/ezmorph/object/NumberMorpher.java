// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.object;

import java.math.BigDecimal;
import java.math.BigInteger;
import net.sf.ezmorph.MorphException;
import net.sf.ezmorph.primitive.*;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.object:
//            AbstractObjectMorpher, BigDecimalMorpher, BigIntegerMorpher

public final class NumberMorpher extends AbstractObjectMorpher
{

    public NumberMorpher(Class class1)
    {
        super(false);
        if(class1 == null)
            throw new MorphException("Must specify a type");
        if(class1 != Byte.TYPE && class1 != Short.TYPE && class1 != Integer.TYPE && class1 != Long.TYPE && class1 != Float.TYPE && class1 != Double.TYPE)
        {
            Class class2 = class$0;
            if(class2 == null)
            {
                Class class3;
                Class class4;
                Class class5;
                Class class6;
                Class class7;
                Class class8;
                Class class9;
                Class class10;
                Class class11;
                Class class12;
                Class class13;
                Class class14;
                Class class15;
                Class class16;
                Class class17;
                try
                {
                    class17 = Class.forName("java.lang.Byte");
                }
                catch(ClassNotFoundException classnotfoundexception7)
                {
                    throw new NoClassDefFoundError(classnotfoundexception7.getMessage());
                }
                class2 = class17;
                class$0 = class2;
            }
            if(!class2.isAssignableFrom(class1))
            {
                class3 = class$1;
                if(class3 == null)
                {
                    try
                    {
                        class16 = Class.forName("java.lang.Short");
                    }
                    catch(ClassNotFoundException classnotfoundexception6)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception6.getMessage());
                    }
                    class3 = class16;
                    class$1 = class3;
                }
                if(!class3.isAssignableFrom(class1))
                {
                    class4 = class$2;
                    if(class4 == null)
                    {
                        try
                        {
                            class15 = Class.forName("java.lang.Integer");
                        }
                        catch(ClassNotFoundException classnotfoundexception5)
                        {
                            throw new NoClassDefFoundError(classnotfoundexception5.getMessage());
                        }
                        class4 = class15;
                        class$2 = class4;
                    }
                    if(!class4.isAssignableFrom(class1))
                    {
                        class5 = class$3;
                        if(class5 == null)
                        {
                            try
                            {
                                class14 = Class.forName("java.lang.Long");
                            }
                            catch(ClassNotFoundException classnotfoundexception4)
                            {
                                throw new NoClassDefFoundError(classnotfoundexception4.getMessage());
                            }
                            class5 = class14;
                            class$3 = class5;
                        }
                        if(!class5.isAssignableFrom(class1))
                        {
                            class6 = class$4;
                            if(class6 == null)
                            {
                                try
                                {
                                    class13 = Class.forName("java.lang.Float");
                                }
                                catch(ClassNotFoundException classnotfoundexception3)
                                {
                                    throw new NoClassDefFoundError(classnotfoundexception3.getMessage());
                                }
                                class6 = class13;
                                class$4 = class6;
                            }
                            if(!class6.isAssignableFrom(class1))
                            {
                                class7 = class$5;
                                if(class7 == null)
                                {
                                    try
                                    {
                                        class12 = Class.forName("java.lang.Double");
                                    }
                                    catch(ClassNotFoundException classnotfoundexception2)
                                    {
                                        throw new NoClassDefFoundError(classnotfoundexception2.getMessage());
                                    }
                                    class7 = class12;
                                    class$5 = class7;
                                }
                                if(!class7.isAssignableFrom(class1))
                                {
                                    class8 = class$6;
                                    if(class8 == null)
                                    {
                                        try
                                        {
                                            class11 = Class.forName("java.math.BigInteger");
                                        }
                                        catch(ClassNotFoundException classnotfoundexception1)
                                        {
                                            throw new NoClassDefFoundError(classnotfoundexception1.getMessage());
                                        }
                                        class8 = class11;
                                        class$6 = class8;
                                    }
                                    if(!class8.isAssignableFrom(class1))
                                    {
                                        class9 = class$7;
                                        if(class9 == null)
                                        {
                                            try
                                            {
                                                class10 = Class.forName("java.math.BigDecimal");
                                            }
                                            catch(ClassNotFoundException classnotfoundexception)
                                            {
                                                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
                                            }
                                            class9 = class10;
                                            class$7 = class9;
                                        }
                                        if(!class9.isAssignableFrom(class1))
                                            throw new MorphException("Must specify a Number subclass");
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        type = class1;
    }

    public NumberMorpher(Class class1, Number number)
    {
        super(true);
        if(class1 == null)
            throw new MorphException("Must specify a type");
        if(class1 != Byte.TYPE && class1 != Short.TYPE && class1 != Integer.TYPE && class1 != Long.TYPE && class1 != Float.TYPE && class1 != Double.TYPE)
        {
            Class class2 = class$0;
            if(class2 == null)
            {
                Class class3;
                Class class4;
                Class class5;
                Class class6;
                Class class7;
                Class class8;
                Class class9;
                Class class10;
                Class class11;
                Class class12;
                Class class13;
                Class class14;
                Class class15;
                Class class16;
                Class class17;
                try
                {
                    class17 = Class.forName("java.lang.Byte");
                }
                catch(ClassNotFoundException classnotfoundexception7)
                {
                    throw new NoClassDefFoundError(classnotfoundexception7.getMessage());
                }
                class2 = class17;
                class$0 = class2;
            }
            if(!class2.isAssignableFrom(class1))
            {
                class3 = class$1;
                if(class3 == null)
                {
                    try
                    {
                        class16 = Class.forName("java.lang.Short");
                    }
                    catch(ClassNotFoundException classnotfoundexception6)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception6.getMessage());
                    }
                    class3 = class16;
                    class$1 = class3;
                }
                if(!class3.isAssignableFrom(class1))
                {
                    class4 = class$2;
                    if(class4 == null)
                    {
                        try
                        {
                            class15 = Class.forName("java.lang.Integer");
                        }
                        catch(ClassNotFoundException classnotfoundexception5)
                        {
                            throw new NoClassDefFoundError(classnotfoundexception5.getMessage());
                        }
                        class4 = class15;
                        class$2 = class4;
                    }
                    if(!class4.isAssignableFrom(class1))
                    {
                        class5 = class$3;
                        if(class5 == null)
                        {
                            try
                            {
                                class14 = Class.forName("java.lang.Long");
                            }
                            catch(ClassNotFoundException classnotfoundexception4)
                            {
                                throw new NoClassDefFoundError(classnotfoundexception4.getMessage());
                            }
                            class5 = class14;
                            class$3 = class5;
                        }
                        if(!class5.isAssignableFrom(class1))
                        {
                            class6 = class$4;
                            if(class6 == null)
                            {
                                try
                                {
                                    class13 = Class.forName("java.lang.Float");
                                }
                                catch(ClassNotFoundException classnotfoundexception3)
                                {
                                    throw new NoClassDefFoundError(classnotfoundexception3.getMessage());
                                }
                                class6 = class13;
                                class$4 = class6;
                            }
                            if(!class6.isAssignableFrom(class1))
                            {
                                class7 = class$5;
                                if(class7 == null)
                                {
                                    try
                                    {
                                        class12 = Class.forName("java.lang.Double");
                                    }
                                    catch(ClassNotFoundException classnotfoundexception2)
                                    {
                                        throw new NoClassDefFoundError(classnotfoundexception2.getMessage());
                                    }
                                    class7 = class12;
                                    class$5 = class7;
                                }
                                if(!class7.isAssignableFrom(class1))
                                {
                                    class8 = class$6;
                                    if(class8 == null)
                                    {
                                        try
                                        {
                                            class11 = Class.forName("java.math.BigInteger");
                                        }
                                        catch(ClassNotFoundException classnotfoundexception1)
                                        {
                                            throw new NoClassDefFoundError(classnotfoundexception1.getMessage());
                                        }
                                        class8 = class11;
                                        class$6 = class8;
                                    }
                                    if(!class8.isAssignableFrom(class1))
                                    {
                                        class9 = class$7;
                                        if(class9 == null)
                                        {
                                            try
                                            {
                                                class10 = Class.forName("java.math.BigDecimal");
                                            }
                                            catch(ClassNotFoundException classnotfoundexception)
                                            {
                                                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
                                            }
                                            class9 = class10;
                                            class$7 = class9;
                                        }
                                        if(!class9.isAssignableFrom(class1))
                                            throw new MorphException("Must specify a Number subclass");
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if(number != null && !class1.isInstance(number))
        {
            throw new MorphException("Default value must be of type " + class1);
        } else
        {
            type = class1;
            setDefaultValue(number);
            return;
        }
    }

    private boolean isDecimalNumber(Class class1)
    {
        boolean flag;
        Class class2 = class$5;
        if(class2 == null)
        {
            Class class3;
            Class class4;
            Class class5;
            Class class6;
            Class class7;
            try
            {
                class7 = Class.forName("java.lang.Double");
            }
            catch(ClassNotFoundException classnotfoundexception2)
            {
                throw new NoClassDefFoundError(classnotfoundexception2.getMessage());
            }
            class2 = class7;
            class$5 = class2;
        }
        if(class2.isAssignableFrom(class1)) goto _L2; else goto _L1
_L1:
        class3 = class$4;
        if(class3 == null)
        {
            try
            {
                class6 = Class.forName("java.lang.Float");
            }
            catch(ClassNotFoundException classnotfoundexception1)
            {
                throw new NoClassDefFoundError(classnotfoundexception1.getMessage());
            }
            class3 = class6;
            class$4 = class3;
        }
        if(class3.isAssignableFrom(class1) || Double.TYPE == class1 || Float.TYPE == class1) goto _L2; else goto _L3
_L3:
        class4 = class$7;
        if(class4 == null)
        {
            try
            {
                class5 = Class.forName("java.math.BigDecimal");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class4 = class5;
            class$7 = class4;
        }
        if(class4.isAssignableFrom(class1)) goto _L2; else goto _L4
_L4:
        flag = false;
_L6:
        return flag;
_L2:
        flag = true;
        if(true) goto _L6; else goto _L5
_L5:
    }

    private Object morphToBigDecimal(String s)
    {
        Object obj;
        if(isUseDefault())
            obj = (new BigDecimalMorpher((BigDecimal)defaultValue)).morph(s);
        else
            obj = new BigDecimal(s);
        return obj;
    }

    private Object morphToBigInteger(String s)
    {
        Object obj;
        if(isUseDefault())
            obj = (new BigIntegerMorpher((BigInteger)defaultValue)).morph(s);
        else
            obj = new BigInteger(s);
        return obj;
    }

    private Object morphToByte(String s)
    {
        Byte byte1;
        if(isUseDefault())
        {
            if(defaultValue == null)
                byte1 = null;
            else
                byte1 = new Byte((new ByteMorpher(defaultValue.byteValue())).morph(s));
        } else
        {
            byte1 = new Byte((new ByteMorpher()).morph(s));
        }
        return byte1;
    }

    private Object morphToDouble(String s)
    {
        Double double1;
        if(isUseDefault())
        {
            if(defaultValue == null)
                double1 = null;
            else
                double1 = new Double((new DoubleMorpher(defaultValue.doubleValue())).morph(s));
        } else
        {
            double1 = new Double((new DoubleMorpher()).morph(s));
        }
        return double1;
    }

    private Object morphToFloat(String s)
    {
        Float float1;
        if(isUseDefault())
        {
            if(defaultValue == null)
                float1 = null;
            else
                float1 = new Float((new FloatMorpher(defaultValue.floatValue())).morph(s));
        } else
        {
            float1 = new Float((new FloatMorpher()).morph(s));
        }
        return float1;
    }

    private Object morphToInteger(String s)
    {
        Integer integer;
        if(isUseDefault())
        {
            if(defaultValue == null)
                integer = null;
            else
                integer = new Integer((new IntMorpher(defaultValue.intValue())).morph(s));
        } else
        {
            integer = new Integer((new IntMorpher()).morph(s));
        }
        return integer;
    }

    private Object morphToLong(String s)
    {
        Long long1;
        if(isUseDefault())
        {
            if(defaultValue == null)
                long1 = null;
            else
                long1 = new Long((new LongMorpher(defaultValue.longValue())).morph(s));
        } else
        {
            long1 = new Long((new LongMorpher()).morph(s));
        }
        return long1;
    }

    private Object morphToShort(String s)
    {
        Short short1;
        if(isUseDefault())
        {
            if(defaultValue == null)
                short1 = null;
            else
                short1 = new Short((new ShortMorpher(defaultValue.shortValue())).morph(s));
        } else
        {
            short1 = new Short((new ShortMorpher()).morph(s));
        }
        return short1;
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
        if(obj != null && (obj instanceof NumberMorpher))
        {
            NumberMorpher numbermorpher = (NumberMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            equalsbuilder.append(type, numbermorpher.type);
            if(isUseDefault() && numbermorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), numbermorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !numbermorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public Number getDefaultValue()
    {
        return defaultValue;
    }

    public int hashCode()
    {
        HashCodeBuilder hashcodebuilder = new HashCodeBuilder();
        hashcodebuilder.append(type);
        if(isUseDefault())
            hashcodebuilder.append(getDefaultValue());
        return hashcodebuilder.toHashCode();
    }

    public Object morph(Object obj)
    {
        if(obj == null || !type.isAssignableFrom(obj.getClass()))
        {
            String s = String.valueOf(obj).trim();
            if(!type.isPrimitive() && (obj == null || s.length() == 0 || "null".equalsIgnoreCase(s)))
                obj = null;
            else
            if(isDecimalNumber(type))
            {
                Class class9 = class$4;
                if(class9 == null)
                {
                    Class class12;
                    try
                    {
                        class12 = Class.forName("java.lang.Float");
                    }
                    catch(ClassNotFoundException classnotfoundexception5)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception5.getMessage());
                    }
                    class9 = class12;
                    class$4 = class9;
                }
                if(class9.isAssignableFrom(type) || Float.TYPE == type)
                {
                    obj = morphToFloat(s);
                } else
                {
                    Class class10 = class$5;
                    if(class10 == null)
                    {
                        Class class11;
                        try
                        {
                            class11 = Class.forName("java.lang.Double");
                        }
                        catch(ClassNotFoundException classnotfoundexception4)
                        {
                            throw new NoClassDefFoundError(classnotfoundexception4.getMessage());
                        }
                        class10 = class11;
                        class$5 = class10;
                    }
                    if(class10.isAssignableFrom(type) || Double.TYPE == type)
                        obj = morphToDouble(s);
                    else
                        obj = morphToBigDecimal(s);
                }
            } else
            {
                Class class1 = class$0;
                if(class1 == null)
                {
                    Class class8;
                    try
                    {
                        class8 = Class.forName("java.lang.Byte");
                    }
                    catch(ClassNotFoundException classnotfoundexception3)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception3.getMessage());
                    }
                    class1 = class8;
                    class$0 = class1;
                }
                if(class1.isAssignableFrom(type) || Byte.TYPE == type)
                {
                    obj = morphToByte(s);
                } else
                {
                    Class class2 = class$1;
                    if(class2 == null)
                    {
                        Class class7;
                        try
                        {
                            class7 = Class.forName("java.lang.Short");
                        }
                        catch(ClassNotFoundException classnotfoundexception2)
                        {
                            throw new NoClassDefFoundError(classnotfoundexception2.getMessage());
                        }
                        class2 = class7;
                        class$1 = class2;
                    }
                    if(class2.isAssignableFrom(type) || Short.TYPE == type)
                    {
                        obj = morphToShort(s);
                    } else
                    {
                        Class class3 = class$2;
                        if(class3 == null)
                        {
                            Class class6;
                            try
                            {
                                class6 = Class.forName("java.lang.Integer");
                            }
                            catch(ClassNotFoundException classnotfoundexception1)
                            {
                                throw new NoClassDefFoundError(classnotfoundexception1.getMessage());
                            }
                            class3 = class6;
                            class$2 = class3;
                        }
                        if(class3.isAssignableFrom(type) || Integer.TYPE == type)
                        {
                            obj = morphToInteger(s);
                        } else
                        {
                            Class class4 = class$3;
                            if(class4 == null)
                            {
                                Class class5;
                                try
                                {
                                    class5 = Class.forName("java.lang.Long");
                                }
                                catch(ClassNotFoundException classnotfoundexception)
                                {
                                    throw new NoClassDefFoundError(classnotfoundexception.getMessage());
                                }
                                class4 = class5;
                                class$3 = class4;
                            }
                            if(class4.isAssignableFrom(type) || Long.TYPE == type)
                                obj = morphToLong(s);
                            else
                                obj = morphToBigInteger(s);
                        }
                    }
                }
            }
        }
        return obj;
    }

    public Class morphsTo()
    {
        return type;
    }

    public void setDefaultValue(Number number)
    {
        if(number != null && !type.isInstance(number))
        {
            throw new MorphException("Default value must be of type " + type);
        } else
        {
            defaultValue = number;
            return;
        }
    }

    static Class class$0;
    static Class class$1;
    static Class class$2;
    static Class class$3;
    static Class class$4;
    static Class class$5;
    static Class class$6;
    static Class class$7;
    private Number defaultValue;
    private Class type;
}
