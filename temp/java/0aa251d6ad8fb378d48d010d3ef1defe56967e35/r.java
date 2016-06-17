// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.webkit.WebView;
import com.google.ads.AdActivity;
import com.google.ads.util.a;
import java.util.HashMap;

public final class r
    implements i
{

    public r()
    {
    }

    public final void a(d d, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("a");
        if(s == null)
            com.google.ads.util.a.a("Could not get the action parameter for open GMSG.");
        else
        if(s.equals("webapp"))
            AdActivity.launchAdActivity(d, new e("webapp", hashmap));
        else
            AdActivity.launchAdActivity(d, new e("intent", hashmap));
    }
}
