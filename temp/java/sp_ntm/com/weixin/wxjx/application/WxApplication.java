// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.application;

import android.app.Application;
import android.content.SharedPreferences;

public class WxApplication extends Application
{

    public WxApplication()
    {
        userId = "";
    }

    private String getUserIdFromPref()
    {
        return getSharedPreferences("weixinjingxuan_pref", 0).getString("use_id", "");
    }

    private void writeUserIdToPref(String s)
    {
        android.content.SharedPreferences.Editor editor = getSharedPreferences("weixinjingxuan_pref", 0).edit();
        editor.putString("use_id", s);
        editor.commit();
    }

    public String getUserId()
    {
        if(userId.equals(""))
            userId = getUserIdFromPref();
        return userId;
    }

    public void setUserId(String s)
    {
        userId = s;
        writeUserIdToPref(s);
    }

    private static final String TAG = "WxApplication";
    private String userId;
}
