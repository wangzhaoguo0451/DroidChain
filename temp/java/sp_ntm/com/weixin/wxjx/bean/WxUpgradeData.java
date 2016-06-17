// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.bean;


public class WxUpgradeData
{

    public WxUpgradeData()
    {
    }

    public String getBackupUrl()
    {
        return backupUrl;
    }

    public String getDownloadUrl()
    {
        return downloadUrl;
    }

    public int getUpgrade()
    {
        return upgrade;
    }

    public void setBackupUrl(String s)
    {
        backupUrl = s;
    }

    public void setDownloadUrl(String s)
    {
        downloadUrl = s;
    }

    public void setUpgrade(int i)
    {
        upgrade = i;
    }

    private String backupUrl;
    private String downloadUrl;
    private int upgrade;
}
