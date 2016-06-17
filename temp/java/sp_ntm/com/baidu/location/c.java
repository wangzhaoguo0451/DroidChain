// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;

import android.content.Context;
import android.os.*;
import android.telephony.*;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import java.lang.reflect.Method;
import java.util.*;

// Referenced classes of package com.baidu.location:
//            j

class c
{
    private class b extends PhoneStateListener
    {

        public void onCellLocationChanged(CellLocation celllocation)
        {
            if(celllocation != null)
                try
                {
                    c.a(a, c._mthif(a).getCellLocation());
                }
                catch(Exception exception) { }
        }

        public void onSignalStrengthsChanged(SignalStrength signalstrength)
        {
            if(c._mthfor(a) == null) goto _L2; else goto _L1
_L1:
            if(c._mthfor(a)._fldnew != 'g') goto _L4; else goto _L3
_L3:
            c._mthfor(a)._fldint = signalstrength.getGsmSignalStrength();
_L6:
            j._mthif("cell strength", (new StringBuilder()).append("===== cell singal strength changed : ").append(c._mthfor(a)._fldint).toString());
            if(c.a(a) != null)
                c.a(a).obtainMessage(31).sendToTarget();
_L2:
            return;
_L4:
            if(c._mthfor(a)._fldnew == 'c')
                c._mthfor(a)._fldint = signalstrength.getCdmaDbm();
            if(true) goto _L6; else goto _L5
_L5:
        }

        final c a;

        public b()
        {
            a = c.this;
            super();
        }
    }

    public class a
    {

        public String a()
        {
            StringBuffer stringbuffer = new StringBuffer(128);
            stringbuffer.append(23 + _fldtry);
            stringbuffer.append("H");
            stringbuffer.append(45 + _fldfor);
            stringbuffer.append("K");
            stringbuffer.append(54 + _fldif);
            stringbuffer.append("Q");
            stringbuffer.append(203 + _flddo);
            return stringbuffer.toString();
        }

        public boolean a(a a1)
        {
            boolean flag;
            if(_fldfor == a1._fldfor && _fldtry == a1._fldtry && _fldif == a1._fldif)
                flag = true;
            else
                flag = false;
            return flag;
        }

        public boolean _mthdo()
        {
            boolean flag;
            if(System.currentTimeMillis() - _fldbyte < c._mthtry())
                flag = true;
            else
                flag = false;
            return flag;
        }

        public boolean _mthfor()
        {
            boolean flag;
            if(_fldfor > -1 && _fldtry > 0)
                flag = true;
            else
                flag = false;
            return flag;
        }

        public String _mthif()
        {
            StringBuffer stringbuffer = new StringBuffer(64);
            Object aobj[] = new Object[5];
            aobj[0] = Integer.valueOf(_flddo);
            aobj[1] = Integer.valueOf(_fldif);
            aobj[2] = Integer.valueOf(_fldfor);
            aobj[3] = Integer.valueOf(_fldtry);
            aobj[4] = Integer.valueOf(_fldint);
            stringbuffer.append(String.format("cell=%d|%d|%d|%d:%d", aobj));
            return stringbuffer.toString();
        }

        public String _mthint()
        {
            List list = c._mthif(a).getNeighboringCellInfo();
            if(list == null || list.isEmpty()) goto _L2; else goto _L1
_L1:
            String s1;
            Iterator iterator;
            int i;
            s1 = "&nc=";
            iterator = list.iterator();
            i = 0;
_L12:
            if(!iterator.hasNext()) goto _L4; else goto _L3
_L3:
            NeighboringCellInfo neighboringcellinfo = (NeighboringCellInfo)iterator.next();
            if(i != 0) goto _L6; else goto _L5
_L5:
            String s3;
            if(neighboringcellinfo.getLac() != _fldfor)
                s3 = (new StringBuilder()).append(s1).append(neighboringcellinfo.getLac()).append("|").append(neighboringcellinfo.getCid()).append("|").append(neighboringcellinfo.getRssi()).toString();
            else
                s3 = (new StringBuilder()).append(s1).append("|").append(neighboringcellinfo.getCid()).append("|").append(neighboringcellinfo.getRssi()).toString();
              goto _L7
_L6:
            if(i >= 8) goto _L4; else goto _L8
_L8:
            if(neighboringcellinfo.getLac() == _fldfor) goto _L10; else goto _L9
_L9:
            s3 = (new StringBuilder()).append(s1).append(";").append(neighboringcellinfo.getLac()).append("|").append(neighboringcellinfo.getCid()).append("|").append(neighboringcellinfo.getRssi()).toString();
              goto _L7
_L10:
            String s2 = (new StringBuilder()).append(s1).append(";").append("|").append(neighboringcellinfo.getCid()).append("|").append(neighboringcellinfo.getRssi()).toString();
            s3 = s2;
              goto _L7
            Exception exception;
            exception;
            String s = null;
_L11:
            j._mthif("baidu_location_service", (new StringBuilder()).append("Neighbour:").append(s).toString());
            return s;
_L4:
            s = s1;
            continue; /* Loop/switch isn't completed */
_L2:
            s = null;
            if(true) goto _L11; else goto _L7
_L7:
            i++;
            s1 = s3;
              goto _L12
        }

