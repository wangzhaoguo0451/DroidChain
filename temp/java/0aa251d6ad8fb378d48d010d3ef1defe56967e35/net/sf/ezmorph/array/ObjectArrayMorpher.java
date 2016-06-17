// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.array;

import java.lang.reflect.Array;
import java.lang.reflect.Method;
import net.sf.ezmorph.MorphException;
import net.sf.ezmorph.Morpher;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.array:
//            AbstractArrayMorpher

public final class ObjectArrayMorpher extends AbstractArrayMorpher
{

    public ObjectArrayMorpher(Morpher morpher1)
    {
        super(false);
        setMorpher(morpher1);
    }

    private void setMorpher(Morpher morpher1)
    {
        if(morpher1 == null)
            throw new IllegalArgumentException("morpher can not be null");
        if(morpher1.morphsTo().isArray())
            throw new IllegalArgumentException("morpher target class can not be an array");
        morpher = morpher1;
        targetArrayClass = Array.newInstance(morpher1.morphsTo(), 1).getClass();
        target = morpher1.morphsTo();
        Class class1;
        Class aclass[];
        Class class2;
        ClassNotFoundException classnotfoundexception;
        Class class3;
        try
        {
            class1 = morpher1.getClass();
            aclass = new Class[1];
            class2 = class$0;
        }
        catch(NoSuchMethodException nosuchmethodexception)
        {
            throw new IllegalArgumentException(nosuchmethodexception.getMessage());
        }
        if(class2 != null)
            break MISSING_BLOCK_LABEL_105;
        class3 = Class.forName("java.lang.Object");
        class2 = class3;
        class$0 = class2;
        aclass[0] = class2;
        morphMethod = class1.getDeclaredMethod("morph", aclass);
        return;
        classnotfoundexception;
        throw new NoClassDefFoundError(classnotfoundexception.getMessage());
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
        if(obj != null && (obj instanceof ObjectArrayMorpher))
        {
            ObjectArrayMorpher objectarraymorpher = (ObjectArrayMorpher)obj;
            flag = morpher.equals(objectarraymorpher.morpher);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public int hashCode()
    {
        return (new HashCodeBuilder()).append(morpher).toHashCode();
    }

    public Object morph(Object obj)
    {
        if(obj != null) goto _L2; else goto _L1
_L1:
        Object obj1 = null;
_L5:
        return obj1;
_L2:
        int i;
        int l;
        if(!obj.getClass().isArray())
            break; /* Loop/switch isn't completed */
        i = Array.getLength(obj);
        int j = getDimensions(obj.getClass());
        int ai[] = createDimensions(j, i);
        obj1 = Array.newInstance(target, ai);
        if(j != 1)
            break MISSING_BLOCK_LABEL_191;
        l = 0;
_L3:
        if(l >= i)
            continue; /* Loop/switch isn't completed */
        Object obj2;
        Method method;
        Morpher morpher1;
        Object aobj[];
        try
        {
            obj2 = Array.get(obj, l);
            if(obj2 != null && !morpher.supports(obj2.getClass()))
                throw new MorphException(obj2.getClass() + " is not supported");
        }
        catch(MorphException morphexception)
        {
            throw morphexception;
        }
        catch(Exception exception)
        {
            throw new MorphException(exception);
        }
        method = morphMethod;
        morpher1 = morpher;
        aobj = new Object[1];
        aobj[0] = obj2;
        Array.set(obj1, l, method.invoke(morpher1, aobj));
        l++;
          goto _L3
        int k = 0;
        while(k < i) 
        {
            Array.set(obj1, k, morph(Array.get(obj, k)));
            k++;
        }
        if(true) goto _L5; else goto _L4
_L4:
        throw new MorphException("argument is not an array: " + obj.getClass());
    }

    public Class morphsTo()
    {
        return targetArrayClass;
    }

    public boolean supports(Class class1)
    {
        boolean flag;
        if(class1 != null && !class1.isArray())
        {
            flag = false;
        } else
        {
            for(; class1.isArray(); class1 = class1.getComponentType());
            flag = morpher.supports(class1);
        }
        return flag;
    }

    static Class class$0;
    private Method morphMethod;
    private Morpher morpher;
    private Class target;
    private Class targetArrayClass;
}
