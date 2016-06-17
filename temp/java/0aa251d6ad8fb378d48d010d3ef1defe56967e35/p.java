// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class p
    implements i
{

    public p()
    {
    }

    public final void a(d d1, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("url");
        String s1 = (String)hashmap.get("afma_notify_dt");
        com.google.ads.util.a.c((new StringBuilder()).append("Received ad url: <\"url\": \"").append(s).append("\", \"afmaNotifyDt\": \"").append(s1).append("\">").toString());
        c c1 = d1.g();
        if(c1 != null)
            c1.a(s);
    }
}