        public String toString()
        {
            StringBuffer stringbuffer = new StringBuffer(128);
            stringbuffer.append("&nw=");
            stringbuffer.append(c._mthfor(a)._fldnew);
            Object aobj[] = new Object[5];
            aobj[0] = Integer.valueOf(_flddo);
            aobj[1] = Integer.valueOf(_fldif);
            aobj[2] = Integer.valueOf(_fldfor);
            aobj[3] = Integer.valueOf(_fldtry);
            aobj[4] = Integer.valueOf(_fldint);
            stringbuffer.append(String.format("&cl=%d|%d|%d|%d&cl_s=%d", aobj));
            stringbuffer.append("&cl_t=");
            stringbuffer.append(_fldbyte);
            if(c._mthdo(a) != null && c._mthdo(a).size() > 0)
            {
                int i = c._mthdo(a).size();
                stringbuffer.append("&clt=");
                int k = 0;
                while(k < i) 
                {
                    a a1 = (a)c._mthdo(a).get(k);
                    if(a1._flddo != _flddo)
                        stringbuffer.append(a1._flddo);
                    stringbuffer.append("|");
                    if(a1._fldif != _fldif)
                        stringbuffer.append(a1._fldif);
                    stringbuffer.append("|");
                    if(a1._fldfor != _fldfor)
                        stringbuffer.append(a1._fldfor);
                    stringbuffer.append("|");
                    if(a1._fldtry != _fldtry)
                        stringbuffer.append(a1._fldtry);
                    stringbuffer.append("|");
                    if(k != i - 1)
                        stringbuffer.append(a1._fldbyte / 1000L);
                    else
                        stringbuffer.append((System.currentTimeMillis() - a1._fldbyte) / 1000L);
                    stringbuffer.append(";");
                    k++;
                }
            }
            return stringbuffer.toString();
        }

        final c a;
        public long _fldbyte;
        public int _flddo;
        public int _fldfor;
        public int _fldif;
        public int _fldint;
        public char _fldnew;
        public int _fldtry;

        public a()
        {
            a = c.this;
            super();
            _fldfor = -1;
            _fldtry = -1;
            _flddo = -1;
            _fldif = -1;
            _fldbyte = 0L;
            _fldint = -1;
            _fldnew = '\0';
            _fldbyte = System.currentTimeMillis();
        }

        public a(int i, int k, int l, int i1, char c2)
        {
            a = c.this;
            super();
            _fldfor = -1;
            _fldtry = -1;
            _flddo = -1;
            _fldif = -1;
            _fldbyte = 0L;
            _fldint = -1;
            _fldnew = '\0';
            _fldfor = i;
            _fldtry = k;
            _flddo = l;
            _fldif = i1;
            _fldnew = c2;
            _fldbyte = System.currentTimeMillis() / 1000L;
        }
    }


    public c(Context context, Handler handler)
    {
        _fldif = null;
        _fldtry = null;
        a = new a();
        _fldnew = null;
        _flddo = null;
        _fldint = null;
        b = false;
        _fldif = context;
        _flddo = handler;
    }

    static Handler a(c c1)
    {
        return c1._flddo;
    }

