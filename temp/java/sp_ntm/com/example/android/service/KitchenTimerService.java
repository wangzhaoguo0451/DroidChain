// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.example.android.service;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import java.util.Timer;
import java.util.TimerTask;

public class KitchenTimerService extends Service
{
    class KitchenTimerBinder extends Binder
    {

        KitchenTimerService getService()
        {
            return KitchenTimerService.this;
        }

        final KitchenTimerService this$0;

        KitchenTimerBinder()
        {
            this$0 = KitchenTimerService.this;
            super();
        }
    }


    public KitchenTimerService()
    {
    }

    public IBinder onBind(Intent intent)
    {
        return new KitchenTimerBinder();
    }

    public void onCreate()
    {
        super.onCreate();
    }

    public void onDestroy()
    {
        super.onDestroy();
        if(timer != null)
        {
            timer.cancel();
            timer = null;
        }
    }

    public void onRebind(Intent intent)
    {
    }

    public void onStart(Intent intent, int i)
    {
        super.onStart(intent, i);
        if(timer != null)
            timer.cancel();
        timer = new Timer();
        TimerTask timertask = new TimerTask() {

            public void run()
            {
                sendBroadcast(new Intent("Kitchen Timer Service"));
            }

            final KitchenTimerService this$0;

            
            {
                this$0 = KitchenTimerService.this;
                super();
            }
        };
        timer.schedule(timertask, 1000L);
    }

    public boolean onUnbind(Intent intent)
    {
        return true;
    }

    public void schedule(long l)
    {
        if(timer != null)
            timer.cancel();
        if(l != 0L)
        {
            timer = new Timer();
            TimerTask timertask = new TimerTask() {

                public void run()
                {
                    sendBroadcast(new Intent("Kitchen Timer Service"));
                }

                final KitchenTimerService this$0;

            
            {
                this$0 = KitchenTimerService.this;
                super();
            }
            };
            timer.schedule(timertask, l);
        } else
        {
            timer.cancel();
        }
    }

    public static final String ACTION = "Kitchen Timer Service";
    private Timer timer;
}
