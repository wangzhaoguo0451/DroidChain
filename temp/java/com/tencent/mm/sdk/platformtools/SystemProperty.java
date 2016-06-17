// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import java.util.HashMap;

public final class SystemProperty
{

    private SystemProperty()
    {
    }

    public static String getProperty(String s)
    {
        return (String)bl.get(s);
    }

    public static void setProperty(String s, String s1)
    {
        bl.put(s, s1);
    }

    private static final HashMap bl = new HashMap();

}