    public static String a(boolean flag)
    {
        StringBuffer stringbuffer = new StringBuffer(256);
        stringbuffer.append("&sdk=");
        stringbuffer.append(3.3F);
        if(flag && j.A.equals("all"))
            stringbuffer.append("&addr=all");
        if(flag)
            stringbuffer.append("&coor=gcj02");
        if(_fldgoto == null)
        {
            stringbuffer.append("&im=");
            stringbuffer.append(_fldbyte);
        } else
        {
            stringbuffer.append("&cu=");
            stringbuffer.append(_fldgoto);
        }
        stringbuffer.append("&mb=");
        stringbuffer.append(Build.MODEL);
        stringbuffer.append("&resid=");
        stringbuffer.append("12");
        stringbuffer.append("&os=A");
        stringbuffer.append(android.os.Build.VERSION.SDK);
        if(flag)
        {
            stringbuffer.append("&sv=");
            String s = android.os.Build.VERSION.RELEASE;
            if(s != null && s.length() > 5)
                s = s.substring(0, 5);
            stringbuffer.append(s);
        }
        return stringbuffer.toString();
    }

    private void a(CellLocation celllocation)
    {
        if(celllocation != null && _fldtry != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        a a1;
        String s;
        if(!_fldchar)
        {
            _fldbyte = _fldtry.getDeviceId();
            _fldchar = _mthif();
        }
        j._mthif("baidu_location_service", "set cell info..");
        a1 = new a();
        a1._fldbyte = System.currentTimeMillis();
        s = _fldtry.getNetworkOperator();
        if(s == null || s.length() <= 0) goto _L4; else goto _L3
_L3:
        String s1;
        int l;
        char ac[];
        if(s.length() >= 3)
        {
            int j1 = Integer.valueOf(s.substring(0, 3)).intValue();
            if(j1 < 0)
                j1 = a._flddo;
            a1._flddo = j1;
        }
        s1 = s.substring(3);
        if(s1 == null)
            break MISSING_BLOCK_LABEL_684;
        ac = s1.toCharArray();
        l = 0;
_L9:
        if(l < ac.length && Character.isDigit(ac[l])) goto _L6; else goto _L5
_L5:
        int i1 = Integer.valueOf(s1.substring(0, l)).intValue();
        if(i1 < 0)
            i1 = a._fldif;
        a1._fldif = i1;
_L4:
        if(!(celllocation instanceof GsmCellLocation)) goto _L8; else goto _L7
_L7:
        a1._fldfor = ((GsmCellLocation)celllocation).getLac();
        a1._fldtry = ((GsmCellLocation)celllocation).getCid();
        a1._fldnew = 'g';
_L11:
        if(a1._mthfor() && (a == null || !a.a(a1)))
        {
            a = a1;
            _flddo.obtainMessage(31).sendToTarget();
            if(a1._mthfor())
            {
                if(_fldnew == null)
                    _fldnew = new LinkedList();
                int k = _fldnew.size();
                Exception exception;
                int i;
                a a2;
                Exception exception1;
                Exception exception2;
                if(k == 0)
                    a2 = null;
                else
                    a2 = (a)_fldnew.get(k - 1);
                if(a2 == null || a2._fldtry != a._fldtry || a2._fldfor != a._fldfor)
                {
                    if(a2 != null)
                        a2._fldbyte = a._fldbyte - a2._fldbyte;
                    _fldnew.add(a);
                    if(_fldnew.size() > c)
                        _fldnew.remove(0);
                }
            } else
            if(_fldnew != null)
                _fldnew.clear();
        }
          goto _L1
_L6:
        l++;
          goto _L9
        exception2;
        exception2.printStackTrace();
          goto _L4
_L8:
        if(!(celllocation instanceof CdmaCellLocation)) goto _L11; else goto _L10
_L10:
        a1._fldnew = 'c';
        if(Integer.parseInt(android.os.Build.VERSION.SDK) < 5) goto _L1; else goto _L12
_L12:
        if(d != null) goto _L14; else goto _L13
_L13:
        d = Class.forName("android.telephony.cdma.CdmaCellLocation");
        _fldlong = d.getMethod("getBaseStationId", new Class[0]);
        _fldcase = d.getMethod("getNetworkId", new Class[0]);
        _fldfor = d.getMethod("getSystemId", new Class[0]);
_L14:
        if(d == null || !d.isInstance(celllocation)) goto _L11; else goto _L15
_L15:
        i = ((Integer)_fldfor.invoke(celllocation, new Object[0])).intValue();
        if(i < 0)
            i = a._fldif;
        a1._fldif = i;
        a1._fldtry = ((Integer)_fldlong.invoke(celllocation, new Object[0])).intValue();
        a1._fldfor = ((Integer)_fldcase.invoke(celllocation, new Object[0])).intValue();
          goto _L11
        exception;
        exception.printStackTrace();
          goto _L1
        exception1;
        d = null;
        exception1.printStackTrace();
          goto _L1
        l = 0;
          goto _L5
    }

    static void a(c c1, CellLocation celllocation)
    {
        c1.a(celllocation);
    }

    static List _mthdo(c c1)
    {
        return c1._fldnew;
    }

    static a _mthfor(c c1)
    {
        return c1.a;
    }

    static TelephonyManager _mthif(c c1)
    {
        return c1._fldtry;
    }

    private boolean _mthif()
    {
        boolean flag = false;
        if(_fldbyte != null && _fldbyte.length() >= 10) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        char ac[];
        int i;
        ac = _fldbyte.toCharArray();
        i = 0;
_L3:
        char c1;
        if(i >= 10)
            break MISSING_BLOCK_LABEL_66;
        if(ac[i] > '9')
            continue; /* Loop/switch isn't completed */
        c1 = ac[i];
        if(c1 < '0')
            continue; /* Loop/switch isn't completed */
        i++;
          goto _L3
        flag = true;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if(true) goto _L1; else goto _L4
_L4:
    }

    static long _mthtry()
    {
        return _fldvoid;
    }

    public a a()
    {
        if((a == null || !a._mthdo() || !a._mthfor()) && _fldtry != null)
            try
            {
                a(_fldtry.getCellLocation());
            }
            catch(Exception exception) { }
        return a;
    }

    public void _mthbyte()
    {
        if(b)
        {
            if(_fldint != null && _fldtry != null)
                _fldtry.listen(_fldint, 0);
            _fldint = null;
            _fldtry = null;
            _fldnew.clear();
            _fldnew = null;
            j._mthif("baidu_location_service", "cell manager stop ...");
            b = false;
        }
    }

    public void _mthdo()
    {
        if(!b) goto _L2; else goto _L1
_L1:
        return;
_L2:
        _fldtry = (TelephonyManager)_fldif.getSystemService("phone");
        _fldnew = new LinkedList();
        _fldint = new b();
        if(_fldtry != null && _fldint != null)
        {
            try
            {
                _fldtry.listen(_fldint, 272);
                _fldbyte = _fldtry.getDeviceId();
                j._flddo = (new StringBuilder()).append("v3.3").append(_fldbyte).append("|").append(Build.MODEL).toString();
            }
            catch(Exception exception) { }
            try
            {
                _fldgoto = j.a._mthif(_fldif);
                j._mthif("baidu_location_service", (new StringBuilder()).append("CUID:").append(_fldgoto).toString());
            }
            catch(Exception exception1)
            {
                _fldgoto = null;
            }
            try
            {
                if(_fldgoto != null)
                    j._flddo = (new StringBuilder()).append("v3.3|").append(_fldgoto).append("|").append(Build.MODEL).toString();
                j._mthif("baidu_location_service", (new StringBuilder()).append("CUID:").append(j._flddo).toString());
            }
            catch(Exception exception2) { }
            _fldchar = _mthif();
            j.a("baidu_location_service", (new StringBuilder()).append("i:").append(_fldbyte).toString());
            j._mthif("baidu_location_service", "cell manager start...");
            b = true;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public String _mthfor()
    {
        if(_fldtry == null)
            _fldtry = (TelephonyManager)_fldif.getSystemService("phone");
        try
        {
            a(_fldtry.getCellLocation());
        }
        catch(Exception exception) { }
        return a.toString();
    }

    public String _mthint()
    {
        return _fldbyte;
    }

    public int _mthnew()
    {
        return _fldtry.getNetworkType();
    }

    private static String _fldbyte = null;
    private static int c = 3;
    private static Method _fldcase = null;
    private static boolean _fldchar = false;
    private static Class d = null;
    private static Method _fldfor = null;
    private static String _fldgoto = null;
    private static Method _fldlong = null;
    private static long _fldvoid = 3000L;
    private a a;
    private boolean b;
    private Handler _flddo;
    private final String _fldelse = "baidu_location_service";
    private Context _fldif;
    private b _fldint;
    private List _fldnew;
    private TelephonyManager _fldtry;

}
