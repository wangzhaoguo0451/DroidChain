// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;


public class UIN extends Number
{

    public UIN(int i)
    {
        h = 0;
        h = i;
    }

    public UIN(long l)
    {
        h = 0;
        h = (int)(-1L & l);
    }

    public static int valueOf(String s)
    {
        int j = (new UIN(Long.valueOf(s).longValue())).intValue();
        int i = j;
_L2:
        return i;
        Exception exception;
        exception;
        i = 0;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public double doubleValue()
    {
        return 0.0D + (double)(0L | (long)h);
    }

    public float floatValue()
    {
        return (float)(0.0D + (double)(0L | (long)h));
    }

    public int intValue()
    {
        return h;
    }

    public long longValue()
    {
        return 0xffffffffL & (long)h;
    }

    public String toString()
    {
        return String.valueOf(0xffffffffL & (long)h);
    }

    public int value()
    {
        return h;
    }

    private int h;
}
