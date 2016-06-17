// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.storage;

import android.os.Handler;
import android.os.Looper;
import java.util.*;
import java.util.concurrent.CopyOnWriteArraySet;

public abstract class MStorageEvent
{

    public MStorageEvent()
    {
        bY = 0;
    }

    /**
     * @deprecated Method e is deprecated
     */

    private Vector e()
    {
        this;
        JVM INSTR monitorenter ;
        Vector vector;
        vector = new Vector();
        vector.addAll(bZ.keySet());
        this;
        JVM INSTR monitorexit ;
        return vector;
        Exception exception;
        exception;
        throw exception;
    }

    private void f()
    {
        Vector vector = e();
        if(vector != null && vector.size() > 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        HashMap hashmap = new HashMap();
        for(Iterator iterator = vector.iterator(); iterator.hasNext();)
        {
            Object obj = iterator.next();
            Object obj1 = bZ.get(obj);
            Iterator iterator1 = ca.iterator();
            while(iterator1.hasNext()) 
            {
                Object obj2 = iterator1.next();
                if(obj2 != null && obj1 != null)
                    if(obj1 instanceof Looper)
                    {
                        Looper looper = (Looper)obj1;
                        Handler handler = (Handler)hashmap.get(looper);
                        if(handler == null)
                        {
                            handler = new Handler(looper);
                            hashmap.put(looper, handler);
                        }
                        handler.post(new _cls1(obj, obj2));
                    } else
                    {
                        processEvent(obj, obj2);
                    }
            }
        }

        ca.clear();
        if(true) goto _L1; else goto _L3
_L3:
    }

    /**
     * @deprecated Method add is deprecated
     */

    public void add(Object obj, Looper looper)
    {
        this;
        JVM INSTR monitorenter ;
        if(bZ.containsKey(obj)) goto _L2; else goto _L1
_L1:
        if(looper == null) goto _L4; else goto _L3
_L3:
        bZ.put(obj, looper);
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        bZ.put(obj, new Object());
        if(true) goto _L2; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
    }

    public void doNotify()
    {
        if(!isLocked())
            f();
    }

    public boolean event(Object obj)
    {
        return ca.add(obj);
    }

    public boolean isLocked()
    {
        boolean flag;
        if(bY > 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public void lock()
    {
        bY = 1 + bY;
    }

    protected abstract void processEvent(Object obj, Object obj1);

    /**
     * @deprecated Method remove is deprecated
     */

    public void remove(Object obj)
    {
        this;
        JVM INSTR monitorenter ;
        bZ.remove(obj);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method removeAll is deprecated
     */

    public void removeAll()
    {
        this;
        JVM INSTR monitorenter ;
        bZ.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void unlock()
    {
        bY = -1 + bY;
        if(bY <= 0)
        {
            bY = 0;
            f();
        }
    }

    private int bY;
    private final Hashtable bZ = new Hashtable();
    private final CopyOnWriteArraySet ca = new CopyOnWriteArraySet();

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            cd.processEvent(cb, cc);
        }

        final Object cb;
        final Object cc;
        final MStorageEvent cd;

        _cls1(Object obj, Object obj1)
        {
            cd = MStorageEvent.this;
            cb = obj;
            cc = obj1;
            super();
        }
    }

}
