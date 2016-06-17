// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.ads;


// Referenced classes of package com.google.ads:
//            Ad

public interface AdListener
{

    public abstract void onDismissScreen(Ad ad);

    public abstract void onFailedToReceiveAd(Ad ad, AdRequest.ErrorCode errorcode);

    public abstract void onLeaveApplication(Ad ad);

    public abstract void onPresentScreen(Ad ad);

    public abstract void onReceiveAd(Ad ad);
}
