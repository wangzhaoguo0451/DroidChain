// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;

import org.json.JSONObject;

// Referenced classes of package com.baidu.location:
//            j

public final class BDLocation
{
    public class a
    {

        final BDLocation a;
        public String _fldbyte;
        public String _flddo;
        public String _fldfor;
        public String _fldif;
        public String _fldint;
        public String _fldnew;
        public String _fldtry;

        public a()
        {
            a = BDLocation.this;
            super();
            _fldif = null;
            _fldnew = null;
            _fldint = null;
            _fldbyte = null;
            _flddo = null;
            _fldfor = null;
            _fldtry = null;
        }
    }


    public BDLocation()
    {
        _fldif = 0;
        d = null;
        _fldelse = 4.9406564584124654E-324D;
        _fldfor = 4.9406564584124654E-324D;
        c = false;
        f = 4.9406564584124654E-324D;
        _fldint = false;
        _fldnew = 0.0F;
        _fldtry = false;
        _fldlong = 0.0F;
        b = false;
        _flddo = -1;
        _fldchar = -1F;
        _fldgoto = null;
        _fldbyte = null;
        _fldvoid = false;
        _fldcase = false;
        a = null;
        mServerString = null;
        e = false;
        mAddr = new a();
    }

    public BDLocation(double d1, double d2, float f1)
    {
        _fldif = 0;
        d = null;
        _fldelse = 4.9406564584124654E-324D;
        _fldfor = 4.9406564584124654E-324D;
        c = false;
        f = 4.9406564584124654E-324D;
        _fldint = false;
        _fldnew = 0.0F;
        _fldtry = false;
        _fldlong = 0.0F;
        b = false;
        _flddo = -1;
        _fldchar = -1F;
        _fldgoto = null;
        _fldbyte = null;
        _fldvoid = false;
        _fldcase = false;
        a = null;
        mServerString = null;
        e = false;
        mAddr = new a();
        _fldelse = d2;
        _fldfor = d1;
        _fldlong = f1;
        d = j._mthfor();
    }

