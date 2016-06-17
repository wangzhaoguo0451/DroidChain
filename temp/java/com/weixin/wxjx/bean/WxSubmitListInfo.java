// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.bean;


public class WxSubmitListInfo
{

    public WxSubmitListInfo()
    {
    }

    public int getFlag()
    {
        return flag;
    }

    public int getMaxNum()
    {
        return maxNum;
    }

    public String getSearchContent()
    {
        return searchContent;
    }

    public int getStartNum()
    {
        return startNum;
    }

    public int getTypeId()
    {
        return typeId;
    }

    public String getUserId()
    {
        return userId;
    }

    public void setFlag(int i)
    {
        flag = i;
    }

    public void setMaxNum(int i)
    {
        maxNum = i;
    }

    public void setSearchContent(String s)
    {
        searchContent = s;
    }

    public void setStartNum(int i)
    {
        startNum = i;
    }

    public void setTypeId(int i)
    {
        typeId = i;
    }

    public void setUserId(String s)
    {
        userId = s;
    }

    private int flag;
    private int maxNum;
    private String searchContent;
    private int startNum;
    private int typeId;
    private String userId;
}
