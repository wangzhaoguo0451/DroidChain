// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.primitive;

import net.sf.ezmorph.Morpher;

public abstract class AbstractPrimitiveMorpher
    implements Morpher
{

    public AbstractPrimitiveMorpher()
    {
        useDefault = false;
    }

    public AbstractPrimitiveMorpher(boolean flag)
    {
        useDefault = false;
        useDefault = flag;
    }

    public boolean isUseDefault()
    {
        return useDefault;
    }

    public abstract Class morphsTo();

    public boolean supports(Class class1)
    {
        boolean flag;
        if(class1.isArray())
            flag = false;
        else
            flag = true;
        return flag;
    }

    private boolean useDefault;
}
