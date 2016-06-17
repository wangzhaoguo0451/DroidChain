// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.array;

import java.lang.reflect.Array;
import net.sf.ezmorph.ObjectMorpher;

public abstract class AbstractArrayMorpher
    implements ObjectMorpher
{

    public AbstractArrayMorpher()
    {
        useDefault = false;
    }

    public AbstractArrayMorpher(boolean flag)
    {
        useDefault = false;
        useDefault = flag;
    }

    protected int[] createDimensions(int i, int j)
    {
        Object obj = Array.newInstance(Integer.TYPE, i);
        Array.set(obj, 0, new Integer(j));
        return (int[])obj;
    }

    protected int getDimensions(Class class1)
    {
        int i;
        if(class1 == null || !class1.isArray())
            i = 0;
        else
            i = 1 + getDimensions(class1.getComponentType());
        return i;
    }

    public boolean isUseDefault()
    {
        return useDefault;
    }

    public abstract Object morph(Object obj);

    public abstract Class morphsTo();

    public void setUseDefault(boolean flag)
    {
        useDefault = flag;
    }

    public boolean supports(Class class1)
    {
        return class1.isArray();
    }

    static Class class$0;
    private boolean useDefault;
}
