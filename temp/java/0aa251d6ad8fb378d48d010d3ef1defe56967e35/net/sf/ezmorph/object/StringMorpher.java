// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.object;

import net.sf.ezmorph.MorphException;
import net.sf.ezmorph.ObjectMorpher;

public final class StringMorpher
    implements ObjectMorpher
{

    private StringMorpher()
    {
    }

    public static StringMorpher getInstance()
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
        String s;
        if(obj == null)
        {
            s = null;
        } else
        {
            if(!supports(obj.getClass()))
                throw new MorphException("Class not supported. " + obj.getClass());
            Class class1 = class$0;
            if(class1 == null)
            {
                Class class2;
                try
                {
                    class2 = Class.forName("java.lang.String");
                }
                catch(ClassNotFoundException classnotfoundexception)
                {
                    throw new NoClassDefFoundError(classnotfoundexception.getMessage());
                }
                class1 = class2;
                class$0 = class1;
            }
            if(class1.isAssignableFrom(obj.getClass()))
                s = (String)obj;
            else
                s = String.valueOf(obj);
        }
        return s;
    }

    public Class morphsTo()
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("java.lang.String");
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
        boolean flag;
        if(class1.isArray())
            flag = false;
        else
            flag = true;
        return flag;
    }

    private static final StringMorpher INSTANCE = new StringMorpher();
    static Class class$0;

}
