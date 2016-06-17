// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import com.google.ads.*;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;

public final class d
{

    public d(Activity activity, Ad ad, AdSize adsize, String s1)
    {
        u = 4;
        b = new WeakReference(activity);
        c = ad;
        g = adsize;
        i = s1;
        h = new f();
        d = null;
        e = null;
        f = null;
        n = false;
        l = new Handler();
        q = 0L;
        o = false;
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        long l1;
        p = activity.getApplicationContext().getSharedPreferences("GoogleAdMobAdsPrefs", 0);
        l1 = p.getLong((new StringBuilder()).append("InterstitialTimeout").append(s1).toString(), -1L);
        if(l1 >= 0L)
            break MISSING_BLOCK_LABEL_208;
        m = 5000L;
_L2:
        r = new x(this);
        s = new LinkedList();
        t = new LinkedList();
        a();
        AdUtil.h(activity.getApplicationContext());
        return;
        m = l1;
        if(true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method z is deprecated
     */

    private boolean z()
    {
        this;
        JVM INSTR monitorenter ;
        c c1 = e;
        boolean flag;
        if(c1 != null)
            flag = true;
        else
            flag = false;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method a is deprecated
     */

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        Activity activity = e();
        if(activity != null) goto _L2; else goto _L1
_L1:
        com.google.ads.util.a.a("activity was null while trying to create an AdWebView.");
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        j = new g(activity.getApplicationContext(), g);
        j.setVisibility(8);
        if(!(c instanceof AdView))
            break; /* Loop/switch isn't completed */
        k = new h(this, a.b, true, false);
_L5:
        j.setWebViewClient(k);
        if(true) goto _L4; else goto _L3
        Exception exception;
        exception;
        throw exception;
_L3:
        k = new h(this, a.b, true, true);
          goto _L5
    }

    /**
     * @deprecated Method a is deprecated
     */

    public final void a(float f1)
    {
        this;
        JVM INSTR monitorenter ;
        long l1 = (long)(1000F * f1);
        q = l1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method a is deprecated
     */

    public final void a(int i1)
    {
        this;
        JVM INSTR monitorenter ;
        u = i1;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(long l1)
    {
        synchronized(a)
        {
            android.content.SharedPreferences.Editor editor = p.edit();
            editor.putLong((new StringBuilder()).append("InterstitialTimeout").append(i).toString(), l1);
            editor.commit();
            m = l1;
        }
    }

    /**
     * @deprecated Method a is deprecated
     */

    public final void a(AdListener adlistener)
    {
        this;
        JVM INSTR monitorenter ;
        d = adlistener;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method a is deprecated
     */

    public final void a(com.google.ads.AdRequest.ErrorCode errorcode)
    {
        this;
        JVM INSTR monitorenter ;
        e = null;
        if(!(c instanceof InterstitialAd)) goto _L2; else goto _L1
_L1:
        if(errorcode != com.google.ads.AdRequest.ErrorCode.NO_FILL) goto _L4; else goto _L3
_L3:
        h.n();
_L2:
        com.google.ads.util.a.c((new StringBuilder()).append("onFailedToReceiveAd(").append(errorcode).append(")").toString());
        if(d != null)
            d.onFailedToReceiveAd(c, errorcode);
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        if(errorcode != com.google.ads.AdRequest.ErrorCode.NETWORK_ERROR) goto _L2; else goto _L5
_L5:
        h.l();
          goto _L2
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method a is deprecated
     */

    public final void a(AdRequest adrequest)
    {
        this;
        JVM INSTR monitorenter ;
        if(!z()) goto _L2; else goto _L1
_L1:
        com.google.ads.util.a.e("loadAd called while the ad is already loading.");
_L5:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Activity activity = e();
        if(activity != null) goto _L4; else goto _L3
_L3:
        com.google.ads.util.a.e("activity is null while trying to load an ad.");
          goto _L5
        Exception exception;
        exception;
        throw exception;
_L4:
        if(!AdUtil.c(activity.getApplicationContext()) || !AdUtil.b(activity.getApplicationContext())) goto _L5; else goto _L6
_L6:
        n = false;
        f = adrequest;
        e = new c(this);
        c c1 = e;
        AdRequest aadrequest[] = new AdRequest[1];
        aadrequest[0] = adrequest;
        c1.execute(aadrequest);
          goto _L5
    }

    /**
     * @deprecated Method a is deprecated
     */

    final void a(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        s.add(s1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method b is deprecated
     */

    public final void b()
    {
        this;
        JVM INSTR monitorenter ;
        a(((AdListener) (null)));
        y();
        j.destroy();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method b is deprecated
     */

    final void b(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        t.add(s1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method c is deprecated
     */

    public final void c()
    {
        this;
        JVM INSTR monitorenter ;
        if(!o) goto _L2; else goto _L1
_L1:
        com.google.ads.util.a.a("Disabling refreshing.");
        l.removeCallbacks(r);
        o = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        com.google.ads.util.a.a("Refreshing is already disabled.");
        if(true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method d is deprecated
     */

    public final void d()
    {
        this;
        JVM INSTR monitorenter ;
        if(!(c instanceof AdView))
            break MISSING_BLOCK_LABEL_89;
        if(o) goto _L2; else goto _L1
_L1:
        com.google.ads.util.a.a((new StringBuilder()).append("Enabling refreshing every ").append(q).append(" milliseconds.").toString());
        l.postDelayed(r, q);
        o = true;
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        com.google.ads.util.a.a("Refreshing is already enabled.");
          goto _L3
        Exception exception;
        exception;
        throw exception;
        com.google.ads.util.a.a("Tried to enable refreshing on something other than an AdView.");
          goto _L3
    }

    public final Activity e()
    {
        return (Activity)b.get();
    }

    final Ad f()
    {
        return c;
    }

    /**
     * @deprecated Method g is deprecated
     */

    public final c g()
    {
        this;
        JVM INSTR monitorenter ;
        c c1 = e;
        this;
        JVM INSTR monitorexit ;
        return c1;
        Exception exception;
        exception;
        throw exception;
    }

    final String h()
    {
        return i;
    }

    /**
     * @deprecated Method i is deprecated
     */

    public final g i()
    {
        this;
        JVM INSTR monitorenter ;
        g g1 = j;
        this;
        JVM INSTR monitorexit ;
        return g1;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method j is deprecated
     */

    final h j()
    {
        this;
        JVM INSTR monitorenter ;
        h h1 = k;
        this;
        JVM INSTR monitorexit ;
        return h1;
        Exception exception;
        exception;
        throw exception;
    }

    public final AdSize k()
    {
        return g;
    }

    public final f l()
    {
        return h;
    }

    /**
     * @deprecated Method m is deprecated
     */

    public final int m()
    {
        this;
        JVM INSTR monitorenter ;
        int i1 = u;
        this;
        JVM INSTR monitorexit ;
        return i1;
        Exception exception;
        exception;
        throw exception;
    }

    public final long n()
    {
        long l1;
        if(c instanceof InterstitialAd)
        {
            long l2;
            synchronized(a)
            {
                l2 = m;
            }
            l1 = l2;
        } else
        {
            l1 = 60000L;
        }
        return l1;
    }

    /**
     * @deprecated Method o is deprecated
     */

    public final boolean o()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = n;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method p is deprecated
     */

    public final boolean p()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = o;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method q is deprecated
     */

    final void q()
    {
        this;
        JVM INSTR monitorenter ;
        e = null;
        n = true;
        j.setVisibility(0);
        h.c();
        if(c instanceof AdView)
            u();
        com.google.ads.util.a.c("onReceiveAd()");
        if(d != null)
            d.onReceiveAd(c);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method r is deprecated
     */

    public final void r()
    {
        this;
        JVM INSTR monitorenter ;
        h.o();
        com.google.ads.util.a.c("onDismissScreen()");
        if(d != null)
            d.onDismissScreen(c);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method s is deprecated
     */

    public final void s()
    {
        this;
        JVM INSTR monitorenter ;
        h.b();
        com.google.ads.util.a.c("onPresentScreen()");
        if(d != null)
            d.onPresentScreen(c);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method t is deprecated
     */

    public final void t()
    {
        this;
        JVM INSTR monitorenter ;
        com.google.ads.util.a.c("onLeaveApplication()");
        if(d != null)
            d.onLeaveApplication(c);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method u is deprecated
     */

    public final void u()
    {
        this;
        JVM INSTR monitorenter ;
        Activity activity = (Activity)b.get();
        if(activity != null) goto _L2; else goto _L1
_L1:
        com.google.ads.util.a.e("activity was null while trying to ping tracking URLs.");
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        for(Iterator iterator = s.iterator(); iterator.hasNext(); (new Thread(new w((String)iterator.next(), activity.getApplicationContext()))).start());
        break MISSING_BLOCK_LABEL_81;
        Exception exception;
        exception;
        throw exception;
        s.clear();
          goto _L3
    }

    /**
     * @deprecated Method v is deprecated
     */

    public final boolean v()
    {
        this;
        JVM INSTR monitorenter ;
        if(t.isEmpty()) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L5:
        Activity activity = (Activity)b.get();
        if(activity != null) goto _L4; else goto _L3
_L3:
        com.google.ads.util.a.e("activity was null while trying to ping click tracking URLs.");
        boolean flag1 = flag;
_L6:
        this;
        JVM INSTR monitorexit ;
        return flag1;
_L2:
        flag = false;
          goto _L5
_L4:
        for(Iterator iterator = t.iterator(); iterator.hasNext(); (new Thread(new w((String)iterator.next(), activity.getApplicationContext()))).start());
        break MISSING_BLOCK_LABEL_106;
        Exception exception;
        exception;
        throw exception;
        t.clear();
        flag1 = flag;
          goto _L6
    }

    /**
     * @deprecated Method w is deprecated
     */

    public final void w()
    {
        this;
        JVM INSTR monitorenter ;
        if(f == null)
            break MISSING_BLOCK_LABEL_94;
        if(!(c instanceof AdView)) goto _L2; else goto _L1
_L1:
        if(!((AdView)c).isShown() || !AdUtil.b()) goto _L4; else goto _L3
_L3:
        com.google.ads.util.a.c("Refreshing ad.");
        a(f);
_L5:
        l.postDelayed(r, q);
_L6:
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        com.google.ads.util.a.a("Not refreshing because the ad is not visible.");
          goto _L5
        Exception exception;
        exception;
        throw exception;
_L2:
        com.google.ads.util.a.a("Tried to refresh an ad that wasn't an AdView.");
          goto _L6
        com.google.ads.util.a.a("Tried to refresh before calling loadAd().");
          goto _L6
    }

    /**
     * @deprecated Method x is deprecated
     */

    public final void x()
    {
        this;
        JVM INSTR monitorenter ;
        n = false;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method y is deprecated
     */

    public final void y()
    {
        this;
        JVM INSTR monitorenter ;
        if(e != null)
        {
            e.cancel(false);
            e = null;
        }
        j.stopLoading();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private static final Object a = new Object();
    private WeakReference b;
    private Ad c;
    private AdListener d;
    private c e;
    private AdRequest f;
    private AdSize g;
    private f h;
    private String i;
    private g j;
    private h k;
    private Handler l;
    private long m;
    private boolean n;
    private boolean o;
    private SharedPreferences p;
    private long q;
    private x r;
    private LinkedList s;
    private LinkedList t;
    private int u;

}
