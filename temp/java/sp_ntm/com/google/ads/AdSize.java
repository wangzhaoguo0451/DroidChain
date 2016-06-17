// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.ads;


public class AdSize
{

    public AdSize(int i, int j)
    {
        this(i, j, null);
    }

    private AdSize(int i, int j, String s)
    {
        a = i;
        b = j;
        c = s;
    }

    public int getHeight()
    {
        return b;
    }

    public int getWidth()
    {
        return a;
    }

    public String toString()
    {
        return c;
    }

    public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");
    public static final AdSize IAB_BANNER = new AdSize(468, 60, "468x60_as");
    public static final AdSize IAB_LEADERBOARD = new AdSize(728, 90, "728x90_as");
    public static final AdSize IAB_MRECT = new AdSize(300, 250, "300x250_as");
    private int a;
    private int b;
    private String c;

}
