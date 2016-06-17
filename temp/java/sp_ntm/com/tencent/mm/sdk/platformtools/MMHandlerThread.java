// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.os.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Util, Log

public class MMHandlerThread
{
    public static interface ResetCallback
    {

        public abstract void callback();
    }

    public static interface IWaitWorkThread
    {

        public abstract boolean doInBackground();

        public abstract boolean onPostExecute();
    }


    public MMHandlerThread()
    {
        ao = null;
        ap = null;
        c();
    }

    static HandlerThread a(MMHandlerThread mmhandlerthread)
    {
        return mmhandlerthread.ao;
    }

    static void a(Runnable runnable)
    {
        if(runnable != null)
            (new Handler(Looper.getMainLooper())).postAtFrontOfQueue(runnable);
    }

    static void b(MMHandlerThread mmhandlerthread)
    {
        mmhandlerthread.c();
    }

    private void c()
    {
        Object aobj[] = new Object[1];
        aobj[0] = Util.getStack();
        Log.d("MicroMsg.MMHandlerThread", "MMHandlerThread init [%s]", aobj);
        ap = null;
        ao = new HandlerThread("MMHandlerThread", 1);
        ao.start();
    }

    public static boolean isMainThread()
    {
        boolean flag = true;
        boolean flag1;
        if(mainThreadID == -1L)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertFalse("mainThreadID not init ", flag1);
        if(Thread.currentThread().getId() != mainThreadID)
            flag = false;
        return flag;
    }

    public static void postToMainThread(Runnable runnable)
    {
        if(runnable != null)
            (new Handler(Looper.getMainLooper())).post(runnable);
    }

    public static void postToMainThreadDelayed(Runnable runnable, long l)
    {
        if(runnable != null)
            (new Handler(Looper.getMainLooper())).postDelayed(runnable, l);
    }

    public static void setMainThreadID(long l)
    {
        if(mainThreadID < 0L && l > 0L)
            mainThreadID = l;
    }

    public Looper getLooper()
    {
        return ao.getLooper();
    }

    public Handler getWorkerHandler()
    {
        if(ap == null)
            ap = new Handler(ao.getLooper());
        return ap;
    }

    public int postAtFrontOfWorker(IWaitWorkThread iwaitworkthread)
    {
        byte byte0;
        if(iwaitworkthread == null)
            byte0 = -1;
        else
        if((new Handler(getLooper())).postAtFrontOfQueue(new _cls3(iwaitworkthread)))
            byte0 = 0;
        else
            byte0 = -2;
        return byte0;
    }

    public int postToWorker(Runnable runnable)
    {
        byte byte0;
        if(runnable == null)
        {
            byte0 = -1;
        } else
        {
            getWorkerHandler().post(runnable);
            byte0 = 0;
        }
        return byte0;
    }

    public int reset(IWaitWorkThread iwaitworkthread)
    {
        return postAtFrontOfWorker(new _cls1(iwaitworkthread));
    }

    public int syncReset(ResetCallback resetcallback)
    {
        byte abyte0[];
        Assert.assertTrue("syncReset should in mainThread", isMainThread());
        abyte0 = new byte[0];
        _cls2 _lcls2 = new _cls2(resetcallback, abyte0);
        abyte0;
        JVM INSTR monitorenter ;
        int i = postAtFrontOfWorker(_lcls2);
        if(i != 0)
            break MISSING_BLOCK_LABEL_41;
        Exception exception;
        try
        {
            abyte0.wait();
        }
        catch(Exception exception1) { }
        abyte0;
        JVM INSTR monitorexit ;
        return i;
        exception;
        throw exception;
    }

    public static long mainThreadID = -1L;
    private HandlerThread ao;
    private Handler ap;


    private class _cls3
        implements Runnable
    {

        public void run()
        {
            aq.doInBackground();
            class _cls1
                implements Runnable
            {

                public void run()
                {
                    au.aq.onPostExecute();
                }

                final _cls3 au;

                _cls1()
                {
                    au = _cls3.this;
                    super();
                }
            }

            MMHandlerThread.a(new _cls1());
        }

        final IWaitWorkThread aq;
        final MMHandlerThread ar;

        _cls3(IWaitWorkThread iwaitworkthread)
        {
            ar = MMHandlerThread.this;
            aq = iwaitworkthread;
            super();
        }
    }


    private class _cls1
        implements IWaitWorkThread
    {

        public boolean doInBackground()
        {
            boolean flag;
            if(aq != null)
            {
                flag = aq.doInBackground();
            } else
            {
                MMHandlerThread.a(ar).quit();
                MMHandlerThread.b(ar);
                flag = true;
            }
            return flag;
        }

        public boolean onPostExecute()
        {
            boolean flag;
            if(aq != null)
                flag = aq.onPostExecute();
            else
                flag = true;
            return flag;
        }

        final IWaitWorkThread aq;
        final MMHandlerThread ar;

        _cls1(IWaitWorkThread iwaitworkthread)
        {
            ar = MMHandlerThread.this;
            aq = iwaitworkthread;
            super();
        }
    }


    private class _cls2
        implements IWaitWorkThread
    {

        public boolean doInBackground()
        {
            Log.d("MicroMsg.MMHandlerThread", "syncReset doInBackground");
            MMHandlerThread.a(ar).quit();
            if(as != null)
                as.callback();
            MMHandlerThread.b(ar);
            synchronized(at)
            {
                at.notify();
            }
            return true;
        }

        public boolean onPostExecute()
        {
            Log.d("MicroMsg.MMHandlerThread", "syncReset onPostExecute");
            return true;
        }

        final MMHandlerThread ar;
        final ResetCallback as;
        final Object at;

        _cls2(ResetCallback resetcallback, Object obj)
        {
            ar = MMHandlerThread.this;
            as = resetcallback;
            at = obj;
            super();
        }
    }

}
