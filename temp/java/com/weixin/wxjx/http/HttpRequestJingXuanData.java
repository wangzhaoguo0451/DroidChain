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
import com.weixin.wxjx.bean.*;
import com.weixin.wxjx.util.AndroidUtil;
import com.weixin.wxjx.util.ProtocolInfo;
import com.weixin.wxjx.view.DragListView;
import java.util.List;

// Referenced classes of package com.weixin.wxjx.http:
//            HttpClientUtil

public class HttpRequestJingXuanData
{
    public static interface InitAdvertbar
    {

        public abstract void onAdvertbarInitialize(List list);

        public abstract void onCheckVersionUpdate(WxUpgradeData wxupgradedata);

        public abstract void onLoadJingXuanDataSuccess(boolean flag, int i, int j, boolean flag1, boolean flag2);
    }

    class RequestJingXuanRefreshTask extends AsyncTask
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

                    final RequestJingXuanRefreshTask this$1;

                
                {
                    this$1 = RequestJingXuanRefreshTask.this;
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
                if(isPullDown)
                {
                    if(list.size() < 10)
                        dataLoaded = true;
                    ((DataAdapterJingXuan)mBaseAdapter).removeAllData();
                    ((DataAdapterJingXuan)mBaseAdapter).setListDatas(list);
                    listView.onRefreshComplete();
                } else
                {
                    if(list.size() < 10)
                        dataLoaded = true;
                    ((DataAdapterJingXuan)mBaseAdapter).appendData(list);
                    if(dataLoaded)
                        listView.onLoadMoreComplete(true);
                    else
                        listView.onLoadMoreComplete(false);
                }
                mBaseAdapter.notifyDataSetChanged();
            } else
            {
                dataLoaded = true;
                if(isPullDown)
                    listView.onRefreshComplete();
                else
                    listView.onLoadMoreComplete(true);
            }
_L4:
            super.onPostExecute(list);
            return;
_L2:
            if(isPullDown)
            {
                if(requestCode == 1000)
                {
                    if(initAdvertbar != null)
                        initAdvertbar.onLoadJingXuanDataSuccess(false, 1, requestCode, isFirstRequest, isPullDown);
                } else
                {
                    listView.onRefreshComplete();
                }
            } else
            if(requestCode == 1000)
            {
                if(initAdvertbar != null)
                    initAdvertbar.onLoadJingXuanDataSuccess(false, 1, requestCode, isFirstRequest, isPullDown);
            } else
            if(dataLoaded)
                listView.onLoadMoreComplete(true);
            else
                listView.onLoadMoreComplete(false);
            if(true) goto _L4; else goto _L3
_L3:
        }

        final HttpRequestJingXuanData this$0;

        RequestJingXuanRefreshTask()
        {
            this$0 = HttpRequestJingXuanData.this;
            super();
        }
    }

    class RequestJingXuanTask extends AsyncTask
    {

        protected transient WxReturnStartClass doInBackground(HttpClientUtil ahttpclientutil[])
        {
            String s = ahttpclientutil[0].postClient();
            WxReturnStartClass wxreturnstartclass = null;
            if(!s.equals("") && !s.contains("Error"))
                wxreturnstartclass = (WxReturnStartClass)(new Gson()).fromJson(s, com/weixin/wxjx/bean/WxReturnStartClass);
            return wxreturnstartclass;
        }

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((HttpClientUtil[])aobj);
        }

        protected void onPostExecute(WxReturnStartClass wxreturnstartclass)
        {
            if(wxreturnstartclass == null) goto _L2; else goto _L1
_L1:
            List list = wxreturnstartclass.getReturnListDatas();
            ((DataAdapterJingXuan)mBaseAdapter).setListDatas(list);
            mBaseAdapter.notifyDataSetChanged();
            List list1 = wxreturnstartclass.getAdvertisingDatas();
            WxUpgradeData wxupgradedata = wxreturnstartclass.getUpgradeData();
            if(initAdvertbar != null)
            {
                initAdvertbar.onAdvertbarInitialize(list1);
                initAdvertbar.onLoadJingXuanDataSuccess(true, 0, requestCode, isFirstRequest, isPullDown);
                initAdvertbar.onCheckVersionUpdate(wxupgradedata);
            }
_L4:
            super.onPostExecute(wxreturnstartclass);
            return;
_L2:
            if(initAdvertbar != null)
                initAdvertbar.onLoadJingXuanDataSuccess(false, 1, requestCode, isFirstRequest, isPullDown);
            if(true) goto _L4; else goto _L3
_L3:
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((WxReturnStartClass)obj);
        }

        final HttpRequestJingXuanData this$0;

        RequestJingXuanTask()
        {
            this$0 = HttpRequestJingXuanData.this;
            super();
        }
    }


    public HttpRequestJingXuanData(Context context, BaseAdapter baseadapter)
    {
        dataLoaded = false;
        mContext = context;
        mBaseAdapter = baseadapter;
    }

    public void getDefaultDataOfJingXuan()
    {
        TelephonyManager telephonymanager = (TelephonyManager)mContext.getSystemService("phone");
        WxSubmitStartInfo wxsubmitstartinfo = new WxSubmitStartInfo();
        String s;
        HttpClientUtil httpclientutil;
        RequestJingXuanTask requestjingxuantask;
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
            wxsubmitstartinfo.setUserId(s1);
            wxsubmitstartinfo.setTel("0");
            wxsubmitstartinfo.setSimSerialNumber("0");
        } else
        {
            wxsubmitstartinfo.setUserId(telephonymanager.getSubscriberId());
            wxsubmitstartinfo.setTel(telephonymanager.getLine1Number());
            wxsubmitstartinfo.setSimSerialNumber(telephonymanager.getSimSerialNumber());
        }
        wxsubmitstartinfo.setCompanyId("1");
        wxsubmitstartinfo.setVersionCode(AndroidUtil.getVersionCode(mContext));
        wxsubmitstartinfo.setLatitude(0.0D);
        wxsubmitstartinfo.setLongitude(0.0D);
        s = (new Gson()).toJson(wxsubmitstartinfo);
        if(requestCode == 1000)
            httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xa0, s);
        else
            httpclientutil = new HttpClientUtil("http://42.121.127.83:9892/ApptreeManager2/WeixinServlet", ProtocolInfo.PROTOCOL_0xa0, s);
        if(!AndroidUtil.isNetworkConnected(mContext)) goto _L2; else goto _L1
