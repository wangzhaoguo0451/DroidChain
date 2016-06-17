// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.array;

import java.lang.reflect.Array;
import net.sf.ezmorph.MorphException;
import net.sf.ezmorph.primitive.BooleanMorpher;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.array:
//            AbstractArrayMorpher

public final class BooleanArrayMorpher extends AbstractArrayMorpher
{

    public BooleanArrayMorpher()
    {
        super(false);
    }

    public BooleanArrayMorpher(boolean flag)
    {
        super(true);
        defaultValue = flag;
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
        if(obj != null && (obj instanceof BooleanArrayMorpher))
        {
            BooleanArrayMorpher booleanarraymorpher = (BooleanArrayMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && booleanarraymorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), booleanarraymorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !booleanarraymorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public boolean getDefaultValue()
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
        boolean aflag[] = null;
_L7:
        return aflag;
_L2:
        int i;
        Object obj1;
        BooleanMorpher booleanmorpher;
        int l;
        if(BOOLEAN_ARRAY_CLASS.isAssignableFrom(obj.getClass()))
        {
            aflag = (boolean[])obj;
            continue; /* Loop/switch isn't completed */
        }
        if(!obj.getClass().isArray())
            break MISSING_BLOCK_LABEL_201;
        i = Array.getLength(obj);
        int j = getDimensions(obj.getClass());
        int ai[] = createDimensions(j, i);
        obj1 = Array.newInstance(Boolean.TYPE, ai);
        if(isUseDefault())
            booleanmorpher = new BooleanMorpher(defaultValue);
        else
            booleanmorpher = new BooleanMorpher();
        if(j != 1)
            break MISSING_BLOCK_LABEL_169;
        l = 0;
_L5:
        if(l < i) goto _L4; else goto _L3
_L3:
        aflag = ((boolean []) (obj1));
        continue; /* Loop/switch isn't completed */
_L4:
        Boolean boolean1;
        if(booleanmorpher.morph(Array.get(obj, l)))
            boolean1 = Boolean.TRUE;
        else
            boolean1 = Boolean.FALSE;
        Array.set(obj1, l, boolean1);
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
        return BOOLEAN_ARRAY_CLASS;
    }

    private static final Class BOOLEAN_ARRAY_CLASS;
    static Class class$0;
    static Class class$1;
    private boolean defaultValue;

    static 
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("[Z");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class1 = class2;
            class$0 = class1;
        }
        BOOLEAN_ARRAY_CLASS = class1;
    }
}
