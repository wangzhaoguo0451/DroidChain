// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;

import android.os.*;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.*;

// Referenced classes of package com.baidu.location:
//            LocationClientOption, j, Jni

class com.baidu.location.a
{
    private class a
    {

        private void a(int i)
        {
            Message message = Message.obtain(null, i);
            if(_fldfor != null)
                _fldfor.send(message);
            _fldif = 0;
_L1:
            return;
            Exception exception;
            exception;
            if(exception instanceof DeadObjectException)
                _fldif = 1 + _fldif;
              goto _L1
        }

        private void a(int i, String s, String s1)
        {
            Message message;
            Bundle bundle = new Bundle();
            bundle.putString(s, s1);
            message = Message.obtain(null, i);
            message.setData(bundle);
            if(_fldfor != null)
                _fldfor.send(message);
            _fldif = 0;
_L1:
            return;
            Exception exception;
            exception;
            if(exception instanceof DeadObjectException)
                _fldif = 1 + _fldif;
              goto _L1
        }

        static void a(a a1, int i)
        {
            a1.a(i);
        }

        public void a()
        {
            a(23);
        }

        public void a(String s)
        {
            if(_flddo._fldvoid)
                _mthif(s);
        }

        public void a(String s, int i)
        {
            int k;
            k = 0;
            j._mthif(com.baidu.location.a._mthtry(), "decode...");
            if(s != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            if(i == 21)
                a(27, "locStr", s);
            if(_flddo._fldtry == null || _flddo._fldtry.equals("gcj02"))
                break MISSING_BLOCK_LABEL_466;
            double d = j._mthdo(s, "x\":\"", "\"");
            double d1 = j._mthdo(s, "y\":\"", "\"");
            j._mthif(com.baidu.location.a._mthtry(), (new StringBuilder()).append("decode...").append(d).append(":").append(d1).toString());
            if(d != 4.9406564584124654E-324D && d1 != 4.9406564584124654E-324D)
            {
                double ad1[] = Jni._mthif(d, d1, _flddo._fldtry);
                s = j.a(j.a(s, "x\":\"", "\"", ad1[0]), "y\":\"", "\"", ad1[1]);
                j._mthif(com.baidu.location.a._mthtry(), (new StringBuilder()).append("decode2 ...").append(ad1[0]).append(":").append(ad1[1]).toString());
                j._mthif(com.baidu.location.a._mthtry(), (new StringBuilder()).append("decode3 ...").append(s).toString());
            }
            if(!_flddo._fldelse)
                break MISSING_BLOCK_LABEL_466;
            String s1;
            JSONObject jsonobject = new JSONObject(s);
            JSONObject jsonobject1 = jsonobject.getJSONObject("result");
            JSONObject jsonobject2 = jsonobject.getJSONObject("content");
            if(Integer.parseInt(jsonobject1.getString("error")) != 161)
                break MISSING_BLOCK_LABEL_466;
            JSONObject jsonobject3 = jsonobject2.getJSONObject("poi");
            JSONArray jsonarray = jsonobject3.getJSONArray("p");
            do
            {
                if(k >= jsonarray.length())
                    break;
                JSONObject jsonobject4 = jsonarray.getJSONObject(k);
                double d2 = Double.parseDouble(jsonobject4.getString("x"));
                double d3 = Double.parseDouble(jsonobject4.getString("y"));
                if(d2 != 4.9406564584124654E-324D && d3 != 4.9406564584124654E-324D)
                {
                    double ad[] = Jni._mthif(d2, d3, _flddo._fldtry);
                    jsonobject4.put("x", String.valueOf(ad[0]));
                    jsonobject4.put("y", String.valueOf(ad[1]));
                    jsonarray.put(k, jsonobject4);
                    k++;
                }
            } while(true);
            jsonobject3.put("p", jsonarray);
            jsonobject2.put("poi", jsonobject3);
            jsonobject.put("content", jsonobject2);
            s1 = jsonobject.toString();
            s = s1;
_L4:
            a(i, "locStr", s);
            if(true) goto _L1; else goto _L3
_L3:
            JSONException jsonexception;
            jsonexception;
            jsonexception.printStackTrace();
              goto _L4
        }

        public void _mthif()
        {
            if(_flddo._fldvoid)
                if(j.ab)
                    a(54);
                else
                    a(55);
        }

        public void _mthif(String s)
        {
            if(s != null)
            {
                a(27, "locStr", s);
                if(_flddo._fldtry != null && !_flddo._fldtry.equals("gcj02"))
                {
                    double d = j._mthdo(s, "x\":\"", "\"");
                    double d1 = j._mthdo(s, "y\":\"", "\"");
                    if(d != 4.9406564584124654E-324D && d1 != 4.9406564584124654E-324D)
                    {
                        double ad[] = Jni._mthif(d, d1, _flddo._fldtry);
                        if(ad[0] > 0.0D || ad[1] > 0.0D)
                            s = j.a(j.a(s, "x\":\"", "\"", ad[0]), "y\":\"", "\"", ad[1]);
                    }
                }
                a(21, "locStr", s);
            }
        }

        final com.baidu.location.a a;
        public LocationClientOption _flddo;
        public Messenger _fldfor;
        public int _fldif;
        public String _fldint;

        public a(Message message)
        {
            a = com.baidu.location.a.this;
            super();
            _fldint = null;
            _fldfor = null;
            _flddo = new LocationClientOption();
            _fldif = 0;
            _fldfor = message.replyTo;
            _fldint = message.getData().getString("packName");
            _flddo._fldnew = message.getData().getString("prodName");
            j.ak = _fldint;
            j.b = _flddo._fldnew;
            _flddo._fldtry = message.getData().getString("coorType");
            _flddo._fldchar = message.getData().getString("addrType");
            j.A = _flddo._fldchar;
            _flddo._fldcase = message.getData().getBoolean("openGPS");
            _flddo._fldint = message.getData().getInt("scanSpan");
            _flddo._fldlong = message.getData().getInt("timeOut");
            _flddo._fldgoto = message.getData().getInt("priority");
            _flddo._fldvoid = message.getData().getBoolean("location_change_notify");
        }
    }


