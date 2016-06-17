// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.*;
import android.location.Location;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.baidu.location:
//            LocationClient, j, BDLocation, BDNotifyListener, 
//            Jni, BDLocationListener

public class i
{
    public class b extends BroadcastReceiver
    {

        public void onReceive(Context context, Intent intent)
        {
            j._mthif(i.a(a), "timer expire,request location...");
            if(i._mthdo(a) != null && !i._mthdo(a).isEmpty())
                i._mthif(a).requestNotifyLocation();
        }

        final i a;

        public b()
        {
            a = i.this;
            super();
        }
    }

    public class a
        implements BDLocationListener
    {

        public void onReceiveLocation(BDLocation bdlocation)
        {
            i.a(a, bdlocation);
        }

        public void onReceivePoi(BDLocation bdlocation)
        {
        }

        final i a;

        public a()
        {
            a = i.this;
            super();
        }
    }


    public i(Context context, LocationClient locationclient)
    {
        _flddo = "baidu_location_service";
        _fldbyte = null;
        _fldgoto = 3.402823E+38F;
        _fldcase = null;
        b = 0L;
        d = null;
        _fldif = null;
        a = 0;
        _fldchar = 0L;
        _fldvoid = false;
        _fldlong = false;
        _fldtry = null;
        _fldfor = null;
        _fldelse = null;
        _fldint = new a();
        c = false;
        _fldif = context;
        d = locationclient;
        d.registerNotifyLocationListener(_fldint);
        _fldfor = (AlarmManager)_fldif.getSystemService("alarm");
        _fldelse = new b();
        c = false;
    }

    static String a(i k)
    {
        return k._flddo;
    }

