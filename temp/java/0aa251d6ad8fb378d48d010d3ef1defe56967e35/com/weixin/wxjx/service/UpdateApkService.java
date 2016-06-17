// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.service;

import android.app.*;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.widget.RemoteViews;
import com.weixin.wxjx.util.GlobalInfo;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

public class UpdateApkService extends IntentService
{

    public UpdateApkService()
    {
        super("UpdateApkService");
    }

    private File getApkSavaFile(String s, String s1)
    {
        File file = new File(s);
        if(!file.exists())
            file.mkdirs();
        File file1 = new File((new StringBuilder(String.valueOf(s))).append(s1).toString());
        if(!file1.exists())
        {
            try
            {
                file1.createNewFile();
            }
            catch(IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        } else
        {
            file1.delete();
            try
            {
                file1.createNewFile();
            }
            catch(IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        return file1;
    }

    public boolean downloadFile(String s, File file)
    {
        int i = 0;
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
        if(httpurlconnection != null) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
          goto _L3
_L2:
        if(httpurlconnection.getResponseCode() != 200) goto _L5; else goto _L4
_L4:
        int j;
        InputStream inputstream;
        FileOutputStream fileoutputstream;
        byte abyte0[];
        int k;
        j = httpurlconnection.getContentLength();
        inputstream = httpurlconnection.getInputStream();
        fileoutputstream = new FileOutputStream(file);
        abyte0 = new byte[1024];
        k = -1;
_L14:
        int l = inputstream.read(abyte0);
        if(l != -1) goto _L7; else goto _L6
_L6:
        boolean flag;
        fileoutputstream.flush();
        fileoutputstream.close();
        inputstream.close();
        flag = true;
          goto _L8
_L7:
        int i1;
        i += l;
        i1 = (int)((100D * (double)i) / (double)j);
        fileoutputstream.write(abyte0, 0, l);
        this;
        JVM INSTR monitorenter ;
        if(i != j) goto _L10; else goto _L9
_L9:
        mNotifManager.cancel(1002);
_L11:
        this;
        JVM INSTR monitorexit ;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        try
        {
            throw exception1;
        }
        catch(Exception exception)
        {
            flag = false;
        }
        break; /* Loop/switch isn't completed */
_L10:
        if(k == i1)
            continue; /* Loop/switch isn't completed */
        mContentView.setProgressBar(0x7f080091, 100, i1, false);
        mDownNotification.contentView = mContentView;
        mDownNotification.contentIntent = mDownPendingIntent;
        mNotifManager.notify(1002, mDownNotification);
        k = i1;
        if(true) goto _L11; else goto _L8
_L5:
        flag = false;
          goto _L8
_L3:
        return flag1;
_L8:
        flag1 = flag;
        if(true) goto _L3; else goto _L12
_L12:
        if(true) goto _L14; else goto _L13
_L13:
    }

    protected void onHandleIntent(Intent intent)
    {
        mNotifManager = (NotificationManager)getSystemService("notification");
        mContentView = new RemoteViews(getPackageName(), 0x7f030016);
        mDownPendingIntent = PendingIntent.getActivity(this, 0, new Intent(), 0);
        mDownNotification = new Notification(0x1080081, "", System.currentTimeMillis());
        mDownNotification.flags = 2;
        mDownNotification.flags = 16;
        String s = intent.getStringExtra("download_apk_url");
        String s1 = s.substring(1 + s.lastIndexOf("/"));
        mContentView.setTextViewText(0x7f080090, s1);
        File file;
        if(Environment.getExternalStorageState().equals("mounted"))
        {
            file = getApkSavaFile(GlobalInfo.APK_DIRS, s1);
        } else
        {
            file = getApkSavaFile((new StringBuilder(String.valueOf(getFilesDir().getAbsolutePath()))).append("/").toString(), s1);
            try
            {
                Runtime.getRuntime().exec((new StringBuilder("chmod 666 ")).append(file).toString()).waitFor();
            }
            catch(InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
            catch(IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        if(downloadFile(s, file))
        {
            Notification notification = new Notification(0x1080082, "", System.currentTimeMillis());
            notification.flags = 16;
            Intent intent1 = new Intent("android.intent.action.VIEW");
            intent1.setFlags(0x10000000);
            intent1.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
            notification.setLatestEventInfo(this, "\u4E0B\u8F7D\u5B8C\u6210\uFF0C\u70B9\u51FB\u5B89\u88C5!", null, PendingIntent.getActivity(this, 0, intent1, 0));
            mNotifManager.notify(1001, notification);
            startActivity(intent1);
            mNotifManager.cancel(1001);
        } else
        {
            Notification notification1 = new Notification(0x1080082, "", System.currentTimeMillis());
            notification1.flags = 2;
            notification1.flags = 16;
            notification1.setLatestEventInfo(this, "\u4E0B\u8F7D\u5931\u8D25", null, PendingIntent.getActivity(this, 0, new Intent(), 0));
            mNotifManager.notify(1001, notification1);
        }
    }

    private static final int ID_DOWNLOADING = 1002;
    private static final int ID_DOWNLOAD_COMPLETE = 1001;
    public static final int MSG_DOWNING = 1;
    public static final int MSG_FAILURE = 2;
    public static final int MSG_FINISH = 1;
    public static final int MSG_UNDOWN = 0;
    private static final String TAG = "UpdateApkService";
    private RemoteViews mContentView;
    private Notification mDownNotification;
    private PendingIntent mDownPendingIntent;
    private NotificationManager mNotifManager;
}
