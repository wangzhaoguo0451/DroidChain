// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.service;

import android.app.*;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.*;
import android.telephony.TelephonyManager;
import com.google.gson.Gson;
import com.weixin.wxjx.activity.AccountAttentionActivity;
import com.weixin.wxjx.activity.MainActivity;
import com.weixin.wxjx.application.WxApplication;
import com.weixin.wxjx.bean.WxReturnHeart;
import com.weixin.wxjx.bean.WxVersionCode;
import com.weixin.wxjx.http.AsyncImageLoader;
import com.weixin.wxjx.http.HttpClientUtil;
import com.weixin.wxjx.util.AndroidUtil;
import com.weixin.wxjx.util.ProtocolInfo;

// Referenced classes of package com.weixin.wxjx.service:
//            UpdateStartingImgService

public class PushService extends Service
{
    class HeartbeatTestTask extends AsyncTask
    {

        protected transient WxReturnHeart doInBackground(HttpClientUtil ahttpclientutil[])
        {
            String s = ahttpclientutil[0].postClient();
            WxReturnHeart wxreturnheart = null;
            if(!s.equals("") && !s.contains("Error"))
                wxreturnheart = (WxReturnHeart)(new Gson()).fromJson(s, com/weixin/wxjx/bean/WxReturnHeart);
            return wxreturnheart;
        }

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((HttpClientUtil[])aobj);
        }

        protected void onPostExecute(WxReturnHeart wxreturnheart)
        {
            if(wxreturnheart != null)
            {
                int i = wxreturnheart.getOpenMode();
                if(wxreturnheart.getJudgePic() == 1)
                {
                    String s1 = wxreturnheart.getStandbyPic();
                    AndroidUtil.writeImgUrlAndState(mContext, s1, false);
                    startUpdateImgService(s1);
                } else
                if(!AndroidUtil.getStartingImgState(mContext))
                {
                    String s = AndroidUtil.getStartingImgUrl(mContext);
                    startUpdateImgService(s);
                }
                if(i == 1)
                    sendNotificationOfHome(wxreturnheart);
                else
                if(i == 2)
                    sendNotificationOfAccount(wxreturnheart);
                else
                if(i == 3)
                    sendNotificationOfAttention(wxreturnheart);
            }
            mHandler.postDelayed(mHeartbeatRunnable, 0x2dc6c0L);
            super.onPostExecute(wxreturnheart);
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((WxReturnHeart)obj);
        }

        final PushService this$0;

