// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.util.LinkedHashMap;

// Referenced classes of package com.google.gson:
//            Cache

final class LruCache extends LinkedHashMap
    implements Cache
{

    LruCache(int i)
    {
        super(i, 0.7F, true);
        maxCapacity = i;
    }

    public void addElement(Object obj, Object obj1)
    {
        put(obj, obj1);
    }

    public void clear()
    {
        super.clear();
    }

    public Object getElement(Object obj)
    {
        return get(obj);
    }

    protected boolean removeEldestEntry(java.util.Map.Entry entry)
    {
        boolean flag;
        if(size() > maxCapacity)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public Object removeElement(Object obj)
    {
        return remove(obj);
    }

    public int size()
    {
        return super.size();
    }

    private static final long serialVersionUID = 1L;
    private final int maxCapacity;
}
