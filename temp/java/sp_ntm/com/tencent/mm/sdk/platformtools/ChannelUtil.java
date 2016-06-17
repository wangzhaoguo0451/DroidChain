// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.net.Uri;
import android.util.Log;
import java.util.Map;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            MMApplicationContext, Log, Util, KVConfig

public final class ChannelUtil
{

    private ChannelUtil()
    {
    }

    public static String formatVersion(Context context, int i)
    {
        int j = 0xff & i >> 8;
        String s;
        int k;
        if(j == 0)
            s = (new StringBuilder()).append(0xf & i >> 24).append(".").append(0xff & i >> 16).toString();
        else
            s = (new StringBuilder()).append(0xf & i >> 24).append(".").append(0xff & i >> 16).append(".").append(j).toString();
        Log.d("MicroMsg.SDK.ChannelUtil", (new StringBuilder("minminor ")).append(j).toString());
        k = 0xfffffff & i;
        if(context != null)
            try
            {
                PackageInfo packageinfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 128);
                if(packageinfo != null)
                {
                    k = packageinfo.versionCode;
                    s = packageinfo.versionName;
                }
            }
            catch(Exception exception)
            {
                exception.printStackTrace();
            }
        if(fullVersionInfo)
        {
            s = (new StringBuilder()).append(s).append(" r").append(k).append("(build.").append(buildRev).append(")").toString();
            Log.d("MicroMsg.SDK.ChannelUtil", (new StringBuilder("full version: ")).append(s).toString());
        }
        return s;
    }

    public static void loadProfile(Context context)
    {
        Map map = KVConfig.parseIni(Util.convertStreamToString(context.getAssets().open("profile.ini")));
        String s = Util.nullAsNil((String)map.get("PROFILE_DEVICE_TYPE"));
        profileDeviceType = s;
        if(s.length() <= 0)
            profileDeviceType = (new StringBuilder()).append(android.os.Build.VERSION.SDK_INT).toString();
        updateMode = Integer.parseInt((String)map.get("UPDATE_MODE"));
        buildRev = Integer.parseInt((String)map.get("BUILD_REVISION"));
        shouldShowGprsAlert = Boolean.parseBoolean((String)map.get("GPRS_ALERT"));
        Log.w("MicroMsg.SDK.ChannelUtil", (new StringBuilder("profileDeviceType=")).append(profileDeviceType).toString());
        Log.w("MicroMsg.SDK.ChannelUtil", (new StringBuilder("updateMode=")).append(updateMode).toString());
        Log.w("MicroMsg.SDK.ChannelUtil", (new StringBuilder("shouldShowGprsAlert=")).append(shouldShowGprsAlert).toString());
        String s1 = (String)map.get("MARKET_URL");
        if(s1 != null && s1.trim().length() != 0 && Uri.parse(s1) != null)
            marketURL = s1;
        Log.w("MicroMsg.SDK.ChannelUtil", (new StringBuilder("marketURL=")).append(marketURL).toString());
_L1:
        return;
        Exception exception;
        exception;
        Log.e("MicroMsg.SDK.ChannelUtil", "setup profile from profile.ini failed");
        exception.printStackTrace();
          goto _L1
    }

    public static void setupChannelId(Context context)
    {
        channelId = Integer.parseInt((String)KVConfig.parseIni(Util.convertStreamToString(context.getAssets().open("channel.ini"))).get("CHANNEL"));
_L1:
        return;
        Exception exception;
        exception;
        Log.e("MicroMsg.SDK.ChannelUtil", "setup channel id from channel.ini failed");
        exception.printStackTrace();
          goto _L1
    }

    public static final int FLAG_NULL = 0;
    public static final int FLAG_UPDATE_EXTERNAL = 1;
    public static final int FLAG_UPDATE_NOTIP = 2;
    public static int buildRev = 0;
    public static int channelId = 0;
    public static boolean fullVersionInfo = false;
    public static String marketURL = (new StringBuilder("market://details?id=")).append(MMApplicationContext.getPackageName()).toString();
    public static String profileDeviceType;
    public static boolean shouldShowGprsAlert = false;
    public static int updateMode = 0;

    static 
    {
        profileDeviceType = (new StringBuilder()).append(android.os.Build.VERSION.SDK_INT).toString();
    }
}
