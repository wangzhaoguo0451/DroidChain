// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class o
    implements i
{

    public o()
    {
    }

    public final void a(d d1, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("type");
        String s1 = (String)hashmap.get("errors");
        com.google.ads.util.a.e((new StringBuilder()).append("Invalid ").append(s).append(" request error: ").append(s1).toString());
        c c1 = d1.g();
        if(c1 != null)
            c1.a(com.google.ads.AdRequest.ErrorCode.INVALID_REQUEST);
    }
}
