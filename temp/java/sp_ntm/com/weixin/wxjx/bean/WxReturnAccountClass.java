// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.bean;

import java.util.List;

// Referenced classes of package com.weixin.wxjx.bean:
//            WxAccountData

public class WxReturnAccountClass
{

    public WxReturnAccountClass()
    {
    }

    public WxAccountData getAccountData()
    {
        return wxAccountData;
    }

    public List getRecommendDatas()
    {
        return wxRecommendDatas;
    }

    public void setAccountData(WxAccountData wxaccountdata)
    {
        wxAccountData = wxaccountdata;
    }

    public void setRecommendDatas(List list)
    {
        wxRecommendDatas = list;
    }

    private WxAccountData wxAccountData;
    private List wxRecommendDatas;
}
