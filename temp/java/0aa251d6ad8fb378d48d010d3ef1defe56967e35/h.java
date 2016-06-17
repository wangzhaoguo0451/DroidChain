// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.ads.AdActivity;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.util.HashMap;
import java.util.Map;

public final class h extends WebViewClient
{

    public h(d d1, Map map, boolean flag, boolean flag1)
    {
        a = d1;
        b = map;
        c = flag;
        d = flag1;
        e = false;
        f = false;
    }

    public final void a()
    {
        e = true;
    }

    public final void b()
    {
        f = true;
    }

    public final void onPageFinished(WebView webview, String s)
    {
        if(e)
        {
            c c1 = a.g();
            if(c1 != null)
                c1.a();
            else
                com.google.ads.util.a.a("adLoader was null while trying to setFinishedLoadingHtml().");
            e = false;
        }
        if(f)
        {
            a.a(webview);
            f = false;
        }
    }

    public final boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        com.google.ads.util.a.a((new StringBuilder()).append("shouldOverrideUrlLoading(\"").append(s).append("\")").toString());
        Uri uri = Uri.parse(s);
        boolean flag;
        if(a.a(uri))
        {
            a.a(a, b, uri, webview);
            flag = true;
        } else
        if(d)
        {
            if(AdUtil.a(uri))
            {
                flag = super.shouldOverrideUrlLoading(webview, s);
            } else
            {
                HashMap hashmap2 = new HashMap();
                hashmap2.put("u", s);
                AdActivity.launchAdActivity(a, new e("intent", hashmap2));
                flag = true;
            }
        } else
        if(c)
        {
            HashMap hashmap = AdUtil.b(uri);
            if(hashmap == null)
            {
                com.google.ads.util.a.e("An error occurred while parsing the url parameters.");
                flag = true;
            } else
            {
                String s1 = (String)hashmap.get("ai");
                a.l().a(s1);
                String s2;
                HashMap hashmap1;
                if(a.v() && AdUtil.a(uri))
                    s2 = "webapp";
                else
                    s2 = "intent";
                hashmap1 = new HashMap();
                hashmap1.put("u", uri.toString());
                AdActivity.launchAdActivity(a, new e(s2, hashmap1));
                flag = true;
            }
        } else
        {
            com.google.ads.util.a.e((new StringBuilder()).append("URL is not a GMSG and can't handle URL: ").append(s).toString());
            flag = true;
        }
        return flag;
    }

    private d a;
    private Map b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
}
