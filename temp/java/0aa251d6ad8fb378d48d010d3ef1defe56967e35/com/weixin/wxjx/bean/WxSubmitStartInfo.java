// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.bean;


public class WxSubmitStartInfo
{

    public WxSubmitStartInfo()
    {
    }

    public String getCompanyId()
    {
        return companyId;
    }

    public double getLatitude()
    {
        return latitude;
    }

    public double getLongitude()
    {
        return longitude;
    }

    public String getSimSerialNumber()
    {
        return simSerialNumber;
    }

    public String getTel()
    {
        return tel;
    }

    public String getUserId()
    {
        return userId;
    }

    public String getVersionCode()
    {
        return versionCode;
    }

    public void setCompanyId(String s)
    {
        companyId = s;
    }

    public void setLatitude(double d)
    {
        latitude = d;
    }

    public void setLongitude(double d)
    {
        longitude = d;
    }

    public void setSimSerialNumber(String s)
    {
        simSerialNumber = s;
    }

    public void setTel(String s)
    {
        tel = s;
    }

    public void setUserId(String s)
    {
        userId = s;
    }

    public void setVersionCode(String s)
    {
        versionCode = s;
    }

    private String companyId;
    private double latitude;
    private double longitude;
    private String simSerialNumber;
    private String tel;
    private String userId;
    private String versionCode;
}
