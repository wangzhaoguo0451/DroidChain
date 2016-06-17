// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;


final class Pair
{

    Pair(Object obj, Object obj1)
    {
        first = obj;
        second = obj1;
    }

    private static boolean equal(Object obj, Object obj1)
    {
        boolean flag;
        if(obj == obj1 || obj != null && obj.equals(obj1))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean equals(Object obj)
    {
        boolean flag = false;
        if(obj instanceof Pair) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        Pair pair = (Pair)obj;
        if(equal(first, pair.first) && equal(second, pair.second))
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public int hashCode()
    {
        int i = 0;
        int j;
        int k;
        if(first != null)
            j = first.hashCode();
        else
            j = 0;
        k = j * 17;
        if(second != null)
            i = second.hashCode();
        return k + i * 17;
    }

    public String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = first;
        aobj[1] = second;
        return String.format("{%s,%s}", aobj);
    }

    final Object first;
    final Object second;
}
