// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.object;

import net.sf.ezmorph.MorphException;
import net.sf.ezmorph.ObjectMorpher;

public final class ClassMorpher
    implements ObjectMorpher
{

    private ClassMorpher()
    {
    }

    public static ClassMorpher getInstance()
    {
        return INSTANCE;
    }

    public boolean equals(Object obj)
    {
        boolean flag;
        if(INSTANCE == obj)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public int hashCode()
    {
        return 42 + getClass().hashCode();
    }

    public Object morph(Object obj)
    {
        Class class2;
        if(obj == null)
            class2 = null;
        else
        if(obj instanceof Class)
            class2 = (Class)obj;
        else
        if("null".equals(obj))
        {
            class2 = null;
        } else
        {
            Class class1;
            try
            {
                class1 = Class.forName(obj.toString());
            }
            catch(Exception exception)
            {
                throw new MorphException(exception);
            }
            class2 = class1;
        }
        return class2;
    }

    public Class morphsTo()
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("java.lang.Class");
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
        return true;
    }

    private static final ClassMorpher INSTANCE = new ClassMorpher();
    static Class class$0;

}
