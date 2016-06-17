// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.shake;

import android.content.Context;
import android.hardware.*;

public class ShakeListener
    implements SensorEventListener
{
    public static interface OnShakeListener
    {

        public abstract void onShake();
    }


    public ShakeListener(Context context)
    {
        Shaked = false;
        mContext = context;
        start();
    }

    public void onAccuracyChanged(Sensor sensor1, int i)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        long l;
        long l1;
        l = System.currentTimeMillis();
        l1 = l - lastUpdateTime;
        if(l1 >= 70L) goto _L2; else goto _L1
_L1:
        return;
_L2:
        lastUpdateTime = l;
        float f = sensorevent.values[0];
        float f1 = sensorevent.values[1];
        float f2 = sensorevent.values[2];
        float f3 = f - lastX;
        float f4 = f1 - lastY;
        float f5 = f2 - lastZ;
        lastX = f;
        lastY = f1;
        lastZ = f2;
        if(10000D * (Math.sqrt(f3 * f3 + f4 * f4 + f5 * f5) / (double)l1) >= 3000D && !Shaked)
        {
            onShakeListener.onShake();
            Shaked = true;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void setOnShakeListener(OnShakeListener onshakelistener)
    {
        onShakeListener = onshakelistener;
    }

    public void setShaked(boolean flag)
    {
        Shaked = flag;
    }

    public void start()
    {
        sensorManager = (SensorManager)mContext.getSystemService("sensor");
        if(sensorManager != null)
            sensor = sensorManager.getDefaultSensor(1);
        if(sensor != null)
            sensorManager.registerListener(this, sensor, 1);
    }

    public void stop()
    {
        sensorManager.unregisterListener(this);
    }

    private static final int SPEED_SHRESHOLD = 3000;
    private static final int UPTATE_INTERVAL_TIME = 70;
    private boolean Shaked;
    private long lastUpdateTime;
    private float lastX;
    private float lastY;
    private float lastZ;
    private Context mContext;
    private OnShakeListener onShakeListener;
    private Sensor sensor;
    private SensorManager sensorManager;
}
