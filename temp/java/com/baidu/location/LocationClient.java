// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;

import android.content.*;
import android.location.Location;
import android.os.*;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.baidu.location:
//            LocationClientOption, i, BDLocationListener, BDLocation, 
//            BDNotifyListener, j, f

public final class LocationClient
{
    private class a extends Handler
    {

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR lookupswitch 17: default 152
        //                       1: 224
        //                       2: 234
        //                       3: 158
        //                       4: 254
        //                       5: 180
        //                       6: 191
        //                       7: 274
        //                       8: 169
        //                       9: 202
        //                       10: 213
        //                       11: 244
        //                       12: 264
        //                       21: 334
        //                       26: 347
        //                       27: 360
        //                       54: 284
        //                       55: 309;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18
_L1:
            super.handleMessage(message);
_L20:
            return;
_L4:
            LocationClient._mthdo(a, message);
            continue; /* Loop/switch isn't completed */
_L9:
            LocationClient._mthif(a, message);
            continue; /* Loop/switch isn't completed */
_L6:
            LocationClient.a(a, message);
            continue; /* Loop/switch isn't completed */
_L7:
            LocationClient._mthtry(a, message);
            continue; /* Loop/switch isn't completed */
_L10:
            LocationClient._mthnew(a, message);
            continue; /* Loop/switch isn't completed */
_L11:
            LocationClient._mthfor(a, message);
            continue; /* Loop/switch isn't completed */
_L2:
            LocationClient._mthif(a);
            continue; /* Loop/switch isn't completed */
_L3:
            LocationClient._mthnew(a);
            continue; /* Loop/switch isn't completed */
_L12:
            LocationClient._mthcase(a);
            continue; /* Loop/switch isn't completed */
_L5:
            LocationClient.a(a);
            continue; /* Loop/switch isn't completed */
_L13:
            LocationClient._mthfor(a);
            continue; /* Loop/switch isn't completed */
_L8:
            LocationClient._mthgoto(a);
            continue; /* Loop/switch isn't completed */
_L17:
            if(LocationClient._mthbyte(a)._fldvoid)
                LocationClient._mthif(a, true);
            continue; /* Loop/switch isn't completed */
_L18:
            if(LocationClient._mthbyte(a)._fldvoid)
                LocationClient._mthif(a, false);
            continue; /* Loop/switch isn't completed */
_L14:
            LocationClient.a(a, message, 21);
            continue; /* Loop/switch isn't completed */
_L15:
            LocationClient.a(a, message, 26);
            continue; /* Loop/switch isn't completed */
_L16:
            LocationClient._mthint(a, message);
            if(true) goto _L20; else goto _L19
_L19:
        }

        final LocationClient a;

        private a()
        {
            a = LocationClient.this;
            super();
        }