    public com.baidu.location.a(Handler handler)
    {
        _flddo = null;
        _fldint = null;
        _fldfor = false;
        a = false;
        _fldint = handler;
        _flddo = new ArrayList();
    }

    private a a(Messenger messenger)
    {
        if(_flddo != null) goto _L2; else goto _L1
_L1:
        a a1 = null;
_L4:
        return a1;
_L2:
        for(Iterator iterator = _flddo.iterator(); iterator.hasNext();)
        {
            a1 = (a)iterator.next();
            if(a1._fldfor.equals(messenger))
                continue; /* Loop/switch isn't completed */
        }

        a1 = null;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void a()
    {
        Iterator iterator = _flddo.iterator();
        boolean flag = false;
        while(iterator.hasNext()) 
        {
            boolean flag1;
            if(((a)iterator.next())._flddo._fldnew.equals("kuikedefancaiburudashahaochi"))
                flag1 = true;
            else
                flag1 = flag;
            flag = flag1;
        }
        if(a != flag)
        {
            a = flag;
            _fldint.obtainMessage(81).sendToTarget();
        }
    }

    private void a(a a1)
    {
        if(a1 != null)
            if(a(a1._fldfor) != null)
            {
                a.a(a1, 14);
            } else
            {
                _flddo.add(a1);
                j._mthif(_fldif, (new StringBuilder()).append(a1._fldint).append(" registered ").toString());
                a.a(a1, 13);
            }
    }

    private void _mthdo()
    {
        _mthint();
        a();
        _mthnew();
    }

    private void _mthint()
    {
        Iterator iterator = _flddo.iterator();
        boolean flag = false;
        boolean flag1 = false;
        while(iterator.hasNext()) 
        {
            a a1 = (a)iterator.next();
            if(a1._flddo._fldcase)
                flag1 = true;
            boolean flag2;
            if(a1._flddo._fldvoid)
                flag2 = true;
            else
                flag2 = flag;
            flag = flag2;
        }
        j.H = flag;
        if(_fldfor != flag1)
        {
            _fldfor = flag1;
            _fldint.obtainMessage(52).sendToTarget();
        }
    }

    static String _mthtry()
    {
        return _fldif;
    }

    public String a(Message message)
    {
        String s = null;
        if(message != null && message.replyTo != null) goto _L2; else goto _L1
_L1:
        j._mthif(_fldif, "invalid Poirequest");
_L4:
        return s;
_L2:
        a a1 = a(message.replyTo);
        if(a1 != null)
        {
            a1._flddo.a = message.getData().getInt("num", a1._flddo.a);
            a1._flddo._flddo = message.getData().getFloat("distance", a1._flddo._flddo);
            a1._flddo._fldif = message.getData().getBoolean("extraInfo", a1._flddo._fldif);
            a1._flddo._fldelse = true;
            Object aobj[] = new Object[2];
            aobj[0] = Float.valueOf(a1._flddo._flddo);
            aobj[1] = Integer.valueOf(a1._flddo.a);
            s = String.format("&poi=%.1f|%d", aobj);
            if(a1._flddo._fldif)
                s = (new StringBuilder()).append(s).append("|1").toString();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void a(String s)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = _flddo.iterator();
        do
        {
            if(!iterator.hasNext())
                break;
            a a2 = (a)iterator.next();
            a2._mthif(s);
            if(a2._fldif > 4)
                arraylist.add(a2);
        } while(true);
        if(arraylist != null && arraylist.size() > 0)
        {
            a a1;
            for(Iterator iterator1 = arraylist.iterator(); iterator1.hasNext(); _flddo.remove(a1))
            {
                a1 = (a)iterator1.next();
                j._mthif(_fldif, "remove dead object...");
            }

        }
    }

    public void a(String s, int i)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = _flddo.iterator();
        do
        {
            if(!iterator.hasNext())
                break;
            a a2 = (a)iterator.next();
            a2.a(s, i);
            if(a2._fldif > 4)
                arraylist.add(a2);
        } while(true);
        if(arraylist != null && arraylist.size() > 0)
        {
            a a1;
            for(Iterator iterator1 = arraylist.iterator(); iterator1.hasNext(); _flddo.remove(a1))
            {
                a1 = (a)iterator1.next();
                j._mthif(_fldif, "remove dead object...");
            }

        }
    }

    public void a(String s, Message message)
    {
        if(s != null && message != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        a a1 = a(message.replyTo);
        if(a1 != null)
        {
            a1._mthif(s);
            if(a1._fldif > 4)
                _flddo.remove(a1);
        } else
        {
            j._mthif(_fldif, "not found the client messener...");
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public String _mthbyte()
    {
        StringBuffer stringbuffer = new StringBuffer(256);
        a a1 = (a)_flddo.get(0);
        if(a1._flddo._fldnew != null)
            stringbuffer.append(a1._flddo._fldnew);
        if(a1._fldint != null)
        {
            stringbuffer.append(":");
            stringbuffer.append(a1._fldint);
            stringbuffer.append("|");
        }
        String s = stringbuffer.toString();
        String s1;
        if(s != null && !s.equals(""))
            s1 = (new StringBuilder()).append("&prod=").append(s).toString();
        else
            s1 = null;
        return s1;
    }

    public int _mthdo(Message message)
    {
        int i = 1;
        if(message != null && message.replyTo != null) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        a a1 = a(message.replyTo);
        if(a1 != null && a1._flddo != null)
            i = a1._flddo._fldgoto;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public boolean _mthfor()
    {
        return _fldfor;
    }

    public boolean _mthfor(Message message)
    {
        boolean flag = true;
        boolean flag1 = false;
        a a1 = a(message.replyTo);
        if(a1 != null)
        {
            int i = a1._flddo._fldint;
            a1._flddo._fldint = message.getData().getInt("scanSpan", a1._flddo._fldint);
            String s;
            LocationClientOption locationclientoption;
            String s1;
            LocationClientOption locationclientoption1;
            if(a1._flddo._fldint < 1000)
                j.R = false;
            else
                j.R = flag;
            if(a1._flddo._fldint <= 999 || i >= 1000)
                flag = false;
            a1._flddo._fldcase = message.getData().getBoolean("openGPS", a1._flddo._fldcase);
            s = message.getData().getString("coorType");
            locationclientoption = a1._flddo;
            if(s == null || s.equals(""))
                s = a1._flddo._fldtry;
            locationclientoption._fldtry = s;
            s1 = message.getData().getString("addrType");
            locationclientoption1 = a1._flddo;
            if(s1 == null || s1.equals(""))
                s1 = a1._flddo._fldchar;
            locationclientoption1._fldchar = s1;
            j.A = a1._flddo._fldchar;
            a1._flddo._fldlong = message.getData().getInt("timeOut", a1._flddo._fldlong);
            a1._flddo._fldvoid = message.getData().getBoolean("location_change_notify", a1._flddo._fldvoid);
            a1._flddo._fldgoto = message.getData().getInt("priority", a1._flddo._fldgoto);
            _mthdo();
            flag1 = flag;
        }
        return flag1;
    }

    public void _mthif()
    {
        for(Iterator iterator = _flddo.iterator(); iterator.hasNext(); ((a)iterator.next()).a());
    }

    public void _mthif(Message message)
    {
        a a1 = a(message.replyTo);
        if(a1 != null)
        {
            j._mthif(_fldif, (new StringBuilder()).append(a1._fldint).append(" unregistered").toString());
            _flddo.remove(a1);
        }
        _mthdo();
    }

    public void _mthif(String s)
    {
        for(Iterator iterator = _flddo.iterator(); iterator.hasNext(); ((a)iterator.next()).a(s));
    }

    public void _mthint(Message message)
    {
        if(message == null || message.replyTo == null)
        {
            j._mthif(_fldif, "invalid regist client");
        } else
        {
            a(new a(message));
            _mthdo();
        }
    }

    public void _mthnew()
    {
        for(Iterator iterator = _flddo.iterator(); iterator.hasNext(); ((a)iterator.next())._mthif());
    }

    private static String _fldif = "baidu_location_service";
    private boolean a;
    private ArrayList _flddo;
    private boolean _fldfor;
    private Handler _fldint;

}
