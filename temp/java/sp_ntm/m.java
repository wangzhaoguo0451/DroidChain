// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.webkit.WebView;
import com.google.ads.AdActivity;
import com.google.ads.util.a;
import java.util.HashMap;

public final class m
    implements i
{

    public m()
    {
    }

    public final void a(d d, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("js");
        if(s == null)
            com.google.ads.util.a.b("Could not get the JS to evaluate.");
        if(webview instanceof g)
        {
            AdActivity adactivity = ((g)webview).b();
            if(adactivity == null)
            {
                com.google.ads.util.a.b("Could not get the AdActivity from the AdWebView.");
            } else
            {
                g g1 = adactivity.getOpeningAdWebView();
                if(g1 == null)
                    com.google.ads.util.a.b("Could not get the opening WebView.");
                else
                    a.a(g1, s);
            }
        } else
        {
            com.google.ads.util.a.b("Trying to evaluate JS in a WebView that isn't an AdWebView");
        }
    }
}