        a(_cls1 _pcls1)
        {
            this();
        }
    }

    private class b
        implements Runnable
    {

        public void run()
        {
            Object obj = LocationClient._mthdo(a);
            obj;
            JVM INSTR monitorenter ;
            LocationClient._mthfor(a, false);
            if(LocationClient._mthchar(a) != null && LocationClient._mthint(a) != null && (LocationClient._mthelse(a) != null && LocationClient._mthelse(a).size() >= 1)) goto _L2; else goto _L1
            Exception exception;
            exception;
            throw exception;
_L2:
            com.baidu.location.j._mthif("baidu_location_Client", "request location ...");
            LocationClient._mthtry(a).obtainMessage(4).sendToTarget();
            obj;
            JVM INSTR monitorexit ;
_L1:
        }

        final LocationClient a;

        private b()
        {
            a = LocationClient.this;
            super();
        }

        b(_cls1 _pcls1)
        {
            this();
        }
    }


    public LocationClient(Context context)
    {
        e = "3.3";
        r = 0L;
        _fldchar = 0L;
        A = null;
        l = new LocationClientOption();
        q = false;
        j = null;
        k = null;
        _flddo = new a(null);
        i = new Messenger(_flddo);
        C = null;
        x = null;
        d = false;
        v = false;
        g = false;
        _fldbyte = null;
        a = false;
        _fldint = false;
        _fldnew = new Object();
        _fldelse = null;
        w = false;
        c = null;
        z = null;
        u = "http://loc.map.baidu.com/sdk.php";
        _fldlong = Boolean.valueOf(false);
        _fldcase = Boolean.valueOf(false);
        t = new _cls1();
        j = context;
        l = new LocationClientOption();
        _fldelse = new i(j, this);
    }

    public LocationClient(Context context, LocationClientOption locationclientoption)
    {
        e = "3.3";
        r = 0L;
        _fldchar = 0L;
        A = null;
        l = new LocationClientOption();
        q = false;
        j = null;
        k = null;
        _flddo = new a(null);
        i = new Messenger(_flddo);
        C = null;
        x = null;
        d = false;
        v = false;
        g = false;
        _fldbyte = null;
        a = false;
        _fldint = false;
        _fldnew = new Object();
        _fldelse = null;
        w = false;
        c = null;
        z = null;
        u = "http://loc.map.baidu.com/sdk.php";
        _fldlong = Boolean.valueOf(false);
        _fldcase = Boolean.valueOf(false);
        t = new _cls1();
        j = context;
        l = locationclientoption;
        _fldelse = new i(j, this);
    }

    private Bundle a()
    {
        Bundle bundle;
        if(l == null)
        {
            bundle = null;
        } else
        {
            bundle = new Bundle();
            bundle.putInt("num", l.a);
            bundle.putFloat("distance", l._flddo);
            bundle.putBoolean("extraInfo", l._fldif);
        }
        return bundle;
    }

    static Messenger a(LocationClient locationclient, Messenger messenger)
    {
        locationclient.k = messenger;
        return messenger;
    }

    private void a(int i1)
    {
        if(i1 == 26 && v)
        {
            for(Iterator iterator1 = C.iterator(); iterator1.hasNext(); ((BDLocationListener)iterator1.next()).onReceivePoi(x));
            v = false;
        }
        if((d || l._fldvoid && x.getLocType() == 61 || x.getLocType() == 66 || x.getLocType() == 67) && (l == null || !l.isDisableCache() || x.getLocType() != 65)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        for(Iterator iterator = C.iterator(); iterator.hasNext(); ((BDLocationListener)iterator.next()).onReceiveLocation(x));
        if(!_fldint);
        if(x.getLocType() != 66 && x.getLocType() != 67)
            d = false;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private void a(Message message)
    {
        if(message != null && message.obj != null)
        {
            BDNotifyListener bdnotifylistener = (BDNotifyListener)message.obj;
            _fldelse._mthif(bdnotifylistener);
        }
    }

    private void a(Message message, int i1)
    {
        String s1 = message.getData().getString("locStr");
        com.baidu.location.j._mthif("baidu_location_Client", (new StringBuilder()).append("on receive new location : ").append(s1).toString());
        com.baidu.location.j.a("baidu_location_Client", (new StringBuilder()).append("on receive new location : ").append(s1).toString());
        x = new BDLocation(s1);
        a(i1);
    }

    static void a(LocationClient locationclient)
    {
        locationclient._mthbyte();
    }

    static void a(LocationClient locationclient, Message message)
    {
        locationclient._mthnew(message);
    }

    static void a(LocationClient locationclient, Message message, int i1)
    {
        locationclient.a(message, i1);
    }

    static boolean a(LocationClient locationclient, boolean flag)
    {
        locationclient.q = flag;
        return flag;
    }

    static LocationClientOption _mthbyte(LocationClient locationclient)
    {
        return locationclient.l;
    }

    private void _mthbyte()
    {
        if(k != null) goto _L2; else goto _L1
_L1:
        com.baidu.location.j._mthif("baidu_location_Client", "server not connected");
_L4:
        return;
_L2:
        if(!a || !l._fldvoid)
        {
            Message message = Message.obtain(null, 22);
            Object obj;
            try
            {
                message.replyTo = i;
                k.send(message);
                r = System.currentTimeMillis();
                d = true;
                com.baidu.location.j._mthif("baidu_location_Client", "send request to server...");
            }
            catch(Exception exception)
            {
                exception.printStackTrace();
            }
        }
        obj = _fldnew;
        obj;
        JVM INSTR monitorenter ;
        if(l != null && l._fldint >= 1000 && !g)
        {
            if(_fldbyte == null)
                _fldbyte = new b(null);
            _flddo.postDelayed(_fldbyte, l._fldint);
            g = true;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    static void _mthcase(LocationClient locationclient)
    {
        locationclient._mthnew();
    }

    static Messenger _mthchar(LocationClient locationclient)
    {
        return locationclient.k;
    }

    static Object _mthdo(LocationClient locationclient)
    {
        return locationclient._fldnew;
    }

    private void _mthdo()
    {
        if(k != null)
        {
            Message message = Message.obtain(null, 25);
            try
            {
                message.replyTo = i;
                message.setData(a());
                k.send(message);
                _fldchar = System.currentTimeMillis();
                v = true;
                com.baidu.location.j._mthif("baidu_location_Client", "send poi request to server...");
            }
            catch(Exception exception)
            {
                exception.printStackTrace();
            }
        }
    }

    private void _mthdo(Message message)
    {
        com.baidu.location.j._mthif("baidu_location_Client", "onSetOption...");
        if(message != null && message.obj != null) goto _L2; else goto _L1
_L1:
        com.baidu.location.j._mthif("baidu_location_Client", "setOption, but msg.obj is null");
_L4:
        return;
_L2:
        LocationClientOption locationclientoption;
        locationclientoption = (LocationClientOption)message.obj;
        if(l.equals(locationclientoption))
            continue; /* Loop/switch isn't completed */
        if(l._fldint == locationclientoption._fldint)
            break MISSING_BLOCK_LABEL_156;
        synchronized(_fldnew)
        {
            if(g)
            {
                _flddo.removeCallbacks(_fldbyte);
                g = false;
            }
            if(locationclientoption._fldint >= 1000 && !g)
            {
                if(_fldbyte == null)
                    _fldbyte = new b(null);
                _flddo.postDelayed(_fldbyte, locationclientoption._fldint);
                g = true;
            }
        }
_L5:
        l = new LocationClientOption(locationclientoption);
        Exception exception1;
        if(k == null)
            com.baidu.location.j._mthif("baidu_location_Client", "server not connected");
        else
            try
            {
                Message message1 = Message.obtain(null, 15);
                message1.replyTo = i;
                message1.setData(_mthif());
                k.send(message1);
                com.baidu.location.j._mthif("baidu_location_Client", "change option ...");
            }
            catch(Exception exception)
            {
                exception.printStackTrace();
            }
        if(true) goto _L4; else goto _L3
_L3:
        exception2;
        obj;
        JVM INSTR monitorexit ;
        try
        {
            throw exception2;
        }
        // Misplaced declaration of an exception variable
        catch(Exception exception1)
        {
            com.baidu.location.j._mthif("baidu_location_Client", "set location excpetion...");
        }
          goto _L5
    }

    static void _mthdo(LocationClient locationclient, Message message)
    {
        locationclient._mthdo(message);
    }

    static boolean _mthdo(LocationClient locationclient, boolean flag)
    {
        locationclient._fldint = flag;
        return flag;
    }

    static ArrayList _mthelse(LocationClient locationclient)
    {
        return locationclient.C;
    }

    private void _mthfor()
    {
        if(!q)
        {
            com.baidu.location.j._mthtry();
            A = j.getPackageName();
            z = (new StringBuilder()).append(A).append("_bdls_v2.9").toString();
            com.baidu.location.j._mthif("baidu_location_Client", z);
            Intent intent = new Intent(j, com/baidu/location/f);
            if(l == null)
                l = new LocationClientOption();
            try
            {
                j.bindService(intent, t, 1);
            }
            catch(Exception exception)
            {
                exception.printStackTrace();
                q = false;
            }
        }
    }

    private void _mthfor(Message message)
    {
        BDLocation bdlocation = new BDLocation(message.getData().getString("locStr"));
        if(c != null && (l == null || !l.isDisableCache() || bdlocation.getLocType() != 65))
            c.onReceiveLocation(bdlocation);
    }

    static void _mthfor(LocationClient locationclient)
    {
        locationclient._mthtry();
    }

    static void _mthfor(LocationClient locationclient, Message message)
    {
        locationclient._mthint(message);
    }

    static boolean _mthfor(LocationClient locationclient, boolean flag)
    {
        locationclient.g = flag;
        return flag;
    }

    static void _mthgoto(LocationClient locationclient)
    {
        locationclient._mthdo();
    }

    private Bundle _mthif()
    {
        Bundle bundle;
        if(l == null)
        {
            bundle = null;
        } else
        {
            bundle = new Bundle();
            bundle.putString("packName", A);
            bundle.putString("prodName", l._fldnew);
            bundle.putString("coorType", l._fldtry);
            bundle.putString("addrType", l._fldchar);
            bundle.putString("Url", u);
            bundle.putBoolean("openGPS", l._fldcase);
            bundle.putBoolean("location_change_notify", l._fldvoid);
            bundle.putInt("scanSpan", l._fldint);
            bundle.putInt("timeOut", l._fldlong);
            bundle.putInt("priority", l._fldgoto);
            bundle.putBoolean("map", _fldlong.booleanValue());
            bundle.putBoolean("import", _fldcase.booleanValue());
        }
        return bundle;
    }

    private void _mthif(Message message)
    {
        if(message != null && message.obj != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        BDLocationListener bdlocationlistener = (BDLocationListener)message.obj;
        if(C != null && C.contains(bdlocationlistener))
            C.remove(bdlocationlistener);
        if(true) goto _L1; else goto _L3
_L3:
    }

    static void _mthif(LocationClient locationclient)
    {
        locationclient._mthfor();
    }

    static void _mthif(LocationClient locationclient, Message message)
    {
        locationclient._mthtry(message);
    }

    static boolean _mthif(LocationClient locationclient, boolean flag)
    {
        locationclient.a = flag;
        return flag;
    }

    static Messenger _mthint(LocationClient locationclient)
    {
        return locationclient.i;
    }

    private void _mthint()
    {
        if(q && k != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Message message = Message.obtain(null, 12);
        message.replyTo = i;
        try
        {
            k.send(message);
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
        j.unbindService(t);
        synchronized(_fldnew)
        {
            try
            {
                if(g)
                {
                    _flddo.removeCallbacks(_fldbyte);
                    g = false;
                }
            }
            // Misplaced declaration of an exception variable
            catch(Exception exception1) { }
        }
        _fldelse._mthif();
        k = null;
        com.baidu.location.j._mthnew();
        q = false;
        if(true) goto _L1; else goto _L3
_L3:
        exception2;
        obj;
        JVM INSTR monitorexit ;
        Exception exception1;
        throw exception2;
    }

    private void _mthint(Message message)
    {
        if(message != null && message.obj != null)
        {
            BDNotifyListener bdnotifylistener = (BDNotifyListener)message.obj;
            _fldelse._mthdo(bdnotifylistener);
        }
    }

    static void _mthint(LocationClient locationclient, Message message)
    {
        locationclient._mthfor(message);
    }

    static Bundle _mthlong(LocationClient locationclient)
    {
        return locationclient._mthif();
    }

    private void _mthnew()
    {
        if(k == null)
        {
            com.baidu.location.j._mthif("baidu_location_Client", "server not connected");
        } else
        {
            Message message = Message.obtain(null, 22);
            try
            {
                message.replyTo = i;
                k.send(message);
            }
            catch(Exception exception)
            {
                exception.printStackTrace();
            }
        }
    }

    private void _mthnew(Message message)
    {
        if(message != null && message.obj != null)
        {
            BDLocationListener bdlocationlistener = (BDLocationListener)message.obj;
            if(C == null)
                C = new ArrayList();
            C.add(bdlocationlistener);
        }
    }

    static void _mthnew(LocationClient locationclient)
    {
        locationclient._mthint();
    }

    static void _mthnew(LocationClient locationclient, Message message)
    {
        locationclient.a(message);
    }

    static a _mthtry(LocationClient locationclient)
    {
        return locationclient._flddo;
    }

    private void _mthtry()
    {
        Message message = Message.obtain(null, 28);
        message.replyTo = i;
        k.send(message);
_L1:
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L1
    }

    private void _mthtry(Message message)
    {
        if(message != null && message.obj != null)
            c = (BDLocationListener)message.obj;
    }

    static void _mthtry(LocationClient locationclient, Message message)
    {
        locationclient._mthif(message);
    }

    public BDLocation getLastKnownLocation()
    {
        return x;
    }

    public LocationClientOption getLocOption()
    {
        return l;
    }

    public String getVersion()
    {
        return e;
    }

    public boolean isStarted()
    {
        return q;
    }

    public void registerLocationListener(BDLocationListener bdlocationlistener)
    {
        Message message = _flddo.obtainMessage(5);
        message.obj = bdlocationlistener;
        message.sendToTarget();
    }

    public void registerNotify(BDNotifyListener bdnotifylistener)
    {
        Message message = _flddo.obtainMessage(9);
        message.obj = bdnotifylistener;
        message.sendToTarget();
    }

    public void registerNotifyLocationListener(BDLocationListener bdlocationlistener)
    {
        Message message = _flddo.obtainMessage(8);
        message.obj = bdlocationlistener;
        message.sendToTarget();
    }

    public void removeNotifyEvent(BDNotifyListener bdnotifylistener)
    {
        Message message = _flddo.obtainMessage(10);
        message.obj = bdnotifylistener;
        message.sendToTarget();
    }

    public int requestLocation()
    {
        int i1 = 1;
        if(k != null && i != null)
            if(C == null || C.size() < i1)
                i1 = 2;
            else
            if(System.currentTimeMillis() - r < 1000L)
            {
                i1 = 6;
            } else
            {
                com.baidu.location.j._mthif("baidu_location_Client", "request location ...");
                _flddo.obtainMessage(4).sendToTarget();
                i1 = 0;
            }
        return i1;
    }

    public void requestNotifyLocation()
    {
        _flddo.obtainMessage(11).sendToTarget();
    }

    public int requestOfflineLocation()
    {
        int i1 = 1;
        if(k != null && i != null)
            if(C == null || C.size() < i1)
            {
                i1 = 2;
            } else
            {
                _flddo.obtainMessage(12).sendToTarget();
                i1 = 0;
            }
        return i1;
    }

    public int requestPoi()
    {
        byte byte0 = 7;
        if(k != null && i != null) goto _L2; else goto _L1
_L1:
        byte0 = 1;
_L4:
        return byte0;
_L2:
        if(C == null || C.size() < 1)
            byte0 = 2;
        else
        if(System.currentTimeMillis() - _fldchar < 6000L)
            byte0 = 6;
        else
        if(l.a >= 1)
        {
            com.baidu.location.j._mthif("baidu_location_Client", "request location ...");
            _flddo.obtainMessage(byte0).sendToTarget();
            byte0 = 0;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void setForBaiduMap(boolean flag)
    {
        _fldlong = Boolean.valueOf(flag);
    }

    public void setLocOption(LocationClientOption locationclientoption)
    {
        if(locationclientoption == null)
            locationclientoption = new LocationClientOption();
        Message message = _flddo.obtainMessage(3);
        message.obj = locationclientoption;
        message.sendToTarget();
    }

    public void start()
    {
        _flddo.obtainMessage(1).sendToTarget();
    }

    public void stop()
    {
        _flddo.obtainMessage(2).sendToTarget();
    }

    public void unRegisterLocationListener(BDLocationListener bdlocationlistener)
    {
        Message message = _flddo.obtainMessage(6);
        message.obj = bdlocationlistener;
        message.sendToTarget();
    }

    public boolean updateLocation(Location location)
    {
        boolean flag;
        if(k == null || i == null || location == null)
        {
            flag = false;
        } else
        {
            try
            {
                Message message = Message.obtain(null, 57);
                message.obj = location;
                k.send(message);
            }
            catch(Exception exception)
            {
                exception.printStackTrace();
            }
            flag = true;
        }
        return flag;
    }

    private static final int B = 4;
    private static final int b = 8;
    private static final int f = 9;
    private static final String _fldfor = "baidu_location_Client";
    private static final int _fldgoto = 1000;
    private static final int h = 7;
    private static final int _fldif = 10;
    private static final int m = 5;
    private static final int n = 12;
    private static final int o = 6;
    private static final int p = 2;
    private static final int s = 6000;
    private static final int _fldtry = 1;
    private static final int _fldvoid = 3;
    private static final int y = 11;
    private String A;
    private ArrayList C;
    private boolean a;
    private b _fldbyte;
    private BDLocationListener c;
    private Boolean _fldcase;
    private long _fldchar;
    private boolean d;
    private a _flddo;
    private String e;
    private i _fldelse;
    private boolean g;
    private final Messenger i;
    private boolean _fldint;
    private Context j;
    private Messenger k;
    private LocationClientOption l;
    private Boolean _fldlong;
    private final Object _fldnew;
    private boolean q;
    private long r;
    private ServiceConnection t;
    private String u;
    private boolean v;
    private boolean w;
    private BDLocation x;
    private String z;

    private class _cls1
        implements ServiceConnection
    {

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            LocationClient.a(a, new Messenger(ibinder));
            if(LocationClient._mthchar(a) != null) goto _L2; else goto _L1
_L1:
            com.baidu.location.j._mthif("baidu_location_Client", "server not connected");
_L4:
            return;
_L2:
            LocationClient.a(a, true);
            Log.d("baidu_location_client", "baidu location connected ...");
            try
            {
                Message message = Message.obtain(null, 11);
                message.replyTo = LocationClient._mthint(a);
                message.setData(LocationClient._mthlong(a));
                LocationClient._mthchar(a).send(message);
                LocationClient.a(a, true);
                LocationClient._mthdo(a, true);
                com.baidu.location.j._mthif("baidu_location_Client", "bindService ...");
                if(LocationClient._mthbyte(a) != null)
                    LocationClient._mthtry(a).obtainMessage(4).sendToTarget();
            }
            catch(Exception exception) { }
            if(true) goto _L4; else goto _L3
_L3:
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            LocationClient.a(a, null);
            LocationClient.a(a, false);
            com.baidu.location.j._mthif("baidu_location_Client", "unbindservice...");
        }

        final LocationClient a;

        _cls1()
        {
            a = LocationClient.this;
            super();
        }
    }

}
