// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.ads;

import android.content.*;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.io.UnsupportedEncodingException;
import java.net.*;
import java.util.Iterator;
import java.util.Set;

public class InstallReceiver extends BroadcastReceiver
{

    public InstallReceiver()
    {
    }

    private static String a(String s, String s1, String s2)
    {
        int i = 0;
        if(s == null) goto _L2; else goto _L1
_L1:
        String as[];
        int j;
        StringBuilder stringbuilder;
        as = s.split("&");
        j = as.length;
        stringbuilder = null;
        String s3;
        UnsupportedEncodingException unsupportedencodingexception;
        String s4;
        String s5;
        String s6;
        for(; i < j; i++)
        {
            String s7 = as[i];
            if(s7.startsWith("admob_"))
            {
                String as1[] = s7.substring("admob_".length()).split("=");
                String s8 = URLEncoder.encode(as1[0], "UTF-8");
                String s9 = URLEncoder.encode(as1[1], "UTF-8");
                if(stringbuilder == null)
                    stringbuilder = new StringBuilder(128);
                else
                    stringbuilder.append("&");
                stringbuilder.append(s8).append("=").append(s9);
            }
            break MISSING_BLOCK_LABEL_246;
        }

          goto _L3
        unsupportedencodingexception;
        com.google.ads.util.a.a("Could not create install URL.  Install not tracked.", unsupportedencodingexception);
_L2:
        s3 = null;
_L5:
        return s3;
_L3:
        if(stringbuilder == null) goto _L2; else goto _L4
_L4:
        s4 = URLEncoder.encode(s1, "UTF-8");
        stringbuilder.append("&").append("isu").append("=").append(s4);
        s5 = URLEncoder.encode(s2, "UTF-8");
        stringbuilder.append("&").append("app_id").append("=").append(s5);
        s6 = (new StringBuilder()).append("http://a.admob.com/f0?").append(stringbuilder.toString()).toString();
        s3 = s6;
          goto _L5
    }

    public void forwardIntent(Context context, Intent intent)
    {
        PackageManager packagemanager = context.getPackageManager();
        if(packagemanager == null) goto _L2; else goto _L1
_L1:
        android.content.pm.ActivityInfo activityinfo = packagemanager.getReceiverInfo(new ComponentName(context, com/google/ads/InstallReceiver), 128);
        if(activityinfo == null || ((PackageItemInfo) (activityinfo)).metaData == null) goto _L2; else goto _L3
_L3:
        Set set = ((PackageItemInfo) (activityinfo)).metaData.keySet();
        if(set == null) goto _L2; else goto _L4
_L4:
        Iterator iterator = set.iterator();
_L7:
        if(!iterator.hasNext()) goto _L2; else goto _L5
_L5:
        String s = (String)iterator.next();
        String s2 = ((PackageItemInfo) (activityinfo)).metaData.getString(s);
        if(s2.equals("com.google.android.apps.analytics.AnalyticsReceiver")) goto _L7; else goto _L6
_L6:
        ((BroadcastReceiver)Class.forName(s2).newInstance()).onReceive(context, intent);
        com.google.ads.util.a.a((new StringBuilder()).append("Successfully forwarded install notification to ").append(s2).toString());
          goto _L7
        Exception exception4;
        exception4;
        String s1;
        Exception exception3;
        s1 = s2;
        exception3 = exception4;
_L10:
        com.google.ads.util.a.c((new StringBuilder()).append("Could not forward Market's INSTALL_REFERRER intent to ").append(s1).toString(), exception3);
          goto _L7
        Exception exception;
        exception;
        com.google.ads.util.a.c("Unhandled exception while forwarding install intents. Possibly lost some install information.", exception);
_L9:
        return;
_L2:
        ((BroadcastReceiver)Class.forName("com.google.android.apps.analytics.AnalyticsReceiver").newInstance()).onReceive(context, intent);
        com.google.ads.util.a.a("Successfully forwarded install notification to com.google.android.apps.analytics.AnalyticsReceiver");
        continue; /* Loop/switch isn't completed */
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        com.google.ads.util.a.d("Google Analytics not installed.");
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        com.google.ads.util.a.c("Exception from the Google Analytics install receiver.", exception1);
        if(true) goto _L9; else goto _L8
_L8:
        Exception exception2;
        exception2;
        s1 = null;
        exception3 = exception2;
          goto _L10
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getStringExtra("referrer");
        String s1 = AdUtil.a(context);
        String s2 = a(s, s1, context.getPackageName());
        if(s2 != null)
            com.google.ads.util.a.d((new StringBuilder()).append("Processing install from an AdMob ad (").append(s2).append(").").toString());
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(s2)).openConnection();
        AdUtil.a(httpurlconnection, context.getApplicationContext());
        httpurlconnection.setRequestProperty("X-Admob-Isu", s1);
        httpurlconnection.getResponseCode();
        forwardIntent(context, intent);
_L1:
        return;
        Exception exception;
        exception;
        com.google.ads.util.a.a("Unhandled exception processing Market install.", exception);
          goto _L1
    }
}
