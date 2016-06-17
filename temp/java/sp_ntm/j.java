// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class j
    implements i
{

    public j()
    {
    }

    public final void a(d d, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("urls");
        if(s == null)
        {
            com.google.ads.util.a.e("Could not get the urls param from canOpenURLs gmsg.");
        } else
        {
            String as[] = s.split(",");
            HashMap hashmap1 = new HashMap();
            PackageManager packagemanager = webview.getContext().getPackageManager();
            int k = as.length;
            int l = 0;
            while(l < k) 
            {
                String s1 = as[l];
                String as1[] = s1.split(";", 2);
                String s2 = as1[0];
                String s3;
                boolean flag;
                if(as1.length >= 2)
                    s3 = as1[1];
                else
                    s3 = "android.intent.action.VIEW";
                if(packagemanager.resolveActivity(new Intent(s3, Uri.parse(s2)), 0x10000) != null)
                    flag = true;
                else
                    flag = false;
                hashmap1.put(s1, Boolean.valueOf(flag));
                l++;
            }
            a.a(webview, hashmap1);
        }
    }
}
