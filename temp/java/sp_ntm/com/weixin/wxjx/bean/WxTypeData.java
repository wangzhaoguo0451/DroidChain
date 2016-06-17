// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.bean;


public class WxTypeData
{

    public WxTypeData()
    {
    }

    public int getCount()
    {
        return count;
    }

    public int getTypeId()
    {
        return typeId;
    }

    public String getTypeName()
    {
        return typeName;
    }

    public void setCount(int i)
    {
        count = i;
    }

    public void setTypeId(int i)
    {
        typeId = i;
    }

    public void setTypeName(String s)
    {
        typeName = s;
    }

    private int count;
    private int typeId;
    private String typeName;
}
