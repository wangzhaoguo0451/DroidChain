// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.google.gson:
//            JsonElement, Preconditions, Escaper

public final class JsonPrimitive extends JsonElement
{

    public JsonPrimitive(Boolean boolean1)
    {
        setValue(boolean1);
    }

    public JsonPrimitive(Character character)
    {
        setValue(character);
    }

    public JsonPrimitive(Number number)
    {
        setValue(number);
    }

    JsonPrimitive(Object obj)
    {
        setValue(obj);
    }

    public JsonPrimitive(String s)
    {
        setValue(s);
    }

    private static boolean isFloatingPoint(JsonPrimitive jsonprimitive)
    {
        boolean flag = false;
        if(jsonprimitive.value instanceof Number)
        {
            Number number = (Number)jsonprimitive.value;
            if((number instanceof BigDecimal) || (number instanceof Double) || (number instanceof Float))
                flag = true;
        }
        return flag;
    }

    private static boolean isIntegral(JsonPrimitive jsonprimitive)
    {
        boolean flag = false;
        if(jsonprimitive.value instanceof Number)
        {
            Number number = (Number)jsonprimitive.value;
            if((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte))
                flag = true;
        }
        return flag;
    }

    private static boolean isPrimitiveOrString(Object obj)
    {
        boolean flag = true;
        if(!(obj instanceof String)) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        Class class1 = obj.getClass();
        Class aclass[] = PRIMITIVE_TYPES;
        int i = aclass.length;
        for(int j = 0; j < i; j++)
            if(aclass[j].isAssignableFrom(class1))
                continue; /* Loop/switch isn't completed */

        flag = false;
        if(true) goto _L1; else goto _L3
_L3:
    }

    static Number stringToNumber(String s)
    {
        Object obj;
        Long long1;
        long l = Long.parseLong(s);
        if(l >= 0xffffffff80000000L && l <= 0x7fffffffL)
        {
            obj = Integer.valueOf((int)l);
            break MISSING_BLOCK_LABEL_69;
        }
        long1 = Long.valueOf(l);
        obj = long1;
        break MISSING_BLOCK_LABEL_69;
        NumberFormatException numberformatexception;
        numberformatexception;
        try
        {
            obj = new BigDecimal(s);
        }
        catch(NumberFormatException numberformatexception1)
        {
            obj = Double.valueOf(Double.parseDouble(s));
        }
        return ((Number) (obj));
    }

