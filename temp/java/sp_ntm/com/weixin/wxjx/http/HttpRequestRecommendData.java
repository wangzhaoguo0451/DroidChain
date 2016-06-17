// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.http;

import android.content.Context;
import android.os.AsyncTask;
import android.telephony.TelephonyManager;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.weixin.wxjx.application.WxApplication;
import com.weixin.wxjx.bean.WxVersionCode;
import com.weixin.wxjx.util.AndroidUtil;
import com.weixin.wxjx.util.ProtocolInfo;
import java.util.List;

// Referenced classes of package com.weixin.wxjx.http:
//            HttpClientUtil

public class HttpRequestRecommendData
{
    public static interface RecommendDataLoadListener
    {

        public abstract void onLoadRecommendDataSuccess(boolean flag, int i, List list, int j);
    }

    class RequestRecommendDataTask extends AsyncTask
    {

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((HttpClientUtil[])aobj);
        }

        protected transient List doInBackground(HttpClientUtil ahttpclientutil[])
        {
            String s = ahttpclientutil[0].postClient();
            List list = null;
            if(!s.equals("") && !s.contains("Error"))
                list = (List)(new Gson()).fromJson(s, (new TypeToken() {

                    final RequestRecommendDataTask this$1;

                
                {
                    this$1 = RequestRecommendDataTask.this;
                    super();
                }
                }).getType());
            return list;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((List)obj);
        }

        protected void onPostExecute(List list)
        {
            if(list == null) goto _L2; else goto _L1
_L1:
            if(list.size() > 0 && recommendDataLoadListener != null)
                recommendDataLoadListener.onLoadRecommendDataSuccess(true, 0, list, requestCode);
_L4:
            super.onPostExecute(list);
            return;
_L2:
            if(recommendDataLoadListener != null)
                recommendDataLoadListener.onLoadRecommendDataSuccess(false, 1, list, requestCode);
            if(true) goto _L4; else goto _L3
_L3:
        }

        final HttpRequestRecommendData this$0;

        RequestRecommendDataTask()
        {
            this$0 = HttpRequestRecommendData.this;
            super();
        }
    }


    public HttpRequestRecommendData(Context context)
    {
        mContext = context;
    }

    public void getRecommendData()
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
        s = (new Gson()).toJson(wxversioncode);
        if(requestCode == 1000)
            httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xae, s);
        else
            httpclientutil = new HttpClientUtil("http://42.121.127.83:9892/ApptreeManager2/WeixinServlet", ProtocolInfo.PROTOCOL_0xae, s);
        if(AndroidUtil.isNetworkConnected(mContext))
        {
            RequestRecommendDataTask requestrecommenddatatask = new RequestRecommendDataTask();
            HttpClientUtil ahttpclientutil[] = new HttpClientUtil[1];
            ahttpclientutil[0] = httpclientutil;
            requestrecommenddatatask.execute(ahttpclientutil);
        }
    }

    public void setRecommendDataLoadListener(RecommendDataLoadListener recommenddataloadlistener)
    {
        recommendDataLoadListener = recommenddataloadlistener;
    }

    public void setRequestCode(int i)
    {
        requestCode = i;
    }

    private Context mContext;
    private RecommendDataLoadListener recommendDataLoadListener;
    private int requestCode;


}
