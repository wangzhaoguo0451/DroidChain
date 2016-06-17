// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.os.Handler;
import java.util.Vector;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

public class QueueWorkerThread
{
    final class WorkerThread extends Thread
    {

        public final void run()
        {
_L3:
            if(aW <= 0)
                break; /* Loop/switch isn't completed */
            Object obj = QueueWorkerThread.d(aV);
            obj;
            JVM INSTR monitorenter ;
            if(QueueWorkerThread.e(aV))
                QueueWorkerThread.d(aV).wait();
_L1:
            Exception exception;
            Exception exception1;
            ThreadObject threadobject;
            try
            {
                threadobject = (ThreadObject)QueueWorkerThread.f(aV).poll(2000L, TimeUnit.MILLISECONDS);
            }
            catch(Exception exception2)
            {
                exception2.printStackTrace();
                threadobject = null;
            }
            if(threadobject == null)
            {
                aW = -1 + aW;
            } else
            {
                aW = 60;
                if(threadobject.doInBackground())
                    QueueWorkerThread.g(aV).sendMessage(QueueWorkerThread.g(aV).obtainMessage(0, threadobject));
            }
            continue; /* Loop/switch isn't completed */
            exception1;
            exception1.printStackTrace();
              goto _L1
            exception;
            throw exception;
            if(true) goto _L3; else goto _L2
_L2:
            QueueWorkerThread.c(aV).remove(this);
            Log.d("QueueWorkerThread.QueueWorkerThread", (new StringBuilder("dktest Finish queueToReqSize:")).append(QueueWorkerThread.f(aV).size()).append(" ThreadSize:").append(QueueWorkerThread.c(aV).size()).toString());
            return;
        }

        final QueueWorkerThread aV;
        private int aW;

        private WorkerThread()
        {
            aV = QueueWorkerThread.this;
            super(QueueWorkerThread.a(QueueWorkerThread.this));
            aW = 60;
            setPriority(QueueWorkerThread.b(QueueWorkerThread.this));
            QueueWorkerThread.c(QueueWorkerThread.this).add(this);
        }

        WorkerThread(byte byte0)
        {
            this();
        }
    }

    public static interface ThreadObject
    {

        public abstract boolean doInBackground();

        public abstract boolean onPostExecute();
    }


    public QueueWorkerThread(int i, String s)
    {
        this(i, s, 1);
    }

    public QueueWorkerThread(int i, String s, int j)
    {
        aQ = new LinkedBlockingQueue();
        aR = false;
        aS = 1;
        priority = 1;
        name = "";
        lock = new byte[0];
        aT = new Vector();
        aU = new _cls1();
        aS = j;
        name = s;
        priority = i;
    }

    static String a(QueueWorkerThread queueworkerthread)
    {
        return queueworkerthread.name;
    }

    static int b(QueueWorkerThread queueworkerthread)
    {
        return queueworkerthread.priority;
    }

    static Vector c(QueueWorkerThread queueworkerthread)
    {
        return queueworkerthread.aT;
    }

    static Object d(QueueWorkerThread queueworkerthread)
    {
        return queueworkerthread.lock;
    }

    static boolean e(QueueWorkerThread queueworkerthread)
    {
        return queueworkerthread.aR;
    }

    static LinkedBlockingQueue f(QueueWorkerThread queueworkerthread)
    {
        return queueworkerthread.aQ;
    }

    static Handler g(QueueWorkerThread queueworkerthread)
    {
        return queueworkerthread.aU;
    }

    public int add(ThreadObject threadobject)
    {
        byte byte0 = 0;
        if(threadobject != null) goto _L2; else goto _L1
_L1:
        Log.e("QueueWorkerThread.QueueWorkerThread", "add empty thread object");
        byte0 = -1;
_L4:
        return byte0;
_L2:
label0:
        {
            try
            {
                if(aQ.offer(threadobject, 1L, TimeUnit.MILLISECONDS))
                    break label0;
                Log.e("QueueWorkerThread.QueueWorkerThread", "add To Queue failed");
            }
            catch(Exception exception)
            {
                Log.e("QueueWorkerThread.QueueWorkerThread", (new StringBuilder("add To Queue failed :")).append(exception.getMessage()).toString());
                exception.printStackTrace();
                byte0 = -3;
                continue; /* Loop/switch isn't completed */
            }
            byte0 = -2;
            continue; /* Loop/switch isn't completed */
        }
        if(aT.size() == 0 || aQ.size() > 0 && aS > aT.size())
            (new WorkerThread((byte)0)).start();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public int getQueueSize()
    {
        return aQ.size();
    }

    public boolean isDead()
    {
        boolean flag;
        if(aT == null || aT.size() == 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public void pause(boolean flag)
    {
        Object obj = lock;
        obj;
        JVM INSTR monitorenter ;
        aR = flag;
        if(!flag)
            synchronized(lock)
            {
                lock.notifyAll();
            }
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private LinkedBlockingQueue aQ;
    private boolean aR;
    private int aS;
    private Vector aT;
    private Handler aU;
    private Object lock;
    private String name;
    private int priority;

    private class _cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
            if(message != null && message.obj != null)
                ((ThreadObject)message.obj).onPostExecute();
        }

        final QueueWorkerThread aV;

        _cls1()
        {
            aV = QueueWorkerThread.this;
            super();
        }
    }

}
