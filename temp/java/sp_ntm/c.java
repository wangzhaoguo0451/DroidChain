// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.ads.*;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.util.*;

public final class c extends AsyncTask
{
    private class a extends Exception
    {

        final c a;

        public a(String s)
        {
            a = c.this;
            super(s);
        }
    }

    private class b extends Exception
    {

        final c a;

        public b(String s)
        {
            a = c.this;
            super(s);
        }
    }


    public c(d d1)
    {
        f = d1;
        b = null;
        a = null;
        c = null;
        h = false;
        i = false;
        Activity activity = d1.e();
        if(activity != null)
        {
            g = new WebView(activity.getApplicationContext());
            g.getSettings().setJavaScriptEnabled(true);
            g.setWebViewClient(new h(d1, a.a, false, false));
            AdUtil.a(g);
            g.setVisibility(8);
            g.setWillNotDraw(true);
            e = new b(this, d1, activity.getApplicationContext());
        } else
        {
            g = null;
            e = null;
            com.google.ads.util.a.e("activity was null while trying to create an AdLoader.");
        }
    }

    private transient com.google.ads.AdRequest.ErrorCode a(AdRequest aadrequest[])
    {
        this;
        JVM INSTR monitorenter ;
        if(g != null && e != null) goto _L2; else goto _L1
_L1:
        com.google.ads.AdRequest.ErrorCode errorcode;
        com.google.ads.util.a.e("adRequestWebView was null while trying to load an ad.");
        errorcode = com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR;
        this;
        JVM INSTR monitorexit ;
          goto _L3
_L2:
        AdRequest adrequest;
        Activity activity;
        adrequest = aadrequest[0];
        activity = f.e();
        if(activity != null) goto _L5; else goto _L4
_L4:
        com.google.ads.util.a.e("activity was null while forming an ad request.");
        errorcode = com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR;
        this;
        JVM INSTR monitorexit ;
          goto _L3
        Exception exception;
        exception;
        throw exception;
_L5:
        String s = a(adrequest, activity);
        long l;
        long l1;
        g.loadDataWithBaseURL(null, s, "text/html", "utf-8", null);
        l = f.n();
        l1 = SystemClock.elapsedRealtime();
        if(l <= 0L)
            break MISSING_BLOCK_LABEL_120;
        wait(l);
        if(c == null) goto _L7; else goto _L6
_L6:
        errorcode = c;
        this;
        JVM INSTR monitorexit ;
          goto _L3
        b b1;
        b1;
        com.google.ads.util.a.b("Unable to connect to network.", b1);
        errorcode = com.google.ads.AdRequest.ErrorCode.NETWORK_ERROR;
        this;
        JVM INSTR monitorexit ;
          goto _L3
        a a1;
        a1;
        com.google.ads.util.a.b("Caught internal exception.", a1);
        errorcode = com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR;
        this;
        JVM INSTR monitorexit ;
          goto _L3
        InterruptedException interruptedexception2;
        interruptedexception2;
        com.google.ads.util.a.e((new StringBuilder()).append("AdLoader InterruptedException while getting the URL: ").append(interruptedexception2).toString());
        errorcode = com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR;
        this;
        JVM INSTR monitorexit ;
          goto _L3
_L7:
        if(b != null) goto _L9; else goto _L8
_L8:
        com.google.ads.util.a.c((new StringBuilder()).append("AdLoader timed out after ").append(l).append("ms while getting the URL.").toString());
        errorcode = com.google.ads.AdRequest.ErrorCode.NETWORK_ERROR;
        this;
        JVM INSTR monitorexit ;
          goto _L3
_L9:
        long l2;
        String as[] = new String[1];
        as[0] = b;
        publishProgress(as);
        l2 = SystemClock.elapsedRealtime();
        long l3;
        l3 = l - (l2 - l1);
        if(l3 <= 0L)
            break MISSING_BLOCK_LABEL_299;
        wait(l3);
        if(c == null) goto _L11; else goto _L10
_L10:
        errorcode = c;
        this;
        JVM INSTR monitorexit ;
          goto _L3
        InterruptedException interruptedexception1;
        interruptedexception1;
        com.google.ads.util.a.e((new StringBuilder()).append("AdLoader InterruptedException while getting the HTML: ").append(interruptedexception1).toString());
        errorcode = com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR;
        this;
        JVM INSTR monitorexit ;
          goto _L3
_L11:
        if(a != null) goto _L13; else goto _L12
_L12:
        com.google.ads.util.a.c((new StringBuilder()).append("AdLoader timed out after ").append(l).append("ms while getting the HTML.").toString());
        errorcode = com.google.ads.AdRequest.ErrorCode.NETWORK_ERROR;
        this;
        JVM INSTR monitorexit ;
          goto _L3
_L13:
        g g1;
        long l4;
        g1 = f.i();
        f.j().a();
        g1.loadDataWithBaseURL(d, a, "text/html", "utf-8", null);
        l4 = SystemClock.elapsedRealtime();
        long l5;
        l5 = l - (l4 - l1);
        if(l5 <= 0L)
            break MISSING_BLOCK_LABEL_459;
        wait(l5);
        if(!i) goto _L15; else goto _L14
_L14:
        this;
        JVM INSTR monitorexit ;
        errorcode = null;
          goto _L3
        InterruptedException interruptedexception;
        interruptedexception;
        com.google.ads.util.a.e((new StringBuilder()).append("AdLoader InterruptedException while loading the HTML: ").append(interruptedexception).toString());
        g1.stopLoading();
        errorcode = com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR;
        this;
        JVM INSTR monitorexit ;
          goto _L3
_L15:
        g1.stopLoading();
        h = true;
        com.google.ads.util.a.c((new StringBuilder()).append("AdLoader timed out after ").append(l).append("ms while loading the HTML.").toString());
        errorcode = com.google.ads.AdRequest.ErrorCode.NETWORK_ERROR;
        this;
        JVM INSTR monitorexit ;
_L3:
        return errorcode;
    }

