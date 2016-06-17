// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.plugin;

import android.app.Activity;
import android.content.*;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.os.Handler;
import com.tencent.mm.sdk.platformtools.Log;
import java.util.HashMap;
import java.util.Map;

public class MMPluginOAuth
{
    public static interface IResult
    {

        public abstract void onResult(MMPluginOAuth mmpluginoauth);

        public abstract void onSessionTimeOut();
    }

    public static class Receiver extends BroadcastReceiver
    {

        public static void register(String s, MMPluginOAuth mmpluginoauth)
        {
            ah.put(s, mmpluginoauth);
        }

        public static void unregister(String s)
        {
            ah.remove(s);
        }

        public void onReceive(Context context, Intent intent)
        {
            String s;
            String s1;
            Log.d("MicroMsg.SDK.MMPluginOAuth", "receive oauth result");
            s = intent.getStringExtra("com.tencent.mm.sdk.plugin.Intent.REQUEST_TOKEN");
            s1 = intent.getStringExtra("com.tencent.mm.sdk.plugin.Intent.ACCESS_TOKEN");
            if(bK == null) goto _L2; else goto _L1
_L1:
            MMPluginOAuth mmpluginoauth = bK;
_L6:
            class _cls1
                implements Runnable
            {

                public void run()
                {
                    MMPluginOAuth.a(bL, bM);
                }

                final MMPluginOAuth bL;
                final String bM;
                final Receiver bN;

                _cls1(String s)
                {
                    bN = Receiver.this;
                    bL = MMPluginOAuth.this;
                    bM = s;
                    super();
                }
            }

            (new Handler()).post(mmpluginoauth. new _cls1(s1));
_L4:
            return;
_L2:
            mmpluginoauth = (MMPluginOAuth)ah.get(s);
            if(mmpluginoauth != null)
                break; /* Loop/switch isn't completed */
            Log.e("MicroMsg.SDK.MMPluginOAuth", (new StringBuilder("oauth unregistered, request token = ")).append(s).toString());
            if(true) goto _L4; else goto _L3
_L3:
            unregister(MMPluginOAuth.a(mmpluginoauth));
            if(true) goto _L6; else goto _L5
_L5:
        }

        private static final Map ah = new HashMap();
        private final MMPluginOAuth bK;


        public Receiver()
        {
            this(null);
        }

        public Receiver(MMPluginOAuth mmpluginoauth)
        {
            bK = mmpluginoauth;
        }
    }


    public MMPluginOAuth(Context context, IResult iresult)
    {
        q = context;
        bG = iresult;
    }

    static String a(MMPluginOAuth mmpluginoauth)
    {
        return mmpluginoauth.bI;
    }

    static void a(MMPluginOAuth mmpluginoauth, String s)
    {
        Receiver.unregister(mmpluginoauth.bI);
        mmpluginoauth.bH = s;
        Log.i("MicroMsg.SDK.MMPluginOAuth", (new StringBuilder("access token: ")).append(s).toString());
        if(mmpluginoauth.bG != null)
            mmpluginoauth.bG.onResult(mmpluginoauth);
    }

    static IResult b(MMPluginOAuth mmpluginoauth)
    {
        return mmpluginoauth.bG;
    }

    public String getAccessToken()
    {
        return bH;
    }

    public String getRequestToken()
    {
        return bI;
    }

    public void start()
    {
        start(null);
    }

    public boolean start(Handler handler1)
    {
        if(handler1 == null)
            handler1 = new Handler();
        handler = handler1;
        ContentResolver contentresolver = q.getContentResolver();
        android.net.Uri uri = MMPluginProviderConstants.OAuth.CONTENT_URI;
        String as[] = new String[2];
        as[0] = q.getPackageName();
        as[1] = "request_token";
        Cursor cursor = contentresolver.query(uri, null, null, as, null);
        if(cursor != null)
        {
            if(cursor.moveToFirst() && cursor.getColumnCount() >= 2)
            {
                bI = cursor.getString(0);
                bH = cursor.getString(1);
            }
            cursor.close();
        }
        Log.i("MicroMsg.SDK.MMPluginOAuth", (new StringBuilder("request token = ")).append(bI).toString());
        if(bI != null) goto _L2; else goto _L1
_L1:
        boolean flag1;
        Log.e("MicroMsg.SDK.MMPluginOAuth", "request token failed");
        flag1 = false;
_L8:
        return flag1;
_L2:
        if(bH == null) goto _L4; else goto _L3
_L3:
        handler.post(new _cls1());
        flag1 = true;
          goto _L5
_L4:
        Intent intent;
        Log.d("MicroMsg.SDK.MMPluginOAuth", "begin to show user oauth page");
        intent = new Intent();
        intent.setClassName("com.tencent.mm", "com.tencent.mm.plugin.PluginOAuthUI");
        intent.putExtra("com.tencent.mm.sdk.plugin.Intent.REQUEST_TOKEN", bI);
        intent.putExtra("com.tencent.mm.sdk.plugin.Intent.PACKAGE", q.getPackageName());
        if(q.getPackageManager().resolveActivity(intent, 0x10000) != null) goto _L7; else goto _L6
_L6:
        boolean flag;
        Log.e("MicroMsg.SDK.MMPluginOAuth", "show oauth page failed, activity not found");
        flag = false;
_L9:
        if(flag)
        {
            Receiver.register(bI, this);
            flag1 = true;
        } else
        {
            flag1 = false;
        }
_L5:
        if(true) goto _L8; else goto _L7
_L7:
        if(!(q instanceof Activity))
            intent.setFlags(0x10000000);
        q.startActivity(intent);
        flag = true;
          goto _L9
    }

    private final IResult bG;
    private String bH;
    private String bI;
    private Handler handler;
    private final Context q;

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            if(MMPluginOAuth.b(bJ) != null)
                MMPluginOAuth.b(bJ).onResult(bJ);
        }

        final MMPluginOAuth bJ;

        _cls1()
        {
            bJ = MMPluginOAuth.this;
            super();
        }
    }

}
