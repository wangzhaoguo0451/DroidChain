// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.http;

import android.content.Context;
import android.os.AsyncTask;
import android.telephony.TelephonyManager;
import com.google.gson.Gson;
import com.weixin.wxjx.application.WxApplication;
import com.weixin.wxjx.bean.WxVersionCode;
import com.weixin.wxjx.util.AndroidUtil;
import com.weixin.wxjx.util.ProtocolInfo;

// Referenced classes of package com.weixin.wxjx.http:
//            HttpClientUtil

public class HttpPostLocation
{
    public static interface LocationPostListener
    {

        public abstract void onLocationPostSuccess(boolean flag, int i, int j);
    }

    class RequestPostLocationTask extends AsyncTask
    {

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((HttpClientUtil[])aobj);
        }

        protected transient String doInBackground(HttpClientUtil ahttpclientutil[])
        {
            return ahttpclientutil[0].postClient();
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((String)obj);
        }

        protected void onPostExecute(String s)
        {
            if(s.equals("") || s.contains("Error")) goto _L2; else goto _L1
_L1:
            if(Integer.valueOf(s).intValue() != 1) goto _L4; else goto _L3
_L3:
            if(locationPostListener != null)
                locationPostListener.onLocationPostSuccess(true, 0, requestCode);
_L6:
            super.onPostExecute(s);
            return;
_L4:
            if(locationPostListener != null)
                locationPostListener.onLocationPostSuccess(true, 3, requestCode);
            continue; /* Loop/switch isn't completed */
_L2:
            if(locationPostListener != null)
                locationPostListener.onLocationPostSuccess(false, 1, requestCode);
            if(true) goto _L6; else goto _L5
_L5:
        }

        final HttpPostLocation this$0;

        RequestPostLocationTask()
        {
            this$0 = HttpPostLocation.this;
            super();
        }
    }


    public HttpPostLocation(Context context)
    {
        mContext = context;
    }

    public void postUserLocation()
    {
        TelephonyManager telephonymanager = (TelephonyManager)mContext.getSystemService("phone");
        WxVersionCode wxversioncode = new WxVersionCode();
        String s;
        HttpClientUtil httpclientutil;
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
        wxversioncode.setVersionCode(AndroidUtil.getVersionCode(mContext));
        wxversioncode.setLatitude(mLatitude);
        wxversioncode.setLongitude(mLontitude);
        s = (new Gson()).toJson(wxversioncode);
        if(requestCode == 1000)
            httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xaf, s);
        else
            httpclientutil = new HttpClientUtil("http://42.121.127.83:9892/ApptreeManager2/WeixinServlet", ProtocolInfo.PROTOCOL_0xaf, s);
        if(AndroidUtil.isNetworkConnected(mContext))
        {
            RequestPostLocationTask requestpostlocationtask = new RequestPostLocationTask();
            HttpClientUtil ahttpclientutil[] = new HttpClientUtil[1];
            ahttpclientutil[0] = httpclientutil;
            requestpostlocationtask.execute(ahttpclientutil);
        }
    }

    public void setLocationPostListener(LocationPostListener locationpostlistener)
    {
        locationPostListener = locationpostlistener;
    }

    public void setRequestCode(int i)
    {
        requestCode = i;
    }

    public void setmLatitude(double d)
    {
        mLatitude = d;
    }

    public void setmLontitude(double d)
    {
        mLontitude = d;
    }

    private LocationPostListener locationPostListener;
    private Context mContext;
    private double mLatitude;
    private double mLontitude;
    private int requestCode;


}