    private String a(AdRequest adrequest, Activity activity)
        throws a, b
    {
        Context context = activity.getApplicationContext();
        Map map = adrequest.getRequestMap(context);
        f f1 = f.l();
        long l = f1.h();
        if(l > 0L)
            map.put("prl", Long.valueOf(l));
        String s = f1.g();
        if(s != null)
            map.put("ppcl", s);
        String s1 = f1.f();
        if(s1 != null)
            map.put("pcl", s1);
        long l1 = f1.e();
        if(l1 > 0L)
            map.put("pcc", Long.valueOf(l1));
        map.put("preqs", Long.valueOf(f.i()));
        String s2 = f1.j();
        if(s2 != null)
            map.put("pai", s2);
        if(f1.k())
            map.put("aoi_timeout", "true");
        if(f1.m())
            map.put("aoi_nofill", "true");
        String s3 = f1.p();
        if(s3 != null)
            map.put("pit", s3);
        f1.a();
        f1.d();
        String s5;
        PackageInfo packageinfo;
        int j;
        String s6;
        if(f.f() instanceof InterstitialAd)
        {
            map.put("format", "interstitial_mb");
        } else
        {
            AdSize adsize = f.k();
            String s4 = adsize.toString();
            if(s4 != null)
            {
                map.put("format", s4);
            } else
            {
                HashMap hashmap = new HashMap();
                hashmap.put("w", Integer.valueOf(adsize.getWidth()));
                hashmap.put("h", Integer.valueOf(adsize.getHeight()));
                map.put("ad_frame", hashmap);
            }
        }
        map.put("slotname", f.h());
        map.put("js", "afma-sdk-a-v4.1.0");
        s5 = context.getPackageName();
        try
        {
            packageinfo = context.getPackageManager().getPackageInfo(s5, 0);
        }
        catch(android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new a("NameNotFound!");
        }
        j = packageinfo.versionCode;
        map.put("msid", context.getPackageName());
        map.put("app_name", (new StringBuilder()).append(j).append(".android.").append(context.getPackageName()).toString());
        map.put("isu", AdUtil.a(context));
        s6 = AdUtil.d(context);
        if(s6 == null)
            throw new b("NETWORK_ERROR");
        map.put("net", s6);
        String s7 = AdUtil.e(context);
        if(s7 != null && s7.length() != 0)
            map.put("cap", s7);
        map.put("u_audio", Integer.valueOf(AdUtil.f(context).ordinal()));
        map.put("u_so", AdUtil.g(context));
        DisplayMetrics displaymetrics = AdUtil.a(activity);
        map.put("u_sd", Float.valueOf(displaymetrics.density));
        map.put("u_h", Integer.valueOf((int)((float)displaymetrics.heightPixels / displaymetrics.density)));
        map.put("u_w", Integer.valueOf((int)((float)displaymetrics.widthPixels / displaymetrics.density)));
        map.put("hl", Locale.getDefault().getLanguage());
        if(AdUtil.a())
            map.put("simulator", Integer.valueOf(1));
        String s8 = AdUtil.a(map);
        String s9 = (new StringBuilder()).append("<html><head><script src=\"http://www.gstatic.com/afma/sdk-core-v40.js\"></script><script>AFMA_buildAdURL(").append(s8).append(");").append("</script></head><body></body></html>").toString();
        com.google.ads.util.a.c((new StringBuilder()).append("adRequestUrlHtml: ").append(s9).toString());
        return s9;
    }

    /**
     * @deprecated Method a is deprecated
     */

    final void a()
    {
        this;
        JVM INSTR monitorenter ;
        i = true;
        notify();
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
        c = errorcode;
        notify();
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

    public final void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        b = s;
        notify();
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

    final void a(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        d = s1;
        a = s;
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a((AdRequest[])aobj);
    }

    protected final void onCancelled()
    {
        com.google.ads.util.a.a("AdLoader cancelled.");
        g.stopLoading();
        g.destroy();
        e.cancel(false);
    }

    protected final void onPostExecute(Object obj)
    {
        com.google.ads.AdRequest.ErrorCode errorcode = (com.google.ads.AdRequest.ErrorCode)obj;
        this;
        JVM INSTR monitorenter ;
        if(errorcode != null) goto _L2; else goto _L1
_L1:
        f.q();
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        g.stopLoading();
        g.destroy();
        e.cancel(false);
        if(h)
            f.i().setVisibility(8);
        f.a(errorcode);
        if(true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    protected final void onProgressUpdate(Object aobj[])
    {
        String as[] = (String[])aobj;
        b b1 = e;
        String as1[] = new String[1];
        as1[0] = as[0];
        b1.execute(as1);
    }

    String a;
    public String b;
    public com.google.ads.AdRequest.ErrorCode c;
    private String d;
    private b e;
    private d f;
    private WebView g;
    private boolean h;
    private boolean i;
}
