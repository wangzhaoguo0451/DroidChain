// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.os.Bundle;

public final class WXAppLaunchData
{
    public static class Builder
    {

        public static WXAppLaunchData fromBundle(Bundle bundle)
        {
            WXAppLaunchData wxapplaunchdata = new WXAppLaunchData();
            wxapplaunchdata.launchType = bundle.getInt("_wxapplaunchdata_launchType");
            wxapplaunchdata.message = bundle.getString("_wxapplaunchdata_message");
            return wxapplaunchdata;
        }

        public static Bundle toBundle(WXAppLaunchData wxapplaunchdata)
        {
            Bundle bundle = new Bundle();
            bundle.putInt("_wxapplaunchdata_launchType", wxapplaunchdata.launchType);
            bundle.putString("_wxapplaunchdata_message", wxapplaunchdata.message);
            return bundle;
        }

        public Builder()
        {
        }
    }


    public WXAppLaunchData()
    {
    }

    public static final String ACTION_HANDLE_WXAPPLAUNCH = ".ACTION_HANDLE_WXAPPLAUNCH";
    public static final String ACTION_HANDLE_WXAPP_RESULT = ".ACTION_HANDLE_WXAPP_RESULT";
    public static final String ACTION_HANDLE_WXAPP_SHOW = ".ACTION_HANDLE_WXAPP_SHOW";
    public int launchType;
    public String message;
}
