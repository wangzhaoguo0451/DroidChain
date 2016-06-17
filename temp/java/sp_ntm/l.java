// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class l
    implements i
{

    public l()
    {
    }

    public final void a(d d, HashMap hashmap, WebView webview)
    {
        if(webview instanceof g)
            ((g)webview).a();
        else
            com.google.ads.util.a.b("Trying to close WebView that isn't an AdWebView");
    }
}
