// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.database;


public class SessionMessage
{

    public SessionMessage()
    {
    }

    public String getCreatedTime()
    {
        return createdTime;
    }

    public int getFrom()
    {
        return from;
    }

    public String getTheme()
    {
        return theme;
    }

    public long getThreadId()
    {
        return threadId;
    }

    public void setCreatedTime(String s)
    {
        createdTime = s;
    }

    public void setFrom(int i)
    {
        from = i;
    }

    public void setTheme(String s)
    {
        theme = s;
    }

    public void setThreadId(long l)
    {
        threadId = l;
    }

    private String createdTime;
    private int from;
    private String theme;
    private long threadId;
}
