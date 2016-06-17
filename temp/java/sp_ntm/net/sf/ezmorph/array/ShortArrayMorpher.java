// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.array;

import java.lang.reflect.Array;
import net.sf.ezmorph.MorphException;
import net.sf.ezmorph.primitive.ShortMorpher;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.array:
//            AbstractArrayMorpher

public final class ShortArrayMorpher extends AbstractArrayMorpher
{

    public ShortArrayMorpher()
    {
        super(false);
    }

    public ShortArrayMorpher(short word0)
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
        if(obj != null && (obj instanceof ShortArrayMorpher))
        {
            ShortArrayMorpher shortarraymorpher = (ShortArrayMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && shortarraymorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), shortarraymorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !shortarraymorpher.isUseDefault())
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

    public Object morph(Object obj)
    {
        if(obj != null) goto _L2; else goto _L1
_L1:
        short aword0[] = null;
_L7:
        return aword0;
_L2:
        int i;
        Object obj1;
        ShortMorpher shortmorpher;
        int l;
        if(SHORT_ARRAY_CLASS.isAssignableFrom(obj.getClass()))
        {
            aword0 = (short[])obj;
            continue; /* Loop/switch isn't completed */
        }
        if(!obj.getClass().isArray())
            break MISSING_BLOCK_LABEL_190;
        i = Array.getLength(obj);
        int j = getDimensions(obj.getClass());
        int ai[] = createDimensions(j, i);
        obj1 = Array.newInstance(Short.TYPE, ai);
        if(isUseDefault())
            shortmorpher = new ShortMorpher(defaultValue);
        else
            shortmorpher = new ShortMorpher();
        if(j != 1)
            break MISSING_BLOCK_LABEL_158;
        l = 0;
_L5:
        if(l < i) goto _L4; else goto _L3
_L3:
        aword0 = ((short []) (obj1));
        continue; /* Loop/switch isn't completed */
_L4:
        Array.set(obj1, l, new Short(shortmorpher.morph(Array.get(obj, l))));
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
        return SHORT_ARRAY_CLASS;
    }

    private static final Class SHORT_ARRAY_CLASS;
    static Class class$0;
    static Class class$1;
    private short defaultValue;

    static 
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("[S");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class1 = class2;
            class$0 = class1;
        }
        SHORT_ARRAY_CLASS = class1;
    }
}