    public BDLocation(String s)
    {
        _fldif = 0;
        d = null;
        _fldelse = 4.9406564584124654E-324D;
        _fldfor = 4.9406564584124654E-324D;
        c = false;
        f = 4.9406564584124654E-324D;
        _fldint = false;
        _fldnew = 0.0F;
        _fldtry = false;
        _fldlong = 0.0F;
        b = false;
        _flddo = -1;
        _fldchar = -1F;
        _fldgoto = null;
        _fldbyte = null;
        _fldvoid = false;
        _fldcase = false;
        a = null;
        mServerString = null;
        e = false;
        mAddr = new a();
        if(s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        return;
_L2:
        JSONObject jsonobject;
        int i;
        try
        {
            jsonobject = new JSONObject(s);
            JSONObject jsonobject1 = jsonobject.getJSONObject("result");
            i = Integer.parseInt(jsonobject1.getString("error"));
            setLocType(i);
            setTime(jsonobject1.getString("time"));
            if(i == 61)
            {
                JSONObject jsonobject6 = jsonobject.getJSONObject("content");
                JSONObject jsonobject7 = jsonobject6.getJSONObject("point");
                setLatitude(Double.parseDouble(jsonobject7.getString("y")));
                setLongitude(Double.parseDouble(jsonobject7.getString("x")));
                setRadius(Float.parseFloat(jsonobject6.getString("radius")));
                setSpeed(Float.parseFloat(jsonobject6.getString("s")));
                setDerect(Float.parseFloat(jsonobject6.getString("d")));
                setSatelliteNumber(Integer.parseInt(jsonobject6.getString("n")));
                continue; /* Loop/switch isn't completed */
            }
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
            _fldif = 0;
            _fldvoid = false;
            continue; /* Loop/switch isn't completed */
        }
        if(i != 161)
            break; /* Loop/switch isn't completed */
        JSONObject jsonobject4 = jsonobject.getJSONObject("content");
        JSONObject jsonobject5 = jsonobject4.getJSONObject("point");
        setLatitude(Double.parseDouble(jsonobject5.getString("y")));
        setLongitude(Double.parseDouble(jsonobject5.getString("x")));
        setRadius(Float.parseFloat(jsonobject4.getString("radius")));
        if(jsonobject4.has("addr"))
        {
            String s1 = jsonobject4.getString("addr");
            mAddr._fldtry = s1;
            j._mthif("baidu_location_service", s1);
            String as[] = s1.split(",");
            mAddr._fldif = as[0];
            mAddr._fldnew = as[1];
            mAddr._fldint = as[2];
            mAddr._fldbyte = as[3];
            mAddr._flddo = as[4];
            mAddr._fldfor = as[5];
            String s2;
            String s3;
            if(mAddr._fldif.contains("\u5317\u4EAC") && mAddr._fldnew.contains("\u5317\u4EAC") || mAddr._fldif.contains("\u4E0A\u6D77") && mAddr._fldnew.contains("\u4E0A\u6D77") || mAddr._fldif.contains("\u5929\u6D25") && mAddr._fldnew.contains("\u5929\u6D25") || mAddr._fldif.contains("\u91CD\u5E86") && mAddr._fldnew.contains("\u91CD\u5E86"))
            {
                j._mthif("baidu_location_service", "true,beijing");
                s2 = mAddr._fldif;
            } else
            {
                s2 = (new StringBuilder()).append(mAddr._fldif).append(mAddr._fldnew).toString();
            }
            s3 = (new StringBuilder()).append(s2).append(mAddr._fldint).append(mAddr._fldbyte).append(mAddr._flddo).toString();
            mAddr._fldtry = s3;
            _fldvoid = true;
        } else
        {
            _fldvoid = false;
            setAddrStr(null);
        }
        if(jsonobject4.has("poi"))
        {
            _fldcase = true;
            _fldbyte = jsonobject4.getJSONObject("poi").toString();
        }
        continue; /* Loop/switch isn't completed */
_L5:
        JSONObject jsonobject2 = jsonobject.getJSONObject("content");
        JSONObject jsonobject3 = jsonobject2.getJSONObject("point");
        setLatitude(Double.parseDouble(jsonobject3.getString("y")));
        setLongitude(Double.parseDouble(jsonobject3.getString("x")));
        setRadius(Float.parseFloat(jsonobject2.getString("radius")));
        a(Boolean.valueOf(Boolean.parseBoolean(jsonobject2.getString("isCellChanged"))));
        if(true) goto _L4; else goto _L3
_L3:
        continue; /* Loop/switch isn't completed */
_L4:
        break; /* Loop/switch isn't completed */
        if(i != 66 && i != 68) goto _L1; else goto _L5
    }

    public BDLocation(String s, double d1, double d2, float f1, String s1, 
            String s2)
    {
        _fldif = 0;
        d = null;
        _fldelse = 4.9406564584124654E-324D;
        _fldfor = 4.9406564584124654E-324D;
        c = false;
        f = 4.9406564584124654E-324D;
        _fldint = false;
        _fldnew = 0.0F;
        _fldtry = false;
        _fldlong = 0.0F;
        b = false;
        _flddo = -1;
        _fldchar = -1F;
        _fldgoto = null;
        _fldbyte = null;
        _fldvoid = false;
        _fldcase = false;
        a = null;
        mServerString = null;
        e = false;
        mAddr = new a();
        d = s;
        _fldelse = d1;
        _fldfor = d2;
        _fldlong = f1;
        _fldgoto = s1;
        a = s2;
        d = j._mthfor();
    }

    private void a(Boolean boolean1)
    {
        e = boolean1.booleanValue();
    }

    public String getAddrStr()
    {
        return mAddr._fldtry;
    }

    public double getAltitude()
    {
        return f;
    }

    public String getCity()
    {
        return mAddr._fldnew;
    }

    public String getCityCode()
    {
        return mAddr._fldfor;
    }

    public String getCoorType()
    {
        return _fldgoto;
    }

    public float getDerect()
    {
        return _fldchar;
    }

    public String getDistrict()
    {
        return mAddr._fldint;
    }

    public double getLatitude()
    {
        return _fldelse;
    }

    public int getLocType()
    {
        return _fldif;
    }

    public double getLongitude()
    {
        return _fldfor;
    }

    public String getPoi()
    {
        return _fldbyte;
    }

    public String getProvince()
    {
        return mAddr._fldif;
    }

    public float getRadius()
    {
        return _fldlong;
    }

    public int getSatelliteNumber()
    {
        b = true;
        return _flddo;
    }

    public float getSpeed()
    {
        return _fldnew;
    }

    public String getStreet()
    {
        return mAddr._fldbyte;
    }

    public String getStreetNumber()
    {
        return mAddr._flddo;
    }

    public String getTime()
    {
        return d;
    }

    public boolean hasAddr()
    {
        return _fldvoid;
    }

    public boolean hasAltitude()
    {
        return c;
    }

    public boolean hasPoi()
    {
        return _fldcase;
    }

    public boolean hasRadius()
    {
        return _fldtry;
    }

    public boolean hasSateNumber()
    {
        return b;
    }

    public boolean hasSpeed()
    {
        return _fldint;
    }

    public boolean isCellChangeFlag()
    {
        return e;
    }

    public void setAddrStr(String s)
    {
        a = s;
        _fldvoid = true;
    }

    public void setAltitude(double d1)
    {
        f = d1;
        c = true;
    }

    public void setCoorType(String s)
    {
        _fldgoto = s;
    }

    public void setDerect(float f1)
    {
        _fldchar = f1;
    }

    public void setLatitude(double d1)
    {
        _fldelse = d1;
    }

    public void setLocType(int i)
    {
        _fldif = i;
    }

    public void setLongitude(double d1)
    {
        _fldfor = d1;
    }

    public void setRadius(float f1)
    {
        _fldlong = f1;
        _fldtry = true;
    }

    public void setSatelliteNumber(int i)
    {
        _flddo = i;
    }

    public void setSpeed(float f1)
    {
        _fldnew = f1;
        _fldint = true;
    }

    public void setTime(String s)
    {
        d = s;
    }

    public String toJsonString()
    {
        return null;
    }

    public BDLocation toNewLocation(String s)
    {
        return null;
    }

    public static final int TypeCacheLocation = 65;
    public static final int TypeCriteriaException = 62;
    public static final int TypeGpsLocation = 61;
    public static final int TypeNetWorkException = 63;
    public static final int TypeNetWorkLocation = 161;
    public static final int TypeNone = 0;
    public static final int TypeOffLineLocation = 66;
    public static final int TypeOffLineLocationFail = 67;
    public static final int TypeOffLineLocationNetworkFail = 68;
    public static final int TypeServerError = 167;
    private String a;
    private boolean b;
    private String _fldbyte;
    private boolean c;
    private boolean _fldcase;
    private float _fldchar;
    private String d;
    private int _flddo;
    private boolean e;
    private double _fldelse;
    private double f;
    private double _fldfor;
    private String _fldgoto;
    private int _fldif;
    private boolean _fldint;
    private float _fldlong;
    public a mAddr;
    public String mServerString;
    private float _fldnew;
    private boolean _fldtry;
    private boolean _fldvoid;
}
