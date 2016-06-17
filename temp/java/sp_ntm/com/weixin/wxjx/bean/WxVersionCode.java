// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.bean;


public class WxVersionCode
{

    public WxVersionCode()
    {
    }

    public double getLatitude()
    {
        return latitude;
    }

    public double getLongitude()
    {
        return longitude;
    }

    public String getUserId()
    {
        return userId;
    }

    public String getVersionCode()
    {
        return versionCode;
    }

    public void setLatitude(double d)
    {
        latitude = d;
    }

    public void setLongitude(double d)
    {
        longitude = d;
    }

    public void setUserId(String s)
    {
        userId = s;
    }

    public void setVersionCode(String s)
    {
        versionCode = s;
    }

    private double latitude;
    private double longitude;
    private String userId;
    private String versionCode;
}
