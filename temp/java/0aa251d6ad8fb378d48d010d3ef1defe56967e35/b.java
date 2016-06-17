// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.content.Context;
import android.os.AsyncTask;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.io.*;
import java.net.*;
import java.util.StringTokenizer;

public final class b extends AsyncTask
{

    b(c c1, d d1, Context context)
    {
        a = c1;
        b = d1;
        c = context;
    }

    private transient Void a(String as[])
    {
        String s = as[0];
_L5:
        HttpURLConnection httpurlconnection;
        int i;
        httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
        AdUtil.a(httpurlconnection, c);
        httpurlconnection.setInstanceFollowRedirects(false);
        httpurlconnection.connect();
        i = httpurlconnection.getResponseCode();
        if(300 > i || i >= 400)
            break; /* Loop/switch isn't completed */
        s = httpurlconnection.getHeaderField("Location");
        if(s != null) goto _L2; else goto _L1
_L1:
        com.google.ads.util.a.c((new StringBuilder()).append("Could not get redirect location from a ").append(i).append(" redirect.").toString());
        a.a(com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR);
          goto _L3
_L2:
        a(httpurlconnection);
        if(true) goto _L5; else goto _L4
        MalformedURLException malformedurlexception;
        malformedurlexception;
        com.google.ads.util.a.a("Received malformed ad url from javascript.", malformedurlexception);
        a.a(com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR);
          goto _L3
_L4:
        if(i != 200) goto _L7; else goto _L6
_L6:
        BufferedReader bufferedreader;
        StringBuilder stringbuilder;
        a(httpurlconnection);
        bufferedreader = new BufferedReader(new InputStreamReader(httpurlconnection.getInputStream()), 4096);
        stringbuilder = new StringBuilder();
_L10:
        String s1 = bufferedreader.readLine();
        if(s1 != null)
        {
            stringbuilder.append(s1);
            stringbuilder.append("\n");
            continue; /* Loop/switch isn't completed */
        }
          goto _L8
        IOException ioexception;
        ioexception;
        com.google.ads.util.a.c("IOException connecting to ad url.", ioexception);
        a.a(com.google.ads.AdRequest.ErrorCode.NETWORK_ERROR);
          goto _L3
_L8:
        String s2 = stringbuilder.toString();
        com.google.ads.util.a.a((new StringBuilder()).append("Response content is: ").append(s2).toString());
        if(s2 == null || s2.trim().length() <= 0)
        {
            com.google.ads.util.a.a((new StringBuilder()).append("Response message is null or zero length: ").append(s2).toString());
            a.a(com.google.ads.AdRequest.ErrorCode.NO_FILL);
        } else
        {
            a.a(s2, s);
        }
          goto _L3
_L7:
        if(i == 400)
        {
            com.google.ads.util.a.c("Bad request");
            a.a(com.google.ads.AdRequest.ErrorCode.INVALID_REQUEST);
        } else
        {
            com.google.ads.util.a.c((new StringBuilder()).append("Invalid response code: ").append(i).toString());
            a.a(com.google.ads.AdRequest.ErrorCode.INTERNAL_ERROR);
        }
_L3:
        return null;
        if(true) goto _L10; else goto _L9
_L9:
    }

    private void a(HttpURLConnection httpurlconnection)
    {
        String s3;
        String s = httpurlconnection.getHeaderField("X-Afma-Tracking-Urls");
        if(s != null)
        {
            String s4;
            for(StringTokenizer stringtokenizer = new StringTokenizer(s); stringtokenizer.hasMoreTokens(); b.a(s4))
                s4 = stringtokenizer.nextToken();

        }
        b(httpurlconnection);
        String s1 = httpurlconnection.getHeaderField("X-Afma-Refresh-Rate");
        String s2;
        if(s1 != null)
            try
            {
                float f1 = Float.parseFloat(s1);
                b.a(f1);
                if(!b.p())
                    b.d();
            }
            catch(NumberFormatException numberformatexception1)
            {
                com.google.ads.util.a.c((new StringBuilder()).append("Could not get refresh value: ").append(s1).toString(), numberformatexception1);
            }
        s2 = httpurlconnection.getHeaderField("X-Afma-Interstitial-Timeout");
        if(s2 != null)
            try
            {
                float f = Float.parseFloat(s2);
                b.a((long)(f * 1000F));
            }
            catch(NumberFormatException numberformatexception)
            {
                com.google.ads.util.a.c((new StringBuilder()).append("Could not get timeout value: ").append(s2).toString(), numberformatexception);
            }
        s3 = httpurlconnection.getHeaderField("X-Afma-Orientation");
        if(s3 == null) goto _L2; else goto _L1
_L1:
        if(!s3.equals("portrait")) goto _L4; else goto _L3
_L3:
        b.a(1);
_L2:
        return;
_L4:
        if(s3.equals("landscape"))
            b.a(0);
        if(true) goto _L2; else goto _L5
_L5:
    }

    private void b(HttpURLConnection httpurlconnection)
    {
        String s = httpurlconnection.getHeaderField("X-Afma-Click-Tracking-Urls");
        if(s != null)
        {
            String s1;
            for(StringTokenizer stringtokenizer = new StringTokenizer(s); stringtokenizer.hasMoreTokens(); b.b(s1))
                s1 = stringtokenizer.nextToken();

        }
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    private c a;
    private d b;
    private Context c;
}
