// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.os.Handler;
import android.os.Looper;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log, Util

public abstract class SyncTask
{

    public SyncTask()
    {
        this(0L, null);
    }

    public SyncTask(long l, Object obj)
    {
        lock = new Object();
        bj = new _cls1();
        bg = l;
        result = obj;
    }

    static long a(SyncTask synctask)
    {
        return synctask.bh;
    }

    static long a(SyncTask synctask, long l)
    {
        synctask.bi = l;
        return l;
    }

    public Object exec(Handler handler)
    {
        if(handler != null) goto _L2; else goto _L1
_L1:
        Object obj;
        Log.d("MicroMsg.SDK.SyncTask", "null handler, task in exec thread, return now");
        obj = run();
_L4:
        return obj;
_L2:
        if(Thread.currentThread().getId() == handler.getLooper().getThread().getId())
        {
            Log.d("MicroMsg.SDK.SyncTask", "same tid, task in exec thread, return now");
            obj = run();
            continue; /* Loop/switch isn't completed */
        }
        bh = Util.currentTicks();
        synchronized(lock)
        {
            handler.post(bj);
            lock.wait(bg);
        }
_L5:
        long l = Util.ticksToNow(bh);
        Object aobj[] = new Object[4];
        aobj[0] = (new StringBuilder()).append(result).toString();
        aobj[1] = Long.valueOf(l);
        aobj[2] = Long.valueOf(bi);
        aobj[3] = Long.valueOf(l - bi);
        Log.v("MicroMsg.SDK.SyncTask", "sync task done, return=%s, cost=%d(wait=%d, run=%d)", aobj);
        obj = result;
        if(true) goto _L4; else goto _L3
_L3:
        exception;
        obj1;
        JVM INSTR monitorexit ;
        throw exception;
        InterruptedException interruptedexception;
        interruptedexception;
        interruptedexception.printStackTrace();
          goto _L5
    }

    protected abstract Object run();

    public void setResult(Object obj)
    {
        result = obj;
        synchronized(lock)
        {
            lock.notify();
        }
    }

    private final long bg;
    private long bh;
    private long bi;
    private Runnable bj;
    private Object lock;
    private Object result;

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            SyncTask.a(bk, Util.ticksToNow(SyncTask.a(bk)));
            bk.setResult(bk.run());
        }

        final SyncTask bk;

        _cls1()
        {
            bk = SyncTask.this;
            super();
        }
    }

}
