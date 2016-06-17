// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.ads.util;

import android.util.Log;

public final class a
{

    private a()
    {
    }

    public static void a(String s)
    {
        if(a("Ads", 3))
            Log.d("Ads", s);
    }

    public static void a(String s, Throwable throwable)
    {
        if(a("Ads", 6))
            Log.e("Ads", s, throwable);
    }

    private static boolean a(String s, int i)
    {
        boolean flag;
        boolean flag1;
        if(i >= 5)
            flag = true;
        else
            flag = false;
        if(flag || Log.isLoggable(s, i))
            flag1 = true;
        else
            flag1 = false;
        return flag1;
    }

    public static void b(String s)
    {
        if(a("Ads", 6))
            Log.e("Ads", s);
    }

    public static void b(String s, Throwable throwable)
    {
        if(a("Ads", 4))
            Log.i("Ads", s, throwable);
    }

    public static void c(String s)
    {
        if(a("Ads", 4))
            Log.i("Ads", s);
    }

    public static void c(String s, Throwable throwable)
    {
        if(a("Ads", 5))
            Log.w("Ads", s, throwable);
    }

    public static void d(String s)
    {
        if(a("Ads", 2))
            Log.v("Ads", s);
    }

    public static void e(String s)
    {
        if(a("Ads", 5))
            Log.w("Ads", s);
    }
}
