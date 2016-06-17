// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.object;

import net.sf.ezmorph.ObjectMorpher;

public abstract class AbstractObjectMorpher
    implements ObjectMorpher
{

    public AbstractObjectMorpher()
    {
    }

    public AbstractObjectMorpher(boolean flag)
    {
        useDefault = flag;
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
        boolean flag;
        if(class1.isArray())
            flag = false;
        else
            flag = true;
        return flag;
    }

    private boolean useDefault;
}
