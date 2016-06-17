// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;

import android.content.*;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.*;
import android.os.Handler;
import android.os.Message;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

// Referenced classes of package com.baidu.location:
//            j

class e
{
    protected class c
    {

        private void a()
        {
            if(_mthtry() >= 1)
            {
                int i = -1 + _fldfor.size();
                boolean flag = true;
                while(i >= 1 && flag) 
                {
                    int k = 0;
                    flag = false;
                    while(k < i) 
                    {
                        boolean flag1;
                        if(((ScanResult)_fldfor.get(k)).level < ((ScanResult)_fldfor.get(k + 1)).level)
                        {
                            ScanResult scanresult = (ScanResult)_fldfor.get(k + 1);
                            _fldfor.set(k + 1, _fldfor.get(k));
                            _fldfor.set(k, scanresult);
                            flag1 = true;
                        } else
                        {
                            flag1 = flag;
                        }
                        k++;
                        flag = flag1;
                    }
                    i--;
                }
            }
        }

        public String a(int i)
        {
            String s1;
            if(_mthtry() < 1)
            {
                s1 = null;
            } else
            {
                StringBuffer stringbuffer = new StringBuffer(512);
                String s = a._mthchar();
                int k = _fldfor.size();
                int l;
                boolean flag;
                int i1;
                int j1;
                if(k <= i)
                    i = k;
                l = 0;
                flag = true;
                i1 = 0;
                j1 = 0;
                while(l < i) 
                {
                    int i2;
                    boolean flag2;
                    if(((ScanResult)_fldfor.get(l)).level == 0)
                    {
                        flag2 = flag;
                        i2 = j1;
                    } else
                    if(flag)
                    {
                        stringbuffer.append("&wf=");
                        String s3 = ((ScanResult)_fldfor.get(l)).BSSID.replace(":", "");
                        stringbuffer.append(s3);
                        int j2 = ((ScanResult)_fldfor.get(l)).level;
                        if(j2 < 0)
                            j2 = -j2;
                        Object aobj1[] = new Object[1];
                        aobj1[0] = Integer.valueOf(j2);
                        stringbuffer.append(String.format(";%d;", aobj1));
                        i2 = j1 + 1;
                        String s2;
                        int k1;
                        Object aobj[];
                        int l1;
                        boolean flag1;
                        boolean flag3;
                        int k2;
                        if(s != null && s.equals(s3))
                            k2 = i2;
                        else
                            k2 = i1;
                        i1 = k2;
                        flag2 = false;
                    } else
                    {
                        stringbuffer.append("|");
                        s2 = ((ScanResult)_fldfor.get(l)).BSSID.replace(":", "");
                        stringbuffer.append(s2);
                        k1 = ((ScanResult)_fldfor.get(l)).level;
                        if(k1 < 0)
                            k1 = -k1;
                        aobj = new Object[1];
                        aobj[0] = Integer.valueOf(k1);
                        stringbuffer.append(String.format(";%d;", aobj));
                        l1 = j1 + 1;
                        if(s != null && s.equals(s2))
                        {
                            i1 = l1;
                            flag3 = flag;
                            i2 = l1;
                            flag2 = flag3;
                        } else
                        {
                            flag1 = flag;
                            i2 = l1;
                            flag2 = flag1;
                        }
                    }
                    l++;
                    j1 = i2;
                    flag = flag2;
                }
                if(!flag)
                {
                    j._mthif(e._mthdo(), (new StringBuilder()).append(s).append(i1).toString());
                    stringbuffer.append((new StringBuilder()).append("&wf_n=").append(i1).toString());
                    stringbuffer.append("&wf_st=");
                    stringbuffer.append(_fldif);
                    stringbuffer.append("&wf_et=");
                    stringbuffer.append(_fldint);
                    if(i1 > 0)
                        _flddo = true;
                    s1 = stringbuffer.toString();
                } else
                {
                    s1 = null;
                }
            }
            return s1;
        }

        public boolean a(c c1)
        {
            return a(c1, this, j.a);
        }

