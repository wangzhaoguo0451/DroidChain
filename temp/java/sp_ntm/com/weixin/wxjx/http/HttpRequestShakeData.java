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
import com.weixin.wxjx.adapter.DataAdapterJingXuan;
import com.weixin.wxjx.application.WxApplication;
import com.weixin.wxjx.bean.WxVersionCode;
import com.weixin.wxjx.util.AndroidUtil;
import com.weixin.wxjx.util.ProtocolInfo;
import java.util.List;

// Referenced classes of package com.weixin.wxjx.http:
//            HttpClientUtil

public class HttpRequestShakeData
{
    public static interface OnLoadShakeDataListener
    {

        public abstract void onLoadShakeDataSuccess(boolean flag, int i, int j);
    }

    class RequestShakeDataTask extends AsyncTask
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

                    final RequestShakeDataTask this$1;

                
                {
                    this$1 = RequestShakeDataTask.this;
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
            if(list.size() <= 0) goto _L4; else goto _L3
_L3:
            ((DataAdapterJingXuan)mBaseAdapter).setListDatas(list);
            if(loadShakeDataListener != null)
                loadShakeDataListener.onLoadShakeDataSuccess(true, 0, requestCode);
            mBaseAdapter.notifyDataSetChanged();
_L6:
            super.onPostExecute(list);
            return;
_L4:
            if(loadShakeDataListener != null)
                loadShakeDataListener.onLoadShakeDataSuccess(true, 3, requestCode);
            continue; /* Loop/switch isn't completed */
_L2:
            if(loadShakeDataListener != null)
                loadShakeDataListener.onLoadShakeDataSuccess(false, 1, requestCode);
            if(true) goto _L6; else goto _L5
_L5:
        }

        final HttpRequestShakeData this$0;

        RequestShakeDataTask()
        {
            this$0 = HttpRequestShakeData.this;
            super();
        }
    }


    public HttpRequestShakeData(Context context, BaseAdapter baseadapter)
    {
        mContext = context;
        mBaseAdapter = baseadapter;
    }

    public void getShakeData()
    {
        TelephonyManager telephonymanager = (TelephonyManager)mContext.getSystemService("phone");
        WxVersionCode wxversioncode = new WxVersionCode();
        String s;
        HttpClientUtil httpclientutil;
        RequestShakeDataTask requestshakedatatask;
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
        wxversioncode.setVersionCode(AndroidUtil.getVersionCode(mContext));
        s = (new Gson()).toJson(wxversioncode);
        if(requestCode == 1000)
            httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xad, s);
        else
            httpclientutil = new HttpClientUtil("http://42.121.127.83:9892/ApptreeManager2/WeixinServlet", ProtocolInfo.PROTOCOL_0xad, s);
        if(!AndroidUtil.isNetworkConnected(mContext)) goto _L2; else goto _L1
_L1:
        requestshakedatatask = new RequestShakeDataTask();
        ahttpclientutil = new HttpClientUtil[1];
        ahttpclientutil[0] = httpclientutil;
        requestshakedatatask.execute(ahttpclientutil);
_L4:
        return;
_L2:
        if(loadShakeDataListener != null)
            loadShakeDataListener.onLoadShakeDataSuccess(false, 2, requestCode);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void setLoadShakeDataListener(OnLoadShakeDataListener onloadshakedatalistener)
    {
        loadShakeDataListener = onloadshakedatalistener;
    }

    public void setRequestCode(int i)
    {
        requestCode = i;
    }

    private OnLoadShakeDataListener loadShakeDataListener;
    private BaseAdapter mBaseAdapter;
    private Context mContext;
    private int requestCode;



}
