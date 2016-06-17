// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.object;

import net.sf.ezmorph.ObjectMorpher;

public final class IdentityObjectMorpher
    implements ObjectMorpher
{

    private IdentityObjectMorpher()
    {
    }

    public static IdentityObjectMorpher getInstance()
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
        return obj;
    }

    public Class morphsTo()
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("java.lang.Object");
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

    private static final IdentityObjectMorpher INSTANCE = new IdentityObjectMorpher();
    static Class class$0;

}