        public boolean a(c c1, c c2, float f1)
        {
            boolean flag;
            List list;
            List list1;
            int i;
            int k;
            float f2;
            if(c1 == null || c2 == null)
            {
                flag = false;
            } else
            {
                list = c1._fldfor;
                list1 = c2._fldfor;
                if(list == list1)
                    flag = true;
                else
                if(list == null || list1 == null)
                {
                    flag = false;
                } else
                {
                    i = list.size();
                    k = list1.size();
                    f2 = i + k;
                    if(i == 0 && k == 0)
                    {
                        flag = true;
                    } else
                    {
label0:
                        {
                            if(i != 0 && k != 0)
                                break label0;
                            flag = false;
                        }
                    }
                }
            }
_L8:
            return flag;
            int l;
            int i1;
            l = 0;
            i1 = 0;
_L5:
            if(l >= i) goto _L2; else goto _L1
_L1:
            String s1 = ((ScanResult)list.get(l)).BSSID;
            if(s1 != null) goto _L4; else goto _L3
_L3:
            int k1 = i1;
_L6:
            l++;
            i1 = k1;
              goto _L5
_L4:
            int j1 = 0;
_L7:
label1:
            {
                if(j1 >= k)
                    break MISSING_BLOCK_LABEL_284;
                if(!s1.equals(((ScanResult)list1.get(j1)).BSSID))
                    break label1;
                k1 = i1 + 1;
            }
              goto _L6
            j1++;
              goto _L7
_L2:
            String s = e._mthdo();
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(i1);
            aobj[1] = Float.valueOf(f2);
            aobj[2] = Float.valueOf(f1);
            j._mthif(s, String.format("same %d,total %f,rate %f...", aobj));
            if((float)(i1 * 2) >= f2 * f1)
                flag = true;
            else
                flag = false;
              goto _L8
            k1 = i1;
              goto _L6
        }

        public String _mthbyte()
        {
            String s1 = a(15);
            String s = s1;
_L2:
            return s;
            Exception exception;
            exception;
            s = null;
            if(true) goto _L2; else goto _L1
_L1:
        }

        public boolean _mthcase()
        {
            return _flddo;
        }

        public String _mthchar()
        {
            String s1 = a(j.Y);
            String s = s1;
_L2:
            return s;
            Exception exception;
            exception;
            s = null;
            if(true) goto _L2; else goto _L1
_L1:
        }

        public int _mthdo()
        {
            int i = 0;
            int k = 0;
            do
            {
label0:
                {
                    if(k < _mthtry())
                    {
                        int l = -((ScanResult)_fldfor.get(k)).level;
                        if(l <= 0)
                            break label0;
                        i = l;
                    }
                    return i;
                }
                k++;
            } while(true);
        }

        public boolean _mthdo(c c1)
        {
            boolean flag;
            int k;
            if(_fldfor == null || c1 == null || c1._fldfor == null)
                break MISSING_BLOCK_LABEL_179;
            int i;
            String s;
            int l;
            String s1;
            int i1;
            if(_fldfor.size() < c1._fldfor.size())
                i = _fldfor.size();
            else
                i = c1._fldfor.size();
            k = 0;
_L5:
            if(k >= i) goto _L2; else goto _L1
_L1:
            s = ((ScanResult)_fldfor.get(k)).BSSID;
            l = ((ScanResult)_fldfor.get(k)).level;
            s1 = ((ScanResult)c1._fldfor.get(k)).BSSID;
            i1 = ((ScanResult)c1._fldfor.get(k)).level;
            if(s.equals(s1) && l == i1) goto _L4; else goto _L3
_L3:
            flag = false;
_L6:
            return flag;
_L4:
            k++;
              goto _L5
_L2:
            flag = true;
              goto _L6
            flag = false;
              goto _L6
        }

