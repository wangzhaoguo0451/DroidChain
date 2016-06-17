// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.bean;


public class WxTypeReturnData
{

    public WxTypeReturnData()
    {
    }

    public String getAccount()
    {
        return account;
    }

    public String getLogo()
    {
        return logo;
    }

    public String getName()
    {
        return name;
    }

    public int getRecommend()
    {
        return recommend;
    }

    public int getReturnData()
    {
        return returnData;
    }

    public void setAccount(String s)
    {
        account = s;
    }

    public void setLogo(String s)
    {
        logo = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setRecommend(int i)
    {
        recommend = i;
    }

    public void setReturnData(int i)
    {
        returnData = i;
    }

    private String account;
    private String logo;
    private String name;
    private int recommend;
    private int returnData;
}
