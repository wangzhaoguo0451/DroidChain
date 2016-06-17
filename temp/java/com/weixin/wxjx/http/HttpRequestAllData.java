// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.http;

import android.content.Context;
import android.os.AsyncTask;
import android.telephony.TelephonyManager;
import android.widget.BaseAdapter;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.weixin.wxjx.adapter.DataAdapterAll;
import com.weixin.wxjx.application.WxApplication;
import com.weixin.wxjx.bean.WxSubmitListInfo;
import com.weixin.wxjx.util.AndroidUtil;
import com.weixin.wxjx.util.ProtocolInfo;
import java.util.List;

// Referenced classes of package com.weixin.wxjx.http:
//            HttpClientUtil

public class HttpRequestAllData
{
    public static interface AllDataLoadListener
    {

        public abstract void onLoadAllDataSuccess(boolean flag, int i, int j);
    }

    class RequestAllTask extends AsyncTask
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

                    final RequestAllTask this$1;

                
                {
                    this$1 = RequestAllTask.this;
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
            if(list.size() > 0)
            {
                ((DataAdapterAll)mBaseAdapter).setListDatas(list);
                if(allDataLoadListener != null)
                    allDataLoadListener.onLoadAllDataSuccess(true, 0, requestCode);
                mBaseAdapter.notifyDataSetChanged();
            }
_L4:
            super.onPostExecute(list);
            return;
_L2:
            if(allDataLoadListener != null)
                allDataLoadListener.onLoadAllDataSuccess(false, 1, requestCode);
            if(true) goto _L4; else goto _L3
_L3:
        }

        final HttpRequestAllData this$0;

        RequestAllTask()
        {
            this$0 = HttpRequestAllData.this;
            super();
        }
    }


    public HttpRequestAllData(Context context, BaseAdapter baseadapter)
    {
        mContext = context;
        mBaseAdapter = baseadapter;
    }

    public void getDefaultDataOfAll()
    {
        TelephonyManager telephonymanager = (TelephonyManager)mContext.getSystemService("phone");
        WxSubmitListInfo wxsubmitlistinfo = new WxSubmitListInfo();
        String s;
        HttpClientUtil httpclientutil;
        RequestAllTask requestalltask;
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
            wxsubmitlistinfo.setUserId(s1);
        } else
        {
            wxsubmitlistinfo.setUserId(telephonymanager.getSubscriberId());
        }
        wxsubmitlistinfo.setStartNum(mBaseAdapter.getCount());
        wxsubmitlistinfo.setMaxNum(10);
        s = (new Gson()).toJson(wxsubmitlistinfo);
        if(requestCode == 1000)
            httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xa3, s);
        else
            httpclientutil = new HttpClientUtil("http://42.121.127.83:9892/ApptreeManager2/WeixinServlet", ProtocolInfo.PROTOCOL_0xa3, s);
        if(!AndroidUtil.isNetworkConnected(mContext)) goto _L2; else goto _L1
_L1:
        requestalltask = new RequestAllTask();
        ahttpclientutil = new HttpClientUtil[1];
        ahttpclientutil[0] = httpclientutil;
        requestalltask.execute(ahttpclientutil);
_L4:
        return;
_L2:
        if(allDataLoadListener != null)
            allDataLoadListener.onLoadAllDataSuccess(false, 2, requestCode);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void setAllDataLoadListener(AllDataLoadListener alldataloadlistener)
    {
        allDataLoadListener = alldataloadlistener;
    }

    public void setRequestCode(int i)
    {
        requestCode = i;
    }

    private AllDataLoadListener allDataLoadListener;
    private BaseAdapter mBaseAdapter;
    private Context mContext;
    private int requestCode;



}
