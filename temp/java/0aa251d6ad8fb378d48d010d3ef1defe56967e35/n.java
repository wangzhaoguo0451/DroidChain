// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.content.Context;
import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class n
    implements i
{

    public n()
    {
    }

    public final void a(d d, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("u");
        if(s == null)
            com.google.ads.util.a.e("Could not get URL from click gmsg.");
        else
            (new Thread(new w(s, webview.getContext().getApplicationContext()))).start();
    }
}
