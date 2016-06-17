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
import com.weixin.wxjx.adapter.DataAdapterSort;
import com.weixin.wxjx.application.WxApplication;
import com.weixin.wxjx.bean.WxSubmitListInfo;
import com.weixin.wxjx.util.AndroidUtil;
import com.weixin.wxjx.util.ProtocolInfo;
import com.weixin.wxjx.view.DragListView;
import java.util.List;

// Referenced classes of package com.weixin.wxjx.http:
//            HttpClientUtil

public class HttpRequestSortData
{
    class RequestSortTask extends AsyncTask
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

                    final RequestSortTask this$1;

                
                {
                    this$1 = RequestSortTask.this;
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
                if(isFirstRequest)
                {
                    if(list.size() < 10)
                        dataLoaded = true;
                    ((DataAdapterSort)mBaseAdapter).setListDatas(list);
                    if(sortDataLoadListener != null)
                        sortDataLoadListener.onLoadSortDataSuccess(flag, true, 0, requestCode, isFirstRequest, isPullDown);
                } else
                if(isPullDown)
                {
                    if(list.size() < 10)
                        dataLoaded = true;
                    ((DataAdapterSort)mBaseAdapter).removeAllData();
                    ((DataAdapterSort)mBaseAdapter).setListDatas(list);
                    listView.onRefreshComplete();
                } else
                {
                    if(list.size() < 10)
                        dataLoaded = true;
                    ((DataAdapterSort)mBaseAdapter).appendData(list);
                    if(dataLoaded)
                        listView.onLoadMoreComplete(true);
                    else
                        listView.onLoadMoreComplete(false);
                }
                mBaseAdapter.notifyDataSetChanged();
            } else
            {
                dataLoaded = true;
                if(isFirstRequest && sortDataLoadListener != null)
                    sortDataLoadListener.onLoadSortDataSuccess(flag, true, 0, requestCode, isFirstRequest, isPullDown);
                if(isPullDown)
                    listView.onRefreshComplete();
                else
                    listView.onLoadMoreComplete(true);
            }
_L4:
            super.onPostExecute(list);
            return;
_L2:
            if(isFirstRequest)
            {
                if(sortDataLoadListener != null)
                    sortDataLoadListener.onLoadSortDataSuccess(flag, false, 1, requestCode, isFirstRequest, isPullDown);
            } else
            if(isPullDown)
            {
                if(requestCode == 1000)
                {
                    if(sortDataLoadListener != null)
                        sortDataLoadListener.onLoadSortDataSuccess(flag, false, 1, requestCode, isFirstRequest, isPullDown);
                } else
                {
                    listView.onRefreshComplete();
                }
            } else
            if(requestCode == 1000)
            {
                if(sortDataLoadListener != null)
                    sortDataLoadListener.onLoadSortDataSuccess(flag, false, 1, requestCode, isFirstRequest, isPullDown);
            } else
            if(dataLoaded)
                listView.onLoadMoreComplete(true);
            else
                listView.onLoadMoreComplete(false);
            if(true) goto _L4; else goto _L3
_L3:
        }

        final HttpRequestSortData this$0;

        RequestSortTask()
        {
            this$0 = HttpRequestSortData.this;
            super();
        }
    }

    public static interface SortDataLoadListener
    {

        public abstract void onLoadSortDataSuccess(int i, boolean flag1, int j, int k, boolean flag2, boolean flag3);
    }


    public HttpRequestSortData(Context context, BaseAdapter baseadapter)
    {
        isFirstRequest = false;
        isPullDown = false;
        dataLoaded = false;
        mContext = context;
        mBaseAdapter = baseadapter;
    }

    public void getDefaultDataOfSort()
    {
        TelephonyManager telephonymanager = (TelephonyManager)mContext.getSystemService("phone");
        WxSubmitListInfo wxsubmitlistinfo = new WxSubmitListInfo();
        String s;
        HttpClientUtil httpclientutil;
        RequestSortTask requestsorttask;
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
        wxsubmitlistinfo.setFlag(flag);
        if(isPullDown)
            wxsubmitlistinfo.setStartNum(0);
        else
            wxsubmitlistinfo.setStartNum(mBaseAdapter.getCount());
        wxsubmitlistinfo.setMaxNum(10);
        s = (new Gson()).toJson(wxsubmitlistinfo);
        if(requestCode == 1000)
            httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xa2, s);
        else
            httpclientutil = new HttpClientUtil("http://42.121.127.83:9892/ApptreeManager2/WeixinServlet", ProtocolInfo.PROTOCOL_0xa2, s);
        if(!AndroidUtil.isNetworkConnected(mContext)) goto _L2; else goto _L1
_L1:
        requestsorttask = new RequestSortTask();
        ahttpclientutil = new HttpClientUtil[1];
        ahttpclientutil[0] = httpclientutil;
        requestsorttask.execute(ahttpclientutil);
_L4:
        return;
_L2:
        if(isFirstRequest && sortDataLoadListener != null)
            sortDataLoadListener.onLoadSortDataSuccess(flag, false, 2, requestCode, isFirstRequest, isPullDown);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void setFirstRequest(boolean flag1)
    {
        isFirstRequest = flag1;
    }

    public void setFlag(int i)
    {
        flag = i;
    }

    public void setListView(DragListView draglistview)
    {
        listView = draglistview;
    }

    public void setPullDown(boolean flag1)
    {
        isPullDown = flag1;
    }

    public void setRequestCode(int i)
    {
        requestCode = i;
    }

    public void setSortDataLoadListener(SortDataLoadListener sortdataloadlistener)
    {
        sortDataLoadListener = sortdataloadlistener;
    }

    private boolean dataLoaded;
    private int flag;
    private boolean isFirstRequest;
    private boolean isPullDown;
    private DragListView listView;
    private BaseAdapter mBaseAdapter;
    private Context mContext;
    private int requestCode;
    private SortDataLoadListener sortDataLoadListener;









}
