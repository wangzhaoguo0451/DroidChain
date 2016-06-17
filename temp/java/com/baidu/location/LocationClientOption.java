// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;


public final class LocationClientOption
{

    public LocationClientOption()
    {
        _fldtry = "gcj02";
        _fldchar = "detail";
        _fldcase = false;
        _fldint = 0;
        _fldlong = 12000;
        _fldnew = "SDK2.0";
        _fldgoto = 1;
        _fldvoid = false;
        _fldfor = true;
        _fldelse = false;
        _fldif = false;
        _flddo = 500F;
        a = 3;
        _fldbyte = "com.baidu.location.service_v2.9";
    }

    public LocationClientOption(LocationClientOption locationclientoption)
    {
        _fldtry = "gcj02";
        _fldchar = "detail";
        _fldcase = false;
        _fldint = 0;
        _fldlong = 12000;
        _fldnew = "SDK2.0";
        _fldgoto = 1;
        _fldvoid = false;
        _fldfor = true;
        _fldelse = false;
        _fldif = false;
        _flddo = 500F;
        a = 3;
        _fldbyte = "com.baidu.location.service_v2.9";
        _fldtry = locationclientoption._fldtry;
        _fldchar = locationclientoption._fldchar;
        _fldcase = locationclientoption._fldcase;
        _fldint = locationclientoption._fldint;
        _fldlong = locationclientoption._fldlong;
        _fldnew = locationclientoption._fldnew;
        _fldgoto = locationclientoption._fldgoto;
        _fldvoid = locationclientoption._fldvoid;
        _fldif = locationclientoption._fldif;
        _flddo = locationclientoption._flddo;
        a = locationclientoption.a;
        _fldbyte = locationclientoption._fldbyte;
        _fldfor = locationclientoption._fldfor;
    }

    public void disableCache(boolean flag)
    {
        _fldfor = flag;
    }

    public boolean equals(LocationClientOption locationclientoption)
    {
        boolean flag;
        if(_fldtry.equals(locationclientoption._fldtry) && _fldchar.equals(locationclientoption._fldchar) && _fldcase == locationclientoption._fldcase && _fldint == locationclientoption._fldint && _fldlong == locationclientoption._fldlong && _fldnew.equals(locationclientoption._fldnew) && _fldvoid == locationclientoption._fldvoid && _fldgoto == locationclientoption._fldgoto && a == locationclientoption.a && _fldif == locationclientoption._fldif && _flddo == locationclientoption._flddo && _fldfor == locationclientoption._fldfor)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public String getAddrType()
    {
        return _fldchar;
    }

    public String getCoorType()
    {
        return _fldtry;
    }

    public float getPoiDistance()
    {
        return _flddo;
    }

    public boolean getPoiExtranInfo()
    {
        return _fldif;
    }

    public int getPoiNumber()
    {
        return a;
    }

    public int getPriority()
    {
        return _fldgoto;
    }

    public String getProdName()
    {
        return _fldnew;
    }

    public int getScanSpan()
    {
        return _fldint;
    }

    public String getServiceName()
    {
        return _fldbyte;
    }

    public int getTimeOut()
    {
        return _fldlong;
    }

    public boolean isDisableCache()
    {
        return _fldfor;
    }

    public boolean isLocationNotify()
    {
        return _fldvoid;
    }

    public boolean isOpenGps()
    {
        return _fldcase;
    }

    public void setAddrType(String s)
    {
        if(s.length() > 32)
            s = s.substring(0, 32);
        _fldchar = s;
    }

    public void setCoorType(String s)
    {
        String s1 = s.toLowerCase();
        if(s1.equals("gcj02") || s1.equals("bd09") || s1.equals("bd09ll"))
            _fldtry = s1;
    }

    public void setLocationNotify(boolean flag)
    {
        _fldvoid = flag;
    }

    public void setOpenGps(boolean flag)
    {
        _fldcase = flag;
    }

    public void setPoiDistance(float f)
    {
        _flddo = f;
    }

    public void setPoiExtraInfo(boolean flag)
    {
        _fldif = flag;
    }

    public void setPoiNumber(int i)
    {
        if(i > 10)
            i = 10;
        a = i;
    }

    public void setPriority(int i)
    {
        if(i == 1 || i == 2)
            _fldgoto = i;
    }

    public void setProdName(String s)
    {
        if(s.length() > 64)
            s = s.substring(0, 64);
        _fldnew = s;
    }

    public void setScanSpan(int i)
    {
        _fldint = i;
    }

    public void setServiceName(String s)
    {
        _fldbyte = s;
    }

    public void setTimeOut(int i)
    {
        _fldlong = i;
    }

    public static final int GpsFirst = 1;
    public static final int MIN_SCAN_SPAN = 1000;
    public static final int NetWorkFirst = 2;
    protected int a;
    protected String _fldbyte;
    protected boolean _fldcase;
    protected String _fldchar;
    protected float _flddo;
    protected boolean _fldelse;
    protected boolean _fldfor;
    protected int _fldgoto;
    protected boolean _fldif;
    protected int _fldint;
    protected int _fldlong;
    protected String _fldnew;
    protected String _fldtry;
    protected boolean _fldvoid;
}
