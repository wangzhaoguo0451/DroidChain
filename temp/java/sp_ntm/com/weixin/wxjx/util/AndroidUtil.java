// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.util;

import android.app.ActivityManager;
import android.app.Dialog;
import android.content.*;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.*;
import android.util.DisplayMetrics;
import java.util.List;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AndroidUtil
{

    public AndroidUtil()
    {
    }

    public static boolean checkApkExist(Context context, String s)
    {
        boolean flag = false;
        if(s != null && !"".equals(s)) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        context.getPackageManager().getApplicationInfo(s, 8192);
        flag = true;
        continue; /* Loop/switch isn't completed */
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static int dip2px(Context context, float f)
    {
        return (int)(0.5F + f * context.getResources().getDisplayMetrics().density);
    }

    public static boolean getPushState(Context context)
    {
        return context.getSharedPreferences("weixinjingxuan_pref", 0).getBoolean("switch_state", true);
    }

    public static String getRandomUserId(int i)
    {
        Random random = new Random();
        StringBuilder stringbuilder = new StringBuilder(i);
        int j = 0;
        do
        {
            if(j >= i)
                return stringbuilder.toString();
            stringbuilder.append((char)(48 + random.nextInt(10)));
            j++;
        } while(true);
    }

    public static int getScreenWidth(Context context)
    {
        new DisplayMetrics();
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static boolean getStartingImgState(Context context)
    {
        return context.getSharedPreferences("weixinjingxuan_pref", 0).getBoolean("img_state", false);
    }

    public static String getStartingImgUrl(Context context)
    {
        return context.getSharedPreferences("weixinjingxuan_pref", 0).getString("img_url", "");
    }

    public static String getVersionCode(Context context)
    {
        PackageManager packagemanager;
        PackageInfo packageinfo;
        packagemanager = context.getPackageManager();
        packageinfo = null;
        PackageInfo packageinfo1 = packagemanager.getPackageInfo(context.getPackageName(), 0);
        packageinfo = packageinfo1;
_L2:
        return packageinfo.versionName;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        namenotfoundexception.printStackTrace();
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static boolean isNetworkConnected(Context context)
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        if(connectivitymanager == null) goto _L2; else goto _L1
_L1:
        NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
        if(networkinfo == null || !networkinfo.isConnected()) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L5:
        return flag;
_L2:
        flag = false;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public static boolean isPushServiceStarted(Context context)
    {
        List list;
        int i;
        list = ((ActivityManager)context.getSystemService("activity")).getRunningServices(30);
        i = 0;
_L6:
        if(i < list.size()) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        if(!"com.weixin.wxjx.service.PushService".equals(((android.app.ActivityManager.RunningServiceInfo)list.get(i)).service.getClassName()))
            break; /* Loop/switch isn't completed */
        flag = true;
        if(true) goto _L4; else goto _L3
_L3:
        i++;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static boolean isValidateQQId(String s)
    {
        return Pattern.compile("^[0-9]+$").matcher(s).matches();
    }

    public static boolean isValidateWxId(String s)
    {
        boolean flag;
        if(Pattern.compile("[\u4E00-\u9FA5]").matcher(s).find())
            flag = false;
        else
            flag = true;
        return flag;
    }

    public static void shareAccount(Context context, String s, String s1)
    {
        String s2 = context.getResources().getString(0x7f090000);
        String s3 = (new StringBuilder("\u5FAE\u4FE1\u540D\uFF1A")).append(s1).append("\n").append("\u5FAE\u4FE1\u53F7\uFF1A").append(s).append("\n").append("---\u6765\u81EA  ").append(s2).toString();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", "share");
        intent.putExtra("android.intent.extra.TEXT", s3);
        intent.setFlags(0x10000000);
        context.startActivity(Intent.createChooser(intent, context.getResources().getString(0x7f090048)));
    }

    public static void showInstallWxDialog(final Context mContext)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(mContext);
        builder.setTitle(0x7f09000d);
        builder.setMessage(0x7f09000e);
        builder.setPositiveButton(0x7f09000f, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("http://weixin.qq.com/d"));
                mContext.startActivity(intent);
            }

            private final Context val$mContext;

            
            {
                mContext = context;
                super();
            }
        });
        builder.setNegativeButton(0x7f090010, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

        });
        builder.create().show();
    }

    public static void startAppByPackageName(Context context, String s)
    {
        new Intent();
        context.startActivity(context.getPackageManager().getLaunchIntentForPackage(s));
    }

    public static void startAttention(Context context, String s)
    {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(s));
        intent.setClassName("com.tencent.mm", "com.tencent.mm.ui.qrcode.GetQRCodeInfoUI");
        context.startActivity(intent);
    }

    public static void writeImgState(Context context, boolean flag)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("weixinjingxuan_pref", 0).edit();
        editor.putBoolean("img_state", flag);
        editor.commit();
    }

    public static void writeImgUrlAndState(Context context, String s, boolean flag)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("weixinjingxuan_pref", 0).edit();
        editor.putString("img_url", s);
        editor.putBoolean("img_state", flag);
        editor.commit();
    }
}
