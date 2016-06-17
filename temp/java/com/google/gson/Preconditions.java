// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;


final class Preconditions
{

    Preconditions()
    {
    }

    public static void checkArgument(boolean flag)
    {
        if(!flag)
            throw new IllegalArgumentException((new StringBuilder()).append("condition failed: ").append(flag).toString());
        else
            return;
    }

    public static void checkNotNull(Object obj)
    {
        boolean flag;
        if(obj != null)
            flag = true;
        else
            flag = false;
        checkArgument(flag);
    }

    public static void checkState(boolean flag)
    {
        if(!flag)
            throw new IllegalArgumentException((new StringBuilder()).append("condition failed: ").append(flag).toString());
        else
            return;
    }
}
