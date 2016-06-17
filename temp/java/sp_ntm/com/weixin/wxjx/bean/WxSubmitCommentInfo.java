// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.bean;


public class WxSubmitCommentInfo
{

    public WxSubmitCommentInfo()
    {
    }

    public int getAccountId()
    {
        return accountId;
    }

    public int getComment()
    {
        return comment;
    }

    public String getUserId()
    {
        return userId;
    }

    public void setAccountId(int i)
    {
        accountId = i;
    }

    public void setComment(int i)
    {
        comment = i;
    }

    public void setUserId(String s)
    {
        userId = s;
    }

    private int accountId;
    private int comment;
    private String userId;
}
