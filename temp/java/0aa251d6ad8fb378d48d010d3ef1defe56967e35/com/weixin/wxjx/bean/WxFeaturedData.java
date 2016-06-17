// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.bean;


public class WxFeaturedData
{

    public WxFeaturedData()
    {
    }

    public String getLogoView()
    {
        return logoView;
    }

    public String getName()
    {
        return name;
    }

    public String getPackageName()
    {
        return packageName;
    }

    public String getViewUrl()
    {
        return viewUrl;
    }

    public void setLogoView(String s)
    {
        logoView = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setPackageName(String s)
    {
        packageName = s;
    }

    public void setViewUrl(String s)
    {
        viewUrl = s;
    }

    private String logoView;
    private String name;
    private String packageName;
    private String viewUrl;
}
