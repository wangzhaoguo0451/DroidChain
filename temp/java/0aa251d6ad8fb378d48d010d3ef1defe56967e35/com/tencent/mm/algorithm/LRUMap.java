// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;

import java.util.*;

public class LRUMap
{
    public static interface OnClearListener
    {

        public abstract void onClear(Object obj, Object obj1);
    }

    public static interface PreRemoveCallback
    {

        public abstract void preRemoveCallback(Object obj, Object obj1);
    }

    public class TimeVal
    {

        public void UpTime()
        {
            t = Long.valueOf(System.currentTimeMillis());
        }

        final LRUMap g;
        public Object obj;
        public Long t;

        public TimeVal(Object obj1)
        {
            g = LRUMap.this;
            super();
            obj = obj1;
            UpTime();
        }
    }


    public LRUMap(int i)
    {
        this(i, null);
    }

    public LRUMap(int i, PreRemoveCallback preremovecallback)
    {
        c = null;
        f = null;
        d = i;
        e = 0;
        f = preremovecallback;
        c = new HashMap();
    }

    public boolean check(Object obj)
    {
        return c.containsKey(obj);
    }

    public boolean checkAndUpTime(Object obj)
    {
        boolean flag;
        if(c.containsKey(obj))
        {
            ((TimeVal)c.get(obj)).UpTime();
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    public void clear()
    {
        c.clear();
    }

    public void clear(OnClearListener onclearlistener)
    {
        if(c != null)
        {
            if(onclearlistener != null)
            {
                java.util.Map.Entry entry;
                for(Iterator iterator = c.entrySet().iterator(); iterator.hasNext(); onclearlistener.onClear(entry.getKey(), ((TimeVal)entry.getValue()).obj))
                    entry = (java.util.Map.Entry)iterator.next();

            }
            c.clear();
        }
    }

    public Object get(Object obj)
    {
        return getAndUptime(obj);
    }

    public Object getAndUptime(Object obj)
    {
        TimeVal timeval = (TimeVal)c.get(obj);
        Object obj1;
        if(timeval == null)
        {
            obj1 = null;
        } else
        {
            timeval.UpTime();
            obj1 = timeval.obj;
        }
        return obj1;
    }

    public void remove(Object obj)
    {
        if(c.containsKey(obj))
        {
            if(f != null)
                f.preRemoveCallback(obj, ((TimeVal)c.get(obj)).obj);
            c.remove(obj);
        }
    }

    public void setMaxSize(int i)
    {
        if(i > 0)
            d = i;
    }

    public void setPerDeleteSize(int i)
    {
        if(i > 0)
            e = i;
    }

    public int size()
    {
        return c.size();
    }

    public void update(Object obj, Object obj1)
    {
        if((TimeVal)c.get(obj) != null) goto _L2; else goto _L1
_L1:
        TimeVal timeval = new TimeVal(obj1);
        c.put(obj, timeval);
        if(c.size() <= d) goto _L4; else goto _L3
_L3:
        int j;
        int k;
        ArrayList arraylist = new ArrayList(c.entrySet());
        Collections.sort(arraylist, new _cls1());
        int i;
        Iterator iterator;
        if(e <= 0)
        {
            i = d / 10;
            if(i <= 0)
                i = 1;
        } else
        {
            i = e;
        }
        iterator = arraylist.iterator();
        j = i;
_L8:
        if(!iterator.hasNext()) goto _L4; else goto _L5
_L5:
        remove(((java.util.Map.Entry)iterator.next()).getKey());
        k = j - 1;
        if(k > 0) goto _L6; else goto _L4
_L4:
        return;
_L2:
        ((TimeVal)c.get(obj)).UpTime();
        ((TimeVal)c.get(obj)).obj = obj1;
        if(true) goto _L4; else goto _L6
_L6:
        j = k;
        if(true) goto _L8; else goto _L7
_L7:
    }

    private Map c;
    private int d;
    private int e;
    private PreRemoveCallback f;

    private class _cls1
        implements Comparator
    {

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((java.util.Map.Entry)obj, (java.util.Map.Entry)obj1);
        }

        public int compare(java.util.Map.Entry entry, java.util.Map.Entry entry1)
        {
            return ((TimeVal)entry.getValue()).t.compareTo(((TimeVal)entry1.getValue()).t);
        }

        final LRUMap g;

        _cls1()
        {
            g = LRUMap.this;
            super();
        }
    }

}