    private void a()
    {
        int k = 10000;
        if(_mthdo()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int l;
        boolean flag;
        long l1;
        if(_fldgoto > 5000F)
            l = 0x927c0;
        else
        if(_fldgoto > 1000F)
            l = 0x1d4c0;
        else
        if(_fldgoto > 500F)
            l = 60000;
        else
            l = k;
        if(_fldlong)
            _fldlong = false;
        else
            k = l;
        if(a == 0)
            break; /* Loop/switch isn't completed */
        l1 = (_fldchar + (long)a) - System.currentTimeMillis();
        if((long)k <= l1)
            break; /* Loop/switch isn't completed */
        flag = false;
        if(flag)
        {
            a = k;
            _fldchar = System.currentTimeMillis();
            a(a);
        }
        if(true) goto _L1; else goto _L3
_L3:
        flag = true;
        break MISSING_BLOCK_LABEL_70;
        if(true) goto _L1; else goto _L4
_L4:
    }

    private void a(long l)
    {
        if(_fldvoid)
            _fldfor.cancel(_fldtry);
        _fldtry = PendingIntent.getBroadcast(_fldif, 0, new Intent("android.com.baidu.location.TIMER.NOTIFY"), 0x8000000);
        _fldfor.set(0, l + System.currentTimeMillis(), _fldtry);
        j._mthif(_flddo, (new StringBuilder()).append("timer start:").append(l).toString());
    }

    private void a(BDLocation bdlocation)
    {
        j._mthif(_flddo, "notify new loation");
        _fldvoid = false;
        if(bdlocation.getLocType() == 61 || bdlocation.getLocType() == 161 || bdlocation.getLocType() == 65) goto _L2; else goto _L1
_L1:
        a(0x1d4c0L);
_L7:
        return;
_L2:
        float af[];
        Iterator iterator;
        float f;
        if(System.currentTimeMillis() - b < 5000L || _fldbyte == null)
            continue; /* Loop/switch isn't completed */
        _fldcase = bdlocation;
        b = System.currentTimeMillis();
        af = new float[1];
        iterator = _fldbyte.iterator();
        f = 3.402823E+38F;
_L4:
        BDNotifyListener bdnotifylistener;
        float f1;
        if(!iterator.hasNext())
            break MISSING_BLOCK_LABEL_258;
        bdnotifylistener = (BDNotifyListener)iterator.next();
        Location.distanceBetween(bdlocation.getLatitude(), bdlocation.getLongitude(), bdnotifylistener.mLatitudeC, bdnotifylistener.mLongitudeC, af);
        f1 = af[0] - bdnotifylistener.mRadius - bdlocation.getRadius();
        j._mthif(_flddo, (new StringBuilder()).append("distance:").append(f1).toString());
        if(f1 <= 0.0F)
            break; /* Loop/switch isn't completed */
        if(f1 >= f)
            break MISSING_BLOCK_LABEL_251;
_L5:
        f = f1;
        if(true) goto _L4; else goto _L3
_L3:
        if(bdnotifylistener.Notified < 3)
        {
            bdnotifylistener.Notified = 1 + bdnotifylistener.Notified;
            bdnotifylistener.onNotify(bdlocation, af[0]);
            if(bdnotifylistener.Notified < 3)
                _fldlong = true;
        }
        f1 = f;
          goto _L5
        if(f < _fldgoto)
            _fldgoto = f;
        a = 0;
        a();
        if(true) goto _L7; else goto _L6
_L6:
    }

    static void a(i k, BDLocation bdlocation)
    {
        k.a(bdlocation);
    }

    static ArrayList _mthdo(i k)
    {
        return k._fldbyte;
    }

    private boolean _mthdo()
    {
        boolean flag;
        if(_fldbyte == null || _fldbyte.isEmpty())
        {
            flag = false;
        } else
        {
            Iterator iterator = _fldbyte.iterator();
            flag = false;
            while(iterator.hasNext()) 
            {
                boolean flag1;
                if(((BDNotifyListener)iterator.next()).Notified < 3)
                    flag1 = true;
                else
                    flag1 = flag;
                flag = flag1;
            }
        }
        return flag;
    }

    static LocationClient _mthif(i k)
    {
        return k.d;
    }

    public void a(BDNotifyListener bdnotifylistener)
    {
        j._mthif(_flddo, (new StringBuilder()).append(bdnotifylistener.mCoorType).append("2gcj").toString());
        if(bdnotifylistener.mCoorType != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(!bdnotifylistener.mCoorType.equals("gcj02"))
        {
            double ad[] = Jni._mthif(bdnotifylistener.mLongitude, bdnotifylistener.mLatitude, (new StringBuilder()).append(bdnotifylistener.mCoorType).append("2gcj").toString());
            bdnotifylistener.mLongitudeC = ad[0];
            bdnotifylistener.mLatitudeC = ad[1];
            j._mthif(_flddo, (new StringBuilder()).append(bdnotifylistener.mCoorType).append("2gcj").toString());
            j._mthif(_flddo, (new StringBuilder()).append("coor:").append(bdnotifylistener.mLongitude).append(",").append(bdnotifylistener.mLatitude).append(":").append(bdnotifylistener.mLongitudeC).append(",").append(bdnotifylistener.mLatitudeC).toString());
        }
        if(_fldcase != null && System.currentTimeMillis() - b <= 0x493e0L)
            break; /* Loop/switch isn't completed */
        d.requestNotifyLocation();
_L4:
        a();
        if(true) goto _L1; else goto _L3
_L3:
        float af[] = new float[1];
        Location.distanceBetween(_fldcase.getLatitude(), _fldcase.getLongitude(), bdnotifylistener.mLatitudeC, bdnotifylistener.mLongitudeC, af);
        float f = af[0] - bdnotifylistener.mRadius - _fldcase.getRadius();
        if(f > 0.0F)
        {
            if(f < _fldgoto)
                _fldgoto = f;
        } else
        if(bdnotifylistener.Notified < 3)
        {
            bdnotifylistener.Notified = 1 + bdnotifylistener.Notified;
            bdnotifylistener.onNotify(_fldcase, af[0]);
            if(bdnotifylistener.Notified < 3)
                _fldlong = true;
        }
          goto _L4
        if(true) goto _L1; else goto _L5
_L5:
    }

    public int _mthdo(BDNotifyListener bdnotifylistener)
    {
        int k;
        if(_fldbyte == null)
        {
            k = 0;
        } else
        {
            if(_fldbyte.contains(bdnotifylistener))
                _fldbyte.remove(bdnotifylistener);
            if(_fldbyte.size() == 0 && _fldvoid)
                _fldfor.cancel(_fldtry);
            k = 1;
        }
        return k;
    }

    public int _mthif(BDNotifyListener bdnotifylistener)
    {
        if(_fldbyte == null)
            _fldbyte = new ArrayList();
        _fldbyte.add(bdnotifylistener);
        bdnotifylistener.isAdded = true;
        bdnotifylistener.mNotifyCache = this;
        if(!c)
        {
            _fldif.registerReceiver(_fldelse, new IntentFilter("android.com.baidu.location.TIMER.NOTIFY"));
            c = true;
        }
        if(bdnotifylistener.mCoorType != null) goto _L2; else goto _L1
_L1:
        return 1;
_L2:
        if(!bdnotifylistener.mCoorType.equals("gcj02"))
        {
            double ad[] = Jni._mthif(bdnotifylistener.mLongitude, bdnotifylistener.mLatitude, (new StringBuilder()).append(bdnotifylistener.mCoorType).append("2gcj").toString());
            bdnotifylistener.mLongitudeC = ad[0];
            bdnotifylistener.mLatitudeC = ad[1];
            j._mthif(_flddo, (new StringBuilder()).append(bdnotifylistener.mCoorType).append("2gcj").toString());
            j._mthif(_flddo, (new StringBuilder()).append("coor:").append(bdnotifylistener.mLongitude).append(",").append(bdnotifylistener.mLatitude).append(":").append(bdnotifylistener.mLongitudeC).append(",").append(bdnotifylistener.mLatitudeC).toString());
        }
        if(_fldcase != null && System.currentTimeMillis() - b <= 30000L)
            break; /* Loop/switch isn't completed */
        d.requestNotifyLocation();
_L4:
        a();
        if(true) goto _L1; else goto _L3
_L3:
        float af[] = new float[1];
        Location.distanceBetween(_fldcase.getLatitude(), _fldcase.getLongitude(), bdnotifylistener.mLatitudeC, bdnotifylistener.mLongitudeC, af);
        float f = af[0] - bdnotifylistener.mRadius - _fldcase.getRadius();
        if(f > 0.0F)
        {
            if(f < _fldgoto)
                _fldgoto = f;
        } else
        if(bdnotifylistener.Notified < 3)
        {
            bdnotifylistener.Notified = 1 + bdnotifylistener.Notified;
            bdnotifylistener.onNotify(_fldcase, af[0]);
            if(bdnotifylistener.Notified < 3)
                _fldlong = true;
        }
          goto _L4
        if(true) goto _L1; else goto _L5
_L5:
    }

    public void _mthif()
    {
        if(_fldvoid)
            _fldfor.cancel(_fldtry);
        _fldcase = null;
        b = 0L;
        if(c)
        {
            j._mthif(_flddo, "unregister...");
            _fldif.unregisterReceiver(_fldelse);
        }
        c = false;
    }

    public static final String _fldnew = "android.com.baidu.location.TIMER.NOTIFY";
    private int a;
    private long b;
    private ArrayList _fldbyte;
    private boolean c;
    private BDLocation _fldcase;
    private long _fldchar;
    private LocationClient d;
    private String _flddo;
    private b _fldelse;
    private AlarmManager _fldfor;
    private float _fldgoto;
    private Context _fldif;
    private a _fldint;
    private boolean _fldlong;
    private PendingIntent _fldtry;
    private boolean _fldvoid;
}
