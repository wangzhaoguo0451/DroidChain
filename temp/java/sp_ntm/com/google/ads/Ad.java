// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.ads;


// Referenced classes of package com.google.ads:
//            AdRequest, AdListener

public interface Ad
{

    public abstract boolean isReady();

    public abstract void loadAd(AdRequest adrequest);

    public abstract void setAdListener(AdListener adlistener);

    public abstract void stopLoading();
}
