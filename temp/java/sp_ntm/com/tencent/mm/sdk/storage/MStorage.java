// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.storage;

import android.os.Looper;

// Referenced classes of package com.tencent.mm.sdk.storage:
//            MStorageEvent

public abstract class MStorage
{
    public static interface IOnStorageLoaded
    {

        public abstract void onNotifyLoaded();
    }

    public static interface IOnStorageChange
    {

        public abstract void onNotifyChange(String s);
    }


    public MStorage()
    {
    }

    static void a(IOnStorageChange ionstoragechange, String s)
    {
        ionstoragechange.onNotifyChange(s);
    }

    static void a(IOnStorageLoaded ionstorageloaded)
    {
        ionstorageloaded.onNotifyLoaded();
    }

    public void add(IOnStorageChange ionstoragechange)
    {
        bV.add(ionstoragechange, Looper.getMainLooper());
    }

    public void addLoadedListener(IOnStorageLoaded ionstorageloaded)
    {
        bW.add(ionstorageloaded, Looper.getMainLooper());
    }

    public void doNotify()
    {
        bV.event("*");
        bV.doNotify();
    }

    public void doNotify(String s)
    {
        bV.event(s);
        bV.doNotify();
    }

    public void lock()
    {
        bV.lock();
    }

    public void remove(IOnStorageChange ionstoragechange)
    {
        bV.remove(ionstoragechange);
    }

    public void removeLoadedListener(IOnStorageLoaded ionstorageloaded)
    {
        bW.remove(ionstorageloaded);
    }

    public void unlock()
    {
        bV.unlock();
    }

    private final MStorageEvent bV = new _cls1();
    private final MStorageEvent bW = new _cls2();

    private class _cls1 extends MStorageEvent
    {

        protected void processEvent(Object obj, Object obj1)
        {
            IOnStorageChange ionstoragechange = (IOnStorageChange)obj;
            String s = (String)obj1;
            MStorage _tmp = bX;
            MStorage.a(ionstoragechange, s);
        }

        final MStorage bX;

        _cls1()
        {
            bX = MStorage.this;
            super();
        }
    }


    private class _cls2 extends MStorageEvent
    {

        protected void processEvent(Object obj, Object obj1)
        {
            IOnStorageLoaded ionstorageloaded = (IOnStorageLoaded)obj;
            MStorage _tmp = bX;
            MStorage.a(ionstorageloaded);
        }

        final MStorage bX;

        _cls2()
        {
            bX = MStorage.this;
            super();
        }
    }

}
