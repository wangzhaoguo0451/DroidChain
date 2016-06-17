// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;


// Referenced classes of package com.baidu.location:
//            BDLocation

public interface BDLocationListener
{

    public abstract void onReceiveLocation(BDLocation bdlocation);

    public abstract void onReceivePoi(BDLocation bdlocation);
}
