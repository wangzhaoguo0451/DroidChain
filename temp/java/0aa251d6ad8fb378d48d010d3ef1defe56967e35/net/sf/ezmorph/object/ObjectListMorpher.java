// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.object;

import java.lang.reflect.Method;
import java.util.*;
import net.sf.ezmorph.MorphException;
import net.sf.ezmorph.Morpher;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.object:
//            AbstractObjectMorpher

public final class ObjectListMorpher extends AbstractObjectMorpher
{

    public ObjectListMorpher(Morpher morpher1)
    {
        setMorpher(morpher1);
    }

    public ObjectListMorpher(Morpher morpher1, Object obj)
    {
        super(true);
        defaultValue = obj;
        setMorpher(morpher1);
    }

    private void setMorpher(Morpher morpher1)
    {
        if(morpher1 == null)
            throw new IllegalArgumentException("morpher can not be null");
        morpher = morpher1;
        Class class1;
        Class aclass[];
        Class class2;
        ClassNotFoundException classnotfoundexception;
        Class class3;
        try
        {
            class1 = morpher1.getClass();
            aclass = new Class[1];
            class2 = class$1;
        }
        catch(NoSuchMethodException nosuchmethodexception)
        {
            throw new IllegalArgumentException(nosuchmethodexception.getMessage());
        }
        if(class2 != null)
            break MISSING_BLOCK_LABEL_56;
        class3 = Class.forName("java.lang.Object");
        class2 = class3;
        class$1 = class2;
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
        if(obj != null && (obj instanceof ObjectListMorpher))
        {
            ObjectListMorpher objectlistmorpher = (ObjectListMorpher)obj;
            flag = morpher.equals(objectlistmorpher.morpher);
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
        ArrayList arraylist;
        if(obj == null)
        {
            arraylist = null;
        } else
        {
            if(!supports(obj.getClass()))
                throw new MorphException(obj.getClass() + " is not supported");
            arraylist = new ArrayList();
            Iterator iterator = ((List)obj).iterator();
            while(iterator.hasNext()) 
            {
                Object obj1 = iterator.next();
                if(obj1 == null)
                {
                    if(isUseDefault())
                        arraylist.add(defaultValue);
                    else
                        arraylist.add(obj1);
                } else
                {
                    if(!morpher.supports(obj1.getClass()))
                        throw new MorphException(obj1.getClass() + " is not supported");
                    try
                    {
                        Method method = morphMethod;
                        Morpher morpher1 = morpher;
                        Object aobj[] = new Object[1];
                        aobj[0] = obj1;
                        arraylist.add(method.invoke(morpher1, aobj));
                    }
                    catch(MorphException morphexception)
                    {
                        throw morphexception;
                    }
                    catch(Exception exception)
                    {
                        throw new MorphException(exception);
                    }
                }
            }
        }
        return arraylist;
    }

    public Class morphsTo()
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("java.util.List");
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

    public boolean supports(Class class1)
    {
        if(class1 == null) goto _L2; else goto _L1
_L1:
        boolean flag;
        Class class2 = class$0;
        if(class2 == null)
        {
            Class class3;
            try
            {
                class3 = Class.forName("java.util.List");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class2 = class3;
            class$0 = class2;
        }
        if(!class2.isAssignableFrom(class1)) goto _L2; else goto _L3
_L3:
        flag = true;
_L5:
        return flag;
_L2:
        flag = false;
        if(true) goto _L5; else goto _L4
_L4:
    }

    static Class class$0;
    static Class class$1;
    private Object defaultValue;
    private Method morphMethod;
    private Morpher morpher;
}