        HeartbeatTestTask()
        {
            this$0 = PushService.this;
            super();
        }
    }


    public PushService()
    {
        mHandler = new Handler();
        mHeartbeatRunnable = new Runnable() {

            public void run()
            {
                if(AndroidUtil.isNetworkConnected(mContext) && AndroidUtil.getPushState(mContext))
                    sendHeartbeatData();
                else
                    mHandler.postDelayed(mHeartbeatRunnable, 0x2dc6c0L);
            }

            final PushService this$0;

            
            {
                this$0 = PushService.this;
                super();
            }
        };
    }

    private void sendHeartbeatData()
    {
        TelephonyManager telephonymanager = (TelephonyManager)getSystemService("phone");
        WxVersionCode wxversioncode = new WxVersionCode();
        String s;
        HttpClientUtil httpclientutil;
        HeartbeatTestTask heartbeattesttask;
        HttpClientUtil ahttpclientutil[];
        if(telephonymanager.getSubscriberId() == null)
        {
            WxApplication wxapplication = (WxApplication)mContext.getApplicationContext();
            String s1 = wxapplication.getUserId();
            if(s1.equals(""))
            {
                s1 = AndroidUtil.getRandomUserId(15);
                wxapplication.setUserId(s1);
            }
            wxversioncode.setUserId(s1);
        } else
        {
            wxversioncode.setUserId(telephonymanager.getSubscriberId());
        }
        wxversioncode.setVersionCode(AndroidUtil.getVersionCode(this));
        s = (new Gson()).toJson(wxversioncode);
        httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xab, s);
        heartbeattesttask = new HeartbeatTestTask();
        ahttpclientutil = new HttpClientUtil[1];
        ahttpclientutil[0] = httpclientutil;
        heartbeattesttask.execute(ahttpclientutil);
    }

    private void sendNotificationOfAccount(WxReturnHeart wxreturnheart)
    {
        Notification notification = new Notification();
        notification.icon = 0x7f020037;
        notification.tickerText = wxreturnheart.getTitleText();
        notification.when = System.currentTimeMillis();
        notification.defaults = 1 | notification.defaults;
        notification.defaults = 2 | notification.defaults;
        notification.defaults = 4 | notification.defaults;
        notification.flags = 2 | notification.flags;
        notification.flags = 0x10 | notification.flags;
        String s = wxreturnheart.getNoticeTitle();
        String s1 = wxreturnheart.getNoticeContent();
        Intent intent = new Intent(this, com/weixin/wxjx/activity/AccountAttentionActivity);
        intent.putExtra("accountId", wxreturnheart.getAccountId());
        notification.setLatestEventInfo(this, s, s1, PendingIntent.getActivity(this, 0, intent, 0));
        mNotificationManager.notify(2, notification);
    }

    private void sendNotificationOfAttention(WxReturnHeart wxreturnheart)
    {
        Notification notification = new Notification();
        notification.icon = 0x7f020037;
        notification.tickerText = wxreturnheart.getTitleText();
        notification.when = System.currentTimeMillis();
        notification.defaults = 1 | notification.defaults;
        notification.defaults = 2 | notification.defaults;
        notification.defaults = 4 | notification.defaults;
        notification.flags = 2 | notification.flags;
        notification.flags = 0x10 | notification.flags;
        String s = wxreturnheart.getNoticeTitle();
        String s1 = wxreturnheart.getNoticeContent();
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(wxreturnheart.getQrCode()));
        intent.setClassName("com.tencent.mm", "com.tencent.mm.ui.qrcode.GetQRCodeInfoUI");
        notification.setLatestEventInfo(this, s, s1, PendingIntent.getActivity(this, 0, intent, 0));
        mNotificationManager.notify(3, notification);
    }

    private void sendNotificationOfHome(WxReturnHeart wxreturnheart)
    {
        Notification notification = new Notification();
        notification.icon = 0x7f020037;
        notification.tickerText = wxreturnheart.getTitleText();
        notification.when = System.currentTimeMillis();
        notification.defaults = 1 | notification.defaults;
        notification.defaults = 2 | notification.defaults;
        notification.defaults = 4 | notification.defaults;
        notification.flags = 2 | notification.flags;
        notification.flags = 0x10 | notification.flags;
        notification.setLatestEventInfo(this, wxreturnheart.getNoticeTitle(), wxreturnheart.getNoticeContent(), PendingIntent.getActivity(this, 0, new Intent(this, com/weixin/wxjx/activity/MainActivity), 0));
        mNotificationManager.notify(1, notification);
    }

    private void startUpdateImgService(String s)
    {
        Intent intent = new Intent(mContext, com/weixin/wxjx/service/UpdateStartingImgService);
        intent.putExtra("standbyPic", s);
        mContext.startService(intent);
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        mContext = getApplicationContext();
        mNotificationManager = (NotificationManager)getSystemService("notification");
        mHandler.postDelayed(mHeartbeatRunnable, 10000L);
    }

    public void onDestroy()
    {
        AsyncImageLoader.getAsyncImageLoader(this).stop();
        super.onDestroy();
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        return super.onStartCommand(intent, i, j);
    }

    private static final long HEART_BEAT_INTERVAL = 0x2dc6c0L;
    private static final String TAG = "PushService";
    private Context mContext;
    private Handler mHandler;
    private Runnable mHeartbeatRunnable;
    private NotificationManager mNotificationManager;








}
