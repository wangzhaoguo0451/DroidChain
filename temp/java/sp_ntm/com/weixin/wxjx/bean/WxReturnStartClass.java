// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.bean;

import java.util.List;

// Referenced classes of package com.weixin.wxjx.bean:
//            WxUpgradeData

public class WxReturnStartClass
{

    public WxReturnStartClass()
    {
    }

    public List getAdvertisingDatas()
    {
        return wxAdvertisingDatas;
    }

    public List getReturnListDatas()
    {
        return wxReturnListDatas;
    }

    public WxUpgradeData getUpgradeData()
    {
        return wxUpgradeData;
    }

    public void setAdvertisingDatas(List list)
    {
        wxAdvertisingDatas = list;
    }

    public void setReturnListDatas(List list)
    {
        wxReturnListDatas = list;
    }

    public void setUpgradeData(WxUpgradeData wxupgradedata)
    {
        wxUpgradeData = wxupgradedata;
    }

    private List wxAdvertisingDatas;
    private List wxReturnListDatas;
    private WxUpgradeData wxUpgradeData;
}
