// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.content.*;
import android.hardware.*;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

public class SensorController extends BroadcastReceiver
    implements SensorEventListener
{
    public static interface SensorEventCallBack
    {

        public abstract void onSensorEvent(boolean flag);
    }


    public SensorController(Context context)
    {
        be = false;
        bf = false;
        aY = (SensorManager)context.getSystemService("sensor");
        bc = aY.getDefaultSensor(8);
        boolean flag;
        if(bc != null)
            flag = true;
        else
            flag = false;
        bd = flag;
        aZ = 1.0F + ba;
    }

    public boolean isSensorEnable()
    {
        return bd;
    }

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        if(intent.getAction().equals("android.intent.action.HEADSET_PLUG"))
        {
            int i = intent.getIntExtra("state", 0);
            if(i == 1)
                be = true;
            if(i == 0)
                be = false;
        }
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        if(!be) goto _L2; else goto _L1
_L1:
        return;
_L2:
        float f;
        f = sensorevent.values[0];
        switch(sensorevent.sensor.getType())
        {
        default:
            continue; /* Loop/switch isn't completed */

        case 8: // '\b'
            if(f < aX)
            {
                aX = f;
                ba = 0.5F + f;
            }
            break;
        }
        if(aZ < ba || f >= ba)
            break; /* Loop/switch isn't completed */
        if(bb != null)
        {
            Log.v("MicroMsg.SensorController", "sensor event false");
            bb.onSensorEvent(false);
        }
_L5:
        aZ = f;
        if(true) goto _L1; else goto _L3
_L3:
        if(aZ > ba || f <= ba || bb == null) goto _L5; else goto _L4
_L4:
        Log.v("MicroMsg.SensorController", "sensor event true");
        bb.onSensorEvent(true);
          goto _L5
    }

    public void removeSensorCallBack()
    {
        Log.v("MicroMsg.SensorController", "sensor callback removed");
        aY.unregisterListener(this, bc);
        aY.unregisterListener(this);
        bf = false;
        bb = null;
    }

    public void setSensorCallBack(SensorEventCallBack sensoreventcallback)
    {
        Log.v("MicroMsg.SensorController", "sensor callback set");
        if(!bf)
        {
            aY.registerListener(this, bc, 2);
            bf = true;
        }
        bb = sensoreventcallback;
    }

    private static float aX = 4.294967E+09F;
    private static float ba = 0.5F;
    private SensorManager aY;
    private float aZ;
    private SensorEventCallBack bb;
    private Sensor bc;
    private final boolean bd;
    private boolean be;
    private boolean bf;

}
