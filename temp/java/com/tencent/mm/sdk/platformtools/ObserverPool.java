// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.os.*;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Util, Log

public final class ObserverPool
{
    public static abstract class Listener
    {

        static int a(Listener listener)
        {
            return listener.priority;
        }

        public abstract boolean callback(Event event);

        public int getPriority()
        {
            return priority;
        }

        private final int priority;

        public Listener()
        {
            priority = 0;
        }

        public Listener(int i)
        {
            priority = i;
        }
    }

    public static class Event
    {

        public int getFlag()
        {
            return aC;
        }

        public String getId()
        {
            return aB;
        }

        public void onComplete()
        {
        }

        public Event setFlag(int i)
        {
            aC = i;
            return this;
        }

        public static final int FLAG_ORDER_EXE = 1;
        private final String aB;
        private int aC;
        public final Bundle data = new Bundle();

        public Event(String s)
        {
            Assert.assertNotNull(s);
            aB = s;
        }
    }


    public ObserverPool()
    {
    }

    /**
     * @deprecated Method add is deprecated
     */

    public final boolean add(String s, Listener listener)
    {
        this;
        JVM INSTR monitorenter ;
        LinkedList linkedlist;
        Assert.assertNotNull(listener);
        linkedlist = (LinkedList)ay.get(s);
        if(linkedlist == null)
        {
            linkedlist = new LinkedList();
            ay.put(s, linkedlist);
        }
        if(!linkedlist.contains(listener)) goto _L2; else goto _L1
_L1:
        Object aobj[] = new Object[2];
        aobj[0] = s;
        aobj[1] = Util.getStack();
        Log.e("MicroMsg.ObserverPool", "Cannot add the same listener twice. EventId: %s, Stack: %s.", aobj);
        boolean flag1 = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag1;
_L2:
        boolean flag = linkedlist.add(listener);
        flag1 = flag;
        if(true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final void asyncPublish(Event event)
    {
        asyncPublish(event, Looper.myLooper());
    }

    public final void asyncPublish(Event event, Looper looper)
    {
        Assert.assertNotNull(looper);
        (new Handler(looper)).post(new _cls2(event));
    }

    public final boolean publish(Event event)
    {
        int i = 0;
        Assert.assertNotNull(event);
        String s = event.getId();
        LinkedList linkedlist = (LinkedList)ay.get(s);
        boolean flag;
        if(linkedlist == null)
        {
            Object aobj[] = new Object[2];
            aobj[i] = s;
            aobj[1] = Util.getStack();
            Log.w("MicroMsg.ObserverPool", "No listener for this event %s, Stack: %s.", aobj);
            flag = false;
        } else
        {
            if((1 & event.getFlag()) != 0)
                i = 1;
            if(i != 0)
                Collections.sort(linkedlist, new _cls1());
            for(Iterator iterator = linkedlist.iterator(); iterator.hasNext() && (!((Listener)iterator.next()).callback(event) || i == 0););
            event.onComplete();
            flag = true;
        }
        return flag;
    }

    /**
     * @deprecated Method release is deprecated
     */

    public final void release()
    {
        this;
        JVM INSTR monitorenter ;
        ay.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method remove is deprecated
     */

    public final boolean remove(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        Assert.assertNotNull(s);
        obj = ay.remove(s);
        boolean flag;
        if(obj != null)
            flag = true;
        else
            flag = false;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method remove is deprecated
     */

    public final boolean remove(String s, Listener listener)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        Assert.assertNotNull(listener);
        LinkedList linkedlist = (LinkedList)ay.get(s);
        if(linkedlist == null)
            break MISSING_BLOCK_LABEL_74;
        flag = linkedlist.remove(listener);
_L1:
        if(!flag)
        {
            Object aobj[] = new Object[2];
            aobj[0] = s;
            aobj[1] = Util.getStack();
            Log.e("MicroMsg.ObserverPool", "Listener isnot existed in the map. EventId: %s, Stack: %s.", aobj);
        }
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
        flag = false;
          goto _L1
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("ObserverPool profile:\n");
        stringbuilder.append("\tEvent number: ").append(ay.size()).append("\n");
        stringbuilder.append("\tDetail:\n");
        String s;
        for(Iterator iterator = ay.keySet().iterator(); iterator.hasNext(); stringbuilder.append("\t").append(s).append(" : ").append(((LinkedList)ay.get(s)).size()).append("\n"))
            s = (String)iterator.next();

        stringbuilder.append("End...");
        return stringbuilder.toString();
    }

    private final HashMap ay = new HashMap();

    private class _cls2
        implements Runnable
    {

        public void run()
        {
            az.publish(aA);
        }

        final Event aA;
        final ObserverPool az;

        _cls2(Event event)
        {
            az = ObserverPool.this;
            aA = event;
            super();
        }
    }


    private class _cls1
        implements Comparator
    {

        public int compare(Listener listener, Listener listener1)
        {
            return Listener.a(listener1) - Listener.a(listener);
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((Listener)obj, (Listener)obj1);
        }

        final ObserverPool az;

        _cls1()
        {
            az = ObserverPool.this;
            super();
        }
    }

}