        public String _mthelse()
        {
            StringBuffer stringbuffer = new StringBuffer(512);
            stringbuffer.append("wifi info:");
            String s;
            if(_mthtry() < 1)
            {
                s = stringbuffer.toString();
            } else
            {
                int i = _fldfor.size();
                if(i > 10)
                    i = 10;
                int k = 0;
                boolean flag = true;
                while(k < i) 
                {
                    boolean flag1;
                    if(((ScanResult)_fldfor.get(k)).level == 0)
                        flag1 = flag;
                    else
                    if(flag)
                    {
                        stringbuffer.append("wifi=");
                        stringbuffer.append(((ScanResult)_fldfor.get(k)).BSSID.replace(":", ""));
                        int i1 = ((ScanResult)_fldfor.get(k)).level;
                        Object aobj1[] = new Object[1];
                        aobj1[0] = Integer.valueOf(i1);
                        stringbuffer.append(String.format(";%d;", aobj1));
                        flag1 = false;
                    } else
                    {
                        stringbuffer.append(";");
                        stringbuffer.append(((ScanResult)_fldfor.get(k)).BSSID.replace(":", ""));
                        int l = ((ScanResult)_fldfor.get(k)).level;
                        Object aobj[] = new Object[1];
                        aobj[0] = Integer.valueOf(l);
                        stringbuffer.append(String.format(",%d;", aobj));
                        flag1 = flag;
                    }
                    k++;
                    flag = flag1;
                }
                s = stringbuffer.toString();
            }
            return s;
        }

        public boolean _mthfor()
        {
            boolean flag;
            if(System.currentTimeMillis() - _fldint < 3000L)
                flag = true;
            else
                flag = false;
            return flag;
        }

        public String _mthif(int i)
        {
            String s;
            if(i == 0 || _mthtry() < 1)
            {
                s = null;
            } else
            {
                StringBuffer stringbuffer = new StringBuffer(256);
                int k = 0;
                int l = 1;
                int i1 = 0;
                while(i1 < j.Y) 
                {
                    if((l & i) != 0)
                    {
                        if(k == 0)
                            stringbuffer.append("&ssid=");
                        else
                            stringbuffer.append("|");
                        stringbuffer.append(((ScanResult)_fldfor.get(i1)).BSSID);
                        stringbuffer.append(";");
                        stringbuffer.append(((ScanResult)_fldfor.get(i1)).SSID);
                        k++;
                    }
                    l <<= 1;
                    i1++;
                }
                s = stringbuffer.toString();
            }
            return s;
        }

        public boolean _mthif()
        {
            boolean flag;
            if(System.currentTimeMillis() - _fldif < 3000L)
                flag = true;
            else
                flag = false;
            return flag;
        }

        public boolean _mthif(c c1)
        {
            boolean flag;
            int k;
            if(_fldfor == null || c1 == null || c1._fldfor == null)
                break MISSING_BLOCK_LABEL_126;
            int i;
            if(_fldfor.size() < c1._fldfor.size())
                i = _fldfor.size();
            else
                i = c1._fldfor.size();
            k = 0;
_L5:
            if(k >= i) goto _L2; else goto _L1
_L1:
            if(((ScanResult)_fldfor.get(k)).BSSID.equals(((ScanResult)c1._fldfor.get(k)).BSSID)) goto _L4; else goto _L3
_L3:
            flag = false;
_L6:
            return flag;
_L4:
            k++;
              goto _L5
_L2:
            flag = true;
              goto _L6
            flag = false;
              goto _L6
        }

        public String _mthint()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("wifi=");
            String s;
            if(_fldfor == null)
            {
                s = stringbuilder.toString();
            } else
            {
                for(int i = 0; i < _fldfor.size(); i++)
                {
                    int k = ((ScanResult)_fldfor.get(i)).level;
                    stringbuilder.append(((ScanResult)_fldfor.get(i)).BSSID.replace(":", ""));
                    Object aobj[] = new Object[1];
                    aobj[0] = Integer.valueOf(k);
                    stringbuilder.append(String.format(",%d;", aobj));
                }

                s = stringbuilder.toString();
            }
            return s;
        }

        public boolean _mthnew()
        {
            boolean flag;
            if(System.currentTimeMillis() - _fldint < 5000L)
                flag = true;
            else
                flag = false;
            return flag;
        }

        public int _mthtry()
        {
            int i;
            if(_fldfor == null)
                i = 0;
            else
                i = _fldfor.size();
            return i;
        }

        final e a;
        private boolean _flddo;
        public List _fldfor;
        private long _fldif;
        private long _fldint;

