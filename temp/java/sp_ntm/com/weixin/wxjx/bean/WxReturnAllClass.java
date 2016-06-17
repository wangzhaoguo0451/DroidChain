// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.bean;

import java.util.List;

// Referenced classes of package com.weixin.wxjx.bean:
//            WxTypeData

public class WxReturnAllClass
{

    public WxReturnAllClass()
    {
    }

    public List getWxRecommendDatas()
    {
        return wxRecommendDatas;
    }

    public WxTypeData getWxTypeData()
    {
        return wxTypeData;
    }

    public void setWxRecommendDatas(List list)
    {
        wxRecommendDatas = list;
    }

    public void setWxTypeData(WxTypeData wxtypedata)
    {
        wxTypeData = wxtypedata;
    }

    private List wxRecommendDatas;
    private WxTypeData wxTypeData;
}
