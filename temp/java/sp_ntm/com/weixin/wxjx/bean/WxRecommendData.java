// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.bean;


public class WxRecommendData
{

    public WxRecommendData()
    {
    }

    public String getAccount()
    {
        return account;
    }

    public int getAccountId()
    {
        return accountId;
    }

    public String getLogoView()
    {
        return logoView;
    }

    public String getName()
    {
        return name;
    }

    public String getQrCode()
    {
        return qrCode;
    }

    public void setAccount(String s)
    {
        account = s;
    }

    public void setAccountId(int i)
    {
        accountId = i;
    }

    public void setLogoView(String s)
    {
        logoView = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setQrCode(String s)
    {
        qrCode = s;
    }

    private String account;
    private int accountId;
    private String logoView;
    private String name;
    private String qrCode;
}
