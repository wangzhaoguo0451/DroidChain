// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.primitive;

import java.util.Locale;

// Referenced classes of package net.sf.ezmorph.primitive:
//            AbstractPrimitiveMorpher

public abstract class AbstractIntegerMorpher extends AbstractPrimitiveMorpher
{

    public AbstractIntegerMorpher()
    {
    }

    public AbstractIntegerMorpher(boolean flag)
    {
        super(flag);
    }

    protected String getIntegerValue(Object obj)
    {
        Locale locale = Locale.getDefault();
        String s;
        Locale.setDefault(Locale.US);
        s = String.valueOf(obj);
        String s1 = s;
        Locale.setDefault(locale);
        int i = s1.indexOf(".");
        if(i != -1)
            s1 = s1.substring(0, i);
        return s1;
        Exception exception;
        exception;
        Locale.setDefault(locale);
        throw exception;
    }
}
