// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.bean;


public class WxUserSuggest
{

    public WxUserSuggest()
    {
    }

    public String getSuggest()
    {
        return suggest;
    }

    public String getUserId()
    {
        return userId;
    }

    public void setSuggest(String s)
    {
        suggest = s;
    }

    public void setUserId(String s)
    {
        userId = s;
    }

    private String suggest;
    private String userId;
}
