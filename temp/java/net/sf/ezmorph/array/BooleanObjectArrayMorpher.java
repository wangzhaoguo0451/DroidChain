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

public final class BooleanObjectArrayMorpher extends AbstractArrayMorpher
{

    public BooleanObjectArrayMorpher()
    {
        super(false);
    }

    public BooleanObjectArrayMorpher(Boolean boolean1)
    {
        super(true);
        defaultValue = boolean1;
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
        if(obj != null && (obj instanceof BooleanObjectArrayMorpher))
        {
            BooleanObjectArrayMorpher booleanobjectarraymorpher = (BooleanObjectArrayMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && booleanobjectarraymorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), booleanobjectarraymorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !booleanobjectarraymorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public Boolean getDefaultValue()
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
        Boolean aboolean[] = null;
_L4:
        return aboolean;
_L2:
        if(!BOOLEAN_OBJECT_ARRAY_CLASS.isAssignableFrom(obj.getClass()))
            break; /* Loop/switch isn't completed */
        aboolean = (Boolean[])obj;
        if(true) goto _L4; else goto _L3
_L3:
        if(!obj.getClass().isArray())
            break; /* Loop/switch isn't completed */
        int i = Array.getLength(obj);
        int j = getDimensions(obj.getClass());
        int ai[] = createDimensions(j, i);
        Class class1 = class$1;
        if(class1 == null)
        {
            int i1;
            Class class2;
            try
            {
                class2 = Class.forName("java.lang.Boolean");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class1 = class2;
            class$1 = class1;
        }
        aboolean = ((Boolean []) (Array.newInstance(class1, ai)));
        if(j == 1)
        {
            BooleanMorpher booleanmorpher;
            int l;
            if(isUseDefault())
            {
                if(defaultValue == null)
                {
                    i1 = 0;
                    while(i1 < i) 
                    {
                        Array.set(aboolean, i1, null);
                        i1++;
                    }
                    continue; /* Loop/switch isn't completed */
                }
                booleanmorpher = new BooleanMorpher(defaultValue.booleanValue());
            } else
            {
                booleanmorpher = new BooleanMorpher();
            }
            l = 0;
            while(l < i) 
            {
                Boolean boolean1;
                if(booleanmorpher.morph(Array.get(obj, l)))
                    boolean1 = Boolean.TRUE;
                else
                    boolean1 = Boolean.FALSE;
                Array.set(aboolean, l, boolean1);
                l++;
            }
        } else
        {
            int k = 0;
            while(k < i) 
            {
                Array.set(aboolean, k, morph(Array.get(obj, k)));
                k++;
            }
        }
        if(true) goto _L4; else goto _L5
_L5:
        throw new MorphException("argument is not an array: " + obj.getClass());
    }

    public Class morphsTo()
    {
        return BOOLEAN_OBJECT_ARRAY_CLASS;
    }

    private static final Class BOOLEAN_OBJECT_ARRAY_CLASS;
    static Class class$0;
    static Class class$1;
    private Boolean defaultValue;

    static 
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("[Ljava.lang.Boolean;");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class1 = class2;
            class$0 = class1;
        }
        BOOLEAN_OBJECT_ARRAY_CLASS = class1;
    }
}
