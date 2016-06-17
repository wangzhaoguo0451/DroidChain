// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.ads;

import a;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.widget.*;
import com.google.ads.util.a;
import d;
import e;
import g;
import h;
import java.util.HashMap;

public class AdActivity extends Activity
    implements android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnPreparedListener, android.view.View.OnClickListener
{

    public AdActivity()
    {
        i = null;
    }

    private void a(g g1, boolean flag, int l)
    {
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        if(g1.getParent() == null) goto _L2; else goto _L1
_L1:
        a("Interstitial created with an AdWebView that has a parent.");
_L4:
        return;
_L2:
        if(g1.b() != null)
        {
            a("Interstitial created with an AdWebView that is already in use by another AdActivity.");
        } else
        {
            setRequestedOrientation(l);
            g1.a(this);
            ImageButton imagebutton = new ImageButton(getApplicationContext());
            imagebutton.setImageResource(0x1080017);
            imagebutton.setBackgroundDrawable(null);
            int i1 = (int)TypedValue.applyDimension(1, 1.0F, getResources().getDisplayMetrics());
            imagebutton.setPadding(i1, i1, 0, 0);
            imagebutton.setOnClickListener(this);
            android.view.ViewGroup.LayoutParams layoutparams = new android.view.ViewGroup.LayoutParams(-1, -1);
            h.addView(g1, layoutparams);
            h.addView(imagebutton);
            setContentView(h);
            if(flag)
                a.a(g1);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void a(String s)
    {
        com.google.ads.util.a.b(s);
        finish();
    }

    public static void launchAdActivity(d d1, e e1)
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        if(c != null) goto _L2; else goto _L1
_L1:
        c = d1;
_L4:
        obj;
        JVM INSTR monitorexit ;
        Activity activity = d1.e();
        Exception exception;
        if(activity == null)
        {
            com.google.ads.util.a.e("activity was null while launching an AdActivity.");
        } else
        {
            Intent intent = new Intent(activity.getApplicationContext(), com/google/ads/AdActivity);
            intent.putExtra("com.google.ads.AdOpener", e1.a());
            try
            {
                com.google.ads.util.a.a("Launching AdActivity.");
                activity.startActivity(intent);
            }
            catch(ActivityNotFoundException activitynotfoundexception)
            {
                com.google.ads.util.a.a(activitynotfoundexception.getMessage(), activitynotfoundexception);
            }
        }
        return;
_L2:
        if(c == d1) goto _L4; else goto _L3
_L3:
        com.google.ads.util.a.b("Tried to launch a new AdActivity with a different AdManager.");
        obj;
        JVM INSTR monitorexit ;
        break MISSING_BLOCK_LABEL_34;
        exception;
        throw exception;
    }

    public g getOpeningAdWebView()
    {
        if(i == null) goto _L2; else goto _L1
_L1:
        g g2 = i.f;
_L4:
        return g2;
_L2:
label0:
        {
            g g1;
            synchronized(a)
            {
                if(c == null)
                {
                    com.google.ads.util.a.e("currentAdManager was null while trying to get the opening AdWebView.");
                    g2 = null;
                    continue; /* Loop/switch isn't completed */
                }
                g1 = c.i();
                if(g1 == f)
                    break label0;
            }
            g2 = g1;
            continue; /* Loop/switch isn't completed */
        }
        g2 = null;
        if(true) goto _L4; else goto _L3
_L3:
        exception;
        throw exception;
    }

    public VideoView getVideoView()
    {
        return k;
    }

    public void onClick(View view)
    {
        finish();
    }

    public void onCompletion(MediaPlayer mediaplayer)
    {
        com.google.ads.util.a.d("Video finished playing.");
        if(k != null)
            k.setVisibility(8);
        f.loadUrl("javascript:AFMA_ReceiveMessage('onVideoEvent', {'event': 'finish'});");
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        if(c == null) goto _L2; else goto _L1
_L1:
        d d1 = c;
        obj;
        JVM INSTR monitorexit ;
        Bundle bundle1;
        if(d == null)
            d = this;
        if(i == null && e != null)
            i = e;
        e = this;
        h = null;
        j = false;
        k = null;
        bundle1 = getIntent().getBundleExtra("com.google.ads.AdOpener");
        if(bundle1 != null) goto _L4; else goto _L3
_L3:
        a("Could not get the Bundle used to create AdActivity.");
_L8:
        return;
_L2:
        a("Could not get currentAdManager.");
        obj;
        JVM INSTR monitorexit ;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
_L4:
        String s;
        HashMap hashmap;
        Object obj1;
        e e1 = new e(bundle1);
        s = e1.b();
        hashmap = e1.c();
        if(this == d)
            d1.s();
        if(!s.equals("intent"))
            break MISSING_BLOCK_LABEL_403;
        f = null;
        g = SystemClock.elapsedRealtime();
        j = true;
        if(hashmap == null)
        {
            a("Could not get the paramMap in launchIntent()");
            continue; /* Loop/switch isn't completed */
        }
        String s5 = (String)hashmap.get("u");
        if(s5 == null)
        {
            a("Could not get the URL parameter in launchIntent().");
            continue; /* Loop/switch isn't completed */
        }
        String s6 = (String)hashmap.get("i");
        String s7 = (String)hashmap.get("m");
        Uri uri = Uri.parse(s5);
        Intent intent1;
        ActivityNotFoundException activitynotfoundexception;
        if(s6 == null)
        {
            intent1 = new Intent("android.intent.action.VIEW", uri);
        } else
        {
            Intent intent = new Intent(s6);
            if(s7 != null)
            {
                intent.setDataAndType(uri, s7);
                intent1 = intent;
            } else
            {
                intent.setData(uri);
                intent1 = intent;
            }
        }
        obj1 = a;
        obj1;
        JVM INSTR monitorenter ;
        if(b == null)
        {
            b = this;
            if(c == null)
                break MISSING_BLOCK_LABEL_386;
            c.t();
        }
_L6:
        try
        {
            com.google.ads.util.a.a("Launching an intent from AdActivity.");
            startActivity(intent1);
        }
        // Misplaced declaration of an exception variable
        catch(ActivityNotFoundException activitynotfoundexception)
        {
            com.google.ads.util.a.a(activitynotfoundexception.getMessage(), activitynotfoundexception);
            finish();
        }
        continue; /* Loop/switch isn't completed */
        com.google.ads.util.a.e("currentAdManager is null while trying to call onLeaveApplication().");
        if(true) goto _L6; else goto _L5
_L5:
        Exception exception1;
        exception1;
        throw exception1;
        h = new RelativeLayout(getApplicationContext());
        if(s.equals("webapp"))
        {
            f = new g(getApplicationContext(), null);
            h h1 = new h(d1, a.b, true, true);
            h1.b();
            f.setWebViewClient(h1);
            String s1 = (String)hashmap.get("u");
            String s2 = (String)hashmap.get("baseurl");
            String s3 = (String)hashmap.get("html");
            String s4 = (String)hashmap.get("o");
            int i1;
            if(s1 != null)
                f.loadUrl(s1);
            else
            if(s3 != null)
            {
                f.loadDataWithBaseURL(s2, s3, "text/html", "utf-8", null);
            } else
            {
                a("Could not get the URL or HTML parameter to show a web app.");
                continue; /* Loop/switch isn't completed */
            }
            if("p".equals(s4))
                i1 = 1;
            else
            if("l".equals(s4))
                i1 = 0;
            else
                i1 = d1.m();
            a(f, false, i1);
            continue; /* Loop/switch isn't completed */
        }
        if(s.equals("interstitial"))
        {
            f = d1.i();
            int l = d1.m();
            a(f, true, l);
        } else
        {
            a((new StringBuilder()).append("Unknown AdOpener, <action: ").append(s).append(">").toString());
        }
        if(true) goto _L8; else goto _L7
_L7:
    }

    public void onDestroy()
    {
        if(h != null)
            h.removeAllViews();
        if(f != null)
        {
            a.b(f);
            f.a(null);
        }
        if(!isFinishing()) goto _L2; else goto _L1
_L1:
        if(k != null)
        {
            k.stopPlayback();
            k = null;
        }
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        if(c != null && f != null)
        {
            if(f == c.i())
                c.a();
            f.stopLoading();
            f.destroy();
        }
        if(this != d) goto _L4; else goto _L3
_L3:
        if(c == null)
            break MISSING_BLOCK_LABEL_172;
        c.r();
        c = null;
_L5:
        d = null;
_L4:
        if(this == b)
            b = null;
        e = i;
_L2:
        com.google.ads.util.a.a("AdActivity is closing.");
        super.onDestroy();
        return;
        com.google.ads.util.a.e("currentAdManager is null while trying to destroy AdActivity.");
          goto _L5
        Exception exception;
        exception;
        throw exception;
    }

    public boolean onError(MediaPlayer mediaplayer, int l, int i1)
    {
        com.google.ads.util.a.e((new StringBuilder()).append("Video threw error! <what:").append(l).append(", extra:").append(i1).append(">").toString());
        finish();
        return true;
    }

    public void onPrepared(MediaPlayer mediaplayer)
    {
        com.google.ads.util.a.d("Video is ready to play.");
        f.loadUrl("javascript:AFMA_ReceiveMessage('onVideoEvent', {'event': 'load'});");
    }

    public void onWindowFocusChanged(boolean flag)
    {
        if(j && flag && SystemClock.elapsedRealtime() - g > 250L)
        {
            com.google.ads.util.a.d("Launcher AdActivity got focus and is closing.");
            finish();
        }
        super.onWindowFocusChanged(flag);
    }

    public void showVideo(VideoView videoview)
    {
        k = videoview;
        if(f == null)
        {
            a("Couldn't get adWebView to show the video.");
        } else
        {
            f.setBackgroundColor(0);
            videoview.setOnCompletionListener(this);
            videoview.setOnPreparedListener(this);
            videoview.setOnErrorListener(this);
            android.view.ViewGroup.LayoutParams layoutparams = new android.view.ViewGroup.LayoutParams(-1, -1);
            LinearLayout linearlayout = new LinearLayout(getApplicationContext());
            linearlayout.setGravity(17);
            linearlayout.addView(videoview, layoutparams);
            h.addView(linearlayout, 0, layoutparams);
        }
    }

    public static final String BASE_URL_PARAM = "baseurl";
    public static final String HTML_PARAM = "html";
    public static final String INTENT_ACTION_PARAM = "i";
    public static final String ORIENTATION_PARAM = "o";
    public static final String TYPE_PARAM = "m";
    public static final String URL_PARAM = "u";
    private static final Object a = new Object();
    private static AdActivity b = null;
    private static d c = null;
    private static AdActivity d = null;
    private static AdActivity e = null;
    private g f;
    private long g;
    private RelativeLayout h;
    private AdActivity i;
    private boolean j;
    private VideoView k;

}
