// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.http;

import android.content.Context;
import android.os.AsyncTask;
import android.telephony.TelephonyManager;
import com.google.gson.Gson;
import com.weixin.wxjx.application.WxApplication;
import com.weixin.wxjx.bean.WxSubmitRecordInfo;
import com.weixin.wxjx.util.AndroidUtil;
import com.weixin.wxjx.util.ProtocolInfo;

// Referenced classes of package com.weixin.wxjx.http:
//            HttpClientUtil

public class HttpRequestAddData
{
    public static interface OnAddDataListener
    {

        public abstract void onAddDataSuccess(boolean flag, int i);
    }

    class RequestAddAccountTask extends AsyncTask
    {

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((HttpClientUtil[])aobj);
        }

        protected transient String doInBackground(HttpClientUtil ahttpclientutil[])
        {
            String s = ahttpclientutil[0].postClient();
            if(!s.equals(""))
                s.contains("Error");
            return s;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((String)obj);
        }

        protected void onPostExecute(String s)
        {
            if(!s.equals(String.valueOf(1))) goto _L2; else goto _L1
_L1:
            if(addDataListener != null)
                addDataListener.onAddDataSuccess(true, 1);
_L4:
            super.onPostExecute(s);
            return;
_L2:
            if(s.equals(String.valueOf(2)))
            {
                if(addDataListener != null)
                    addDataListener.onAddDataSuccess(true, 2);
            } else
            if(s.equals(String.valueOf(3)))
            {
                if(addDataListener != null)
                    addDataListener.onAddDataSuccess(true, 3);
            } else
            if(addDataListener != null)
                addDataListener.onAddDataSuccess(false, 4);
            if(true) goto _L4; else goto _L3
_L3:
        }

        final HttpRequestAddData this$0;

        RequestAddAccountTask()
        {
            this$0 = HttpRequestAddData.this;
            super();
        }
    }


    public HttpRequestAddData(Context context)
    {
        mContext = context;
    }

    public void sendForApplyData()
    {
        TelephonyManager telephonymanager = (TelephonyManager)mContext.getSystemService("phone");
        WxSubmitRecordInfo wxsubmitrecordinfo = new WxSubmitRecordInfo();
        String s;
        HttpClientUtil httpclientutil;
        RequestAddAccountTask requestaddaccounttask;
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
            wxsubmitrecordinfo.setUserId(s1);
        } else
        {
            wxsubmitrecordinfo.setUserId(telephonymanager.getSubscriberId());
        }
        wxsubmitrecordinfo.setQq(qqID);
        wxsubmitrecordinfo.setWx(wxID);
        wxsubmitrecordinfo.setAccountType(wxIdType);
        s = (new Gson()).toJson(wxsubmitrecordinfo);
        httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xa8, s);
        if(!AndroidUtil.isNetworkConnected(mContext)) goto _L2; else goto _L1
_L1:
        requestaddaccounttask = new RequestAddAccountTask();
        ahttpclientutil = new HttpClientUtil[1];
        ahttpclientutil[0] = httpclientutil;
        requestaddaccounttask.execute(ahttpclientutil);
_L4:
        return;
_L2:
        if(addDataListener != null)
            addDataListener.onAddDataSuccess(false, 2);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void setAddDataListener(OnAddDataListener onadddatalistener)
    {
        addDataListener = onadddatalistener;
    }

    public void setQqID(String s)
    {
        qqID = s;
    }

    public void setWxID(String s)
    {
        wxID = s;
    }

    public void setWxIdType(int i)
    {
        wxIdType = i;
    }

    private static final String TAG = "HttpRequestAddData";
    private OnAddDataListener addDataListener;
    private Context mContext;
    private String qqID;
    private String wxID;
    private int wxIdType;

}