    public boolean equals(Object obj)
    {
        boolean flag = true;
        if(this != obj) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        if(obj == null || getClass() != obj.getClass())
        {
            flag = false;
        } else
        {
            JsonPrimitive jsonprimitive = (JsonPrimitive)obj;
            if(value == null)
            {
                if(jsonprimitive.value != null)
                    flag = false;
            } else
            if(isIntegral(this) && isIntegral(jsonprimitive))
            {
                if(getAsNumber().longValue() != jsonprimitive.getAsNumber().longValue())
                    flag = false;
            } else
            if(isFloatingPoint(this) && isFloatingPoint(jsonprimitive))
            {
                if(getAsNumber().doubleValue() != jsonprimitive.getAsNumber().doubleValue())
                    flag = false;
            } else
            {
                flag = value.equals(jsonprimitive.value);
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public BigDecimal getAsBigDecimal()
    {
        BigDecimal bigdecimal;
        if(value instanceof BigDecimal)
            bigdecimal = (BigDecimal)value;
        else
            bigdecimal = new BigDecimal(value.toString());
        return bigdecimal;
    }

    public BigInteger getAsBigInteger()
    {
        BigInteger biginteger;
        if(value instanceof BigInteger)
            biginteger = (BigInteger)value;
        else
            biginteger = new BigInteger(value.toString());
        return biginteger;
    }

    public boolean getAsBoolean()
    {
        boolean flag;
        if(isBoolean())
            flag = getAsBooleanWrapper().booleanValue();
        else
            flag = Boolean.parseBoolean(getAsString());
        return flag;
    }

    Boolean getAsBooleanWrapper()
    {
        return (Boolean)value;
    }

    public byte getAsByte()
    {
        byte byte0;
        if(isNumber())
            byte0 = getAsNumber().byteValue();
        else
            byte0 = Byte.parseByte(getAsString());
        return byte0;
    }

    public char getAsCharacter()
    {
        return getAsString().charAt(0);
    }

    public double getAsDouble()
    {
        double d;
        if(isNumber())
            d = getAsNumber().doubleValue();
        else
            d = Double.parseDouble(getAsString());
        return d;
    }

    public float getAsFloat()
    {
        float f;
        if(isNumber())
            f = getAsNumber().floatValue();
        else
            f = Float.parseFloat(getAsString());
        return f;
    }

    public int getAsInt()
    {
        int i;
        if(isNumber())
            i = getAsNumber().intValue();
        else
            i = Integer.parseInt(getAsString());
        return i;
    }

    public long getAsLong()
    {
        long l;
        if(isNumber())
            l = getAsNumber().longValue();
        else
            l = Long.parseLong(getAsString());
        return l;
    }

    public Number getAsNumber()
    {
        Number number;
        if(value instanceof String)
            number = stringToNumber((String)value);
        else
            number = (Number)value;
        return number;
    }

    Object getAsObject()
    {
        if(!(value instanceof BigInteger)) goto _L2; else goto _L1
_L1:
        BigInteger biginteger = (BigInteger)value;
        if(biginteger.compareTo(INTEGER_MAX) >= 0) goto _L4; else goto _L3
_L3:
        Object obj = Integer.valueOf(biginteger.intValue());
_L6:
        return obj;
_L4:
        if(biginteger.compareTo(LONG_MAX) < 0)
        {
            obj = Long.valueOf(biginteger.longValue());
            continue; /* Loop/switch isn't completed */
        }
_L2:
        obj = value;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public short getAsShort()
    {
        short word0;
        if(isNumber())
            word0 = getAsNumber().shortValue();
        else
            word0 = Short.parseShort(getAsString());
        return word0;
    }

    public String getAsString()
    {
        String s;
        if(isNumber())
            s = getAsNumber().toString();
        else
        if(isBoolean())
            s = getAsBooleanWrapper().toString();
        else
            s = (String)value;
        return s;
    }

    public int hashCode()
    {
        int i;
        if(value == null)
            i = 31;
        else
        if(isIntegral(this))
        {
            long l1 = getAsNumber().longValue();
            i = (int)(l1 ^ l1 >>> 32);
        } else
        if(isFloatingPoint(this))
        {
            long l = Double.doubleToLongBits(getAsNumber().doubleValue());
            i = (int)(l ^ l >>> 32);
        } else
        {
            i = value.hashCode();
        }
        return i;
    }

    public boolean isBoolean()
    {
        return value instanceof Boolean;
    }

    public boolean isNumber()
    {
        return value instanceof Number;
    }

    public boolean isString()
    {
        return value instanceof String;
    }

    void setValue(Object obj)
    {
        if(obj instanceof Character)
        {
            value = String.valueOf(((Character)obj).charValue());
        } else
        {
            boolean flag;
            if((obj instanceof Number) || isPrimitiveOrString(obj))
                flag = true;
            else
                flag = false;
            Preconditions.checkArgument(flag);
            value = obj;
        }
    }

    protected void toString(Appendable appendable, Escaper escaper)
        throws IOException
    {
        if(isString())
        {
            appendable.append('"');
            appendable.append(escaper.escapeJsonString(value.toString()));
            appendable.append('"');
        } else
        {
            appendable.append(value.toString());
        }
    }

    private static final BigInteger INTEGER_MAX = BigInteger.valueOf(0x7fffffffL);
    private static final BigInteger LONG_MAX = BigInteger.valueOf(0x7fffffffffffffffL);
    private static final Class PRIMITIVE_TYPES[];
    private Object value;

    static 
    {
        Class aclass[] = new Class[16];
        aclass[0] = Integer.TYPE;
        aclass[1] = Long.TYPE;
        aclass[2] = Short.TYPE;
        aclass[3] = Float.TYPE;
        aclass[4] = Double.TYPE;
        aclass[5] = Byte.TYPE;
        aclass[6] = Boolean.TYPE;
        aclass[7] = Character.TYPE;
        aclass[8] = java/lang/Integer;
        aclass[9] = java/lang/Long;
        aclass[10] = java/lang/Short;
        aclass[11] = java/lang/Float;
        aclass[12] = java/lang/Double;
        aclass[13] = java/lang/Byte;
        aclass[14] = java/lang/Boolean;
        aclass[15] = java/lang/Character;
        PRIMITIVE_TYPES = aclass;
    }
}