_L1:
        requestjingxuantask = new RequestJingXuanTask();
        ahttpclientutil = new HttpClientUtil[1];
        ahttpclientutil[0] = httpclientutil;
        requestjingxuantask.execute(ahttpclientutil);
_L4:
        return;
_L2:
        if(initAdvertbar != null)
            initAdvertbar.onLoadJingXuanDataSuccess(false, 2, requestCode, isFirstRequest, isPullDown);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void getNextDataOfJingXuan(boolean flag)
    {
        isPullDown = flag;
        TelephonyManager telephonymanager = (TelephonyManager)mContext.getSystemService("phone");
        WxSubmitListInfo wxsubmitlistinfo = new WxSubmitListInfo();
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
            wxsubmitlistinfo.setUserId(s1);
        } else
        {
            wxsubmitlistinfo.setUserId(telephonymanager.getSubscriberId());
        }
        if(isPullDown)
            wxsubmitlistinfo.setStartNum(0);
        else
            wxsubmitlistinfo.setStartNum(mBaseAdapter.getCount());
        wxsubmitlistinfo.setMaxNum(10);
        s = (new Gson()).toJson(wxsubmitlistinfo);
        if(requestCode == 1000)
            httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xa1, s);
        else
            httpclientutil = new HttpClientUtil("http://42.121.127.83:9892/ApptreeManager2/WeixinServlet", ProtocolInfo.PROTOCOL_0xa1, s);
        if(AndroidUtil.isNetworkConnected(mContext))
        {
            RequestJingXuanRefreshTask requestjingxuanrefreshtask = new RequestJingXuanRefreshTask();
            HttpClientUtil ahttpclientutil[] = new HttpClientUtil[1];
            ahttpclientutil[0] = httpclientutil;
            requestjingxuanrefreshtask.execute(ahttpclientutil);
        }
    }

    public void setFirstRequest(boolean flag)
    {
        isFirstRequest = flag;
    }

    public void setInitAdvertbar(InitAdvertbar initadvertbar)
    {
        initAdvertbar = initadvertbar;
    }

    public void setListView(DragListView draglistview)
    {
        listView = draglistview;
    }

    public void setRequestCode(int i)
    {
        requestCode = i;
    }

    private static final String TAG = "HttpRequestJingXuanData";
    private boolean dataLoaded;
    private InitAdvertbar initAdvertbar;
    private boolean isFirstRequest;
    private boolean isPullDown;
    private DragListView listView;
    private BaseAdapter mBaseAdapter;
    private Context mContext;
    private int requestCode;








}
