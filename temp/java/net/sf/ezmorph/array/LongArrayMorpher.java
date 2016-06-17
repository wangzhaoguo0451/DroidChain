// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.array;

import java.lang.reflect.Array;
import net.sf.ezmorph.MorphException;
import net.sf.ezmorph.primitive.LongMorpher;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.array:
//            AbstractArrayMorpher

public final class LongArrayMorpher extends AbstractArrayMorpher
{

    public LongArrayMorpher()
    {
        super(false);
    }

    public LongArrayMorpher(long l)
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
        if(obj != null && (obj instanceof LongArrayMorpher))
        {
            LongArrayMorpher longarraymorpher = (LongArrayMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && longarraymorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), longarraymorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !longarraymorpher.isUseDefault())
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

    public Object morph(Object obj)
    {
        if(obj != null) goto _L2; else goto _L1
_L1:
        long al[] = null;
_L7:
        return al;
_L2:
        int i;
        Object obj1;
        LongMorpher longmorpher;
        int l;
        if(LONG_ARRAY_CLASS.isAssignableFrom(obj.getClass()))
        {
            al = (long[])obj;
            continue; /* Loop/switch isn't completed */
        }
        if(!obj.getClass().isArray())
            break MISSING_BLOCK_LABEL_190;
        i = Array.getLength(obj);
        int j = getDimensions(obj.getClass());
        int ai[] = createDimensions(j, i);
        obj1 = Array.newInstance(Long.TYPE, ai);
        if(isUseDefault())
            longmorpher = new LongMorpher(defaultValue);
        else
            longmorpher = new LongMorpher();
        if(j != 1)
            break MISSING_BLOCK_LABEL_158;
        l = 0;
_L5:
        if(l < i) goto _L4; else goto _L3
_L3:
        al = ((long []) (obj1));
        continue; /* Loop/switch isn't completed */
_L4:
        Array.set(obj1, l, new Long(longmorpher.morph(Array.get(obj, l))));
        l++;
          goto _L5
        int k = 0;
        while(k < i) 
        {
            Array.set(obj1, k, morph(Array.get(obj, k)));
            k++;
        }
          goto _L3
        throw new MorphException("argument is not an array: " + obj.getClass());
        if(true) goto _L7; else goto _L6
_L6:
    }

    public Class morphsTo()
    {
        return LONG_ARRAY_CLASS;
    }

    private static final Class LONG_ARRAY_CLASS;
    static Class class$0;
    static Class class$1;
    private long defaultValue;

    static 
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("[J");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class1 = class2;
            class$0 = class1;
        }
        LONG_ARRAY_CLASS = class1;
    }
}
