// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.ads;

import android.app.Activity;
import com.google.ads.util.a;
import d;
import e;

// Referenced classes of package com.google.ads:
//            Ad, AdActivity, AdRequest, AdListener

public class InterstitialAd
    implements Ad
{

    public InterstitialAd(Activity activity, String s)
    {
        a = new d(activity, this, null, s);
    }

    public boolean isReady()
    {
        return a.o();
    }

    public void loadAd(AdRequest adrequest)
    {
        a.a(adrequest);
    }

    public void setAdListener(AdListener adlistener)
    {
        a.a(adlistener);
    }

    public void show()
    {
        if(isReady())
        {
            a.x();
            a.u();
            AdActivity.launchAdActivity(a, new e("interstitial"));
        } else
        {
            com.google.ads.util.a.c("Cannot show interstitial because it is not loaded and ready.");
        }
    }

    public void stopLoading()
    {
        a.y();
    }

    private d a;
}
