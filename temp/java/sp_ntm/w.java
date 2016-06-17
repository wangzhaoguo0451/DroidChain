// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.content.Context;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public final class w
    implements Runnable
{

    public w(String s, Context context)
    {
        b = s;
        a = context;
    }

    public final void run()
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(b)).openConnection();
        AdUtil.a(httpurlconnection, a);
        httpurlconnection.setInstanceFollowRedirects(true);
        httpurlconnection.connect();
        if(httpurlconnection.getResponseCode() != 200)
            com.google.ads.util.a.e((new StringBuilder()).append("Did not receive HTTP_OK from URL: ").append(b).toString());
_L1:
        return;
        IOException ioexception;
        ioexception;
        com.google.ads.util.a.c((new StringBuilder()).append("Unable to ping the URL: ").append(b).toString(), ioexception);
          goto _L1
    }

    private Context a;
    private String b;
}
