// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.bean;


public class WxSubmitRecordInfo
{

    public WxSubmitRecordInfo()
    {
    }

    public int getAccountType()
    {
        return accountType;
    }

    public String getQq()
    {
        return qq;
    }

    public String getUserId()
    {
        return userId;
    }

    public String getWx()
    {
        return wx;
    }

    public void setAccountType(int i)
    {
        accountType = i;
    }

    public void setQq(String s)
    {
        qq = s;
    }

    public void setUserId(String s)
    {
        userId = s;
    }

    public void setWx(String s)
    {
        wx = s;
    }

    private int accountType;
    private String qq;
    private String userId;
    private String wx;
}
