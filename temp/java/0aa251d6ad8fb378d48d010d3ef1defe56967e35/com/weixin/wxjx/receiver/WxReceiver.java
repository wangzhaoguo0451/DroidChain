// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.receiver;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.*;
import android.os.SystemClock;
import com.weixin.wxjx.service.PushService;
import com.weixin.wxjx.util.AndroidUtil;

public class WxReceiver extends BroadcastReceiver
{

    public WxReceiver()
    {
    }

    private void startPushService()
    {
        Intent intent = new Intent(mContext, com/weixin/wxjx/service/PushService);
        mContext.startService(intent);
        PendingIntent pendingintent = PendingIntent.getService(mContext, 0, new Intent(mContext, com/weixin/wxjx/service/PushService), 0);
        long l = SystemClock.elapsedRealtime();
        ((AlarmManager)mContext.getSystemService("alarm")).setRepeating(2, l, 10000L, pendingintent);
    }

    public void onReceive(Context context, Intent intent)
    {
        String s;
        mContext = context;
        s = intent.getAction();
        if(!s.equals("android.intent.action.BOOT_COMPLETED")) goto _L2; else goto _L1
_L1:
        startPushService();
_L4:
        return;
_L2:
        if(s.equals("android.net.conn.CONNECTIVITY_CHANGE") && !AndroidUtil.isPushServiceStarted(mContext))
            startPushService();
        if(true) goto _L4; else goto _L3
_L3:
    }

    private Context mContext;
}