        public c(List list, long l)
        {
            a = e.this;
            super();
            _fldfor = null;
            _fldif = 0L;
            _fldint = 0L;
            _flddo = false;
            _fldif = l;
            _fldfor = list;
            _fldint = System.currentTimeMillis();
            a();
            j.a(e._mthdo(), _mthint());
        }
    }

    private class b extends BroadcastReceiver
    {

        public void onReceive(Context context, Intent intent)
        {
            if(context != null && e._mthif(a) != null)
            {
                e._mthfor(a);
                e._mthif(a).obtainMessage(41).sendToTarget();
                j._mthif(e._mthdo(), "wifi manager receive new wifi...");
            }
        }

        final e a;

        private b()
        {
            a = e.this;
            super();
        }

    }

    private class a extends BroadcastReceiver
    {

        public void onReceive(Context context, Intent intent)
        {
            if(context != null && e._mthif(a) != null)
                e.a(a);
        }

        final e a;

        private a()
        {
            a = e.this;
            super();
        }

    }

    private class d
        implements Runnable
    {

        public void run()
        {
            if(e._mthdo(a) && j.R)
            {
                e._mthif(a).obtainMessage(91).sendToTarget();
                e._mthif(a).postDelayed(this, j.S);
                e.a(a, true);
            } else
            {
                e.a(a, false);
            }
        }

        final e a;

        private d()
        {
            a = e.this;
            super();
        }

    }


    public e(Context context, Handler handler)
    {
        _fldif = null;
        _fldvoid = null;
        _fldchar = null;
        c = null;
        _fldcase = null;
        b = 0L;
        _fldlong = 0L;
        _fldint = false;
        g = null;
        e = null;
        _fldfor = true;
        d = false;
        _fldelse = false;
        _flddo = false;
        _fldgoto = context;
        _fldif = handler;
    }

    static void a(e e1)
    {
        e1._mthgoto();
    }

    static boolean a(e e1, boolean flag)
    {
        e1._flddo = flag;
        return flag;
    }

    static String _mthdo()
    {
        return _fldtry;
    }

    static boolean _mthdo(e e1)
    {
        return e1.d;
    }

    static void _mthfor(e e1)
    {
        e1._mthif();
    }

    private void _mthgoto()
    {
        android.net.NetworkInfo.State state = android.net.NetworkInfo.State.UNKNOWN;
        android.net.NetworkInfo.State state2 = ((ConnectivityManager)_fldgoto.getSystemService("connectivity")).getNetworkInfo(1).getState();
        android.net.NetworkInfo.State state1 = state2;
_L1:
        Exception exception;
        if(android.net.NetworkInfo.State.CONNECTED == state1)
        {
            if(!d)
            {
                d = true;
                _fldif.postDelayed(new d(), j.S);
                _flddo = true;
            }
        } else
        {
            d = false;
        }
        return;
        exception;
        state1 = state;
          goto _L1
    }

    static Handler _mthif(e e1)
    {
        return e1._fldif;
    }

    private void _mthif()
    {
        if(_fldvoid != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        List list = _fldvoid.getScanResults();
        c c1 = new c(list, b);
        b = 0L;
        if(_fldcase == null || !c1._mthif(_fldcase))
            _fldcase = c1;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public boolean a()
    {
        long l = System.currentTimeMillis();
        boolean flag;
        if(l - _fldlong <= 10000L)
        {
            flag = false;
        } else
        {
            _fldlong = l;
            flag = _mthnew();
        }
        return flag;
    }

    public c _mthbyte()
    {
        c c1;
        if((_fldcase == null || !_fldcase._mthnew()) && _fldvoid != null)
            try
            {
                c1 = new c(_fldvoid.getScanResults(), 0L);
            }
            catch(Exception exception)
            {
                c1 = new c(null, 0L);
            }
        else
            c1 = _fldcase;
        return c1;
    }

    public void _mthcase()
    {
        if(c == null)
            c = new a();
    }

    public String _mthchar()
    {
        String s;
        WifiInfo wifiinfo;
        s = null;
        wifiinfo = _fldvoid.getConnectionInfo();
        if(wifiinfo != null) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        String s2;
        String s1 = wifiinfo.getBSSID();
        if(s1 == null)
            continue; /* Loop/switch isn't completed */
        s2 = s1.replace(":", "");
        s = s2;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void _mthelse()
    {
        if(_fldint)
        {
            try
            {
                _fldgoto.unregisterReceiver(_fldchar);
            }
            catch(Exception exception) { }
            _fldchar = null;
            _fldvoid = null;
            c = null;
            _fldint = false;
            j._mthif(_fldtry, "wifimanager stop ...");
        }
    }

    public void _mthfor()
    {
        if(!_flddo);
    }

    public c _mthint()
    {
        c c1;
        if((_fldcase == null || !_fldcase._mthfor()) && _fldvoid != null)
            try
            {
                c1 = new c(_fldvoid.getScanResults(), 0L);
            }
            catch(Exception exception)
            {
                c1 = new c(null, 0L);
            }
        else
            c1 = _fldcase;
        return c1;
    }

    public boolean _mthnew()
    {
        boolean flag = false;
        if(_fldvoid != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        long l;
        l = System.currentTimeMillis();
        if(l - b <= 3000L)
            continue; /* Loop/switch isn't completed */
        if(!_fldvoid.isWifiEnabled()) goto _L4; else goto _L3
_L3:
        if(e == null) goto _L6; else goto _L5
_L5:
        Object obj = g;
        if(obj == null) goto _L6; else goto _L7
_L7:
        try
        {
            Method method = e;
            Object obj1 = g;
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.valueOf(_fldfor);
            method.invoke(obj1, aobj);
        }
        catch(Exception exception1)
        {
            exception1.printStackTrace();
            _fldvoid.startScan();
        }
_L8:
        b = l;
        j._mthif(_fldtry, "wifimanager start scan ...");
        flag = true;
        continue; /* Loop/switch isn't completed */
_L6:
        _fldvoid.startScan();
        if(true) goto _L8; else goto _L4
_L4:
        b = 0L;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if(true) goto _L1; else goto _L9
_L9:
    }

    public void _mthtry()
    {
        if(!_fldint) goto _L2; else goto _L1
_L1:
        return;
_L2:
        _fldvoid = (WifiManager)_fldgoto.getSystemService("wifi");
        _fldchar = new b();
        Exception exception1;
        Field field;
        Class class1;
        Class aclass[];
        try
        {
            _fldgoto.registerReceiver(_fldchar, new IntentFilter("android.net.wifi.SCAN_RESULTS"));
            c = new a();
        }
        catch(Exception exception) { }
        _fldint = true;
        j._mthif(_fldtry, "wifimanager start ...");
        field = Class.forName("android.net.wifi.WifiManager").getDeclaredField("mService");
        if(field == null)
        {
            j._mthif(_fldtry, "android.net.wifi.WifiManager.mService  NOT  found ...");
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            field.setAccessible(true);
            g = field.get(_fldvoid);
            class1 = g.getClass();
            j._mthif(_fldtry, (new StringBuilder()).append("mserviceClass : ").append(class1.getName()).toString());
            aclass = new Class[1];
            aclass[0] = Boolean.TYPE;
            e = class1.getDeclaredMethod("startScan", aclass);
            if(e == null)
                j._mthif(_fldtry, "mService.startScan NOT  found ...");
            else
                e.setAccessible(true);
        }
        // Misplaced declaration of an exception variable
        catch(Exception exception1)
        {
            exception1.printStackTrace();
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static final int _fldbyte = 15;
    private static String _fldtry = "baidu_location_service";
    private final long a = 5000L;
    private long b;
    private a c;
    private c _fldcase;
    private b _fldchar;
    private boolean d;
    private boolean _flddo;
    private Method e;
    private boolean _fldelse;
    private final long f = 3000L;
    private boolean _fldfor;
    private Object g;
    private Context _fldgoto;
    private Handler _fldif;
    private boolean _fldint;
    private long _fldlong;
    private final long _fldnew = 3000L;
    private WifiManager _fldvoid;

}
