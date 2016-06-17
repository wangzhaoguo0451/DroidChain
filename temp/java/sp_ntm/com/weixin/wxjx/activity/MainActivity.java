// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.activity;

import android.app.*;
import android.content.*;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.AnimationDrawable;
import android.net.Uri;
import android.os.*;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.*;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.webkit.*;
import android.widget.*;
import com.baidu.location.*;
import com.google.gson.Gson;
import com.weixin.wxjx.adapter.*;
import com.weixin.wxjx.application.WxApplication;
import com.weixin.wxjx.bean.*;
import com.weixin.wxjx.http.*;
import com.weixin.wxjx.service.PushService;
import com.weixin.wxjx.service.UpdateApkService;
import com.weixin.wxjx.shake.ShakeActivity;
import com.weixin.wxjx.util.AndroidUtil;
import com.weixin.wxjx.util.ProtocolInfo;
import com.weixin.wxjx.view.*;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.weixin.wxjx.activity:
//            SearchActivity, UserSuggestionActivity

public class MainActivity extends Activity
    implements com.weixin.wxjx.http.HttpRequestJingXuanData.InitAdvertbar, com.weixin.wxjx.http.HttpRequestSortData.SortDataLoadListener, com.weixin.wxjx.http.HttpRequestAllData.AllDataLoadListener, com.weixin.wxjx.http.HttpRequestCategoryData.CategoryDataLoadListener, com.weixin.wxjx.http.HttpRequestRecommendData.RecommendDataLoadListener, com.weixin.wxjx.http.HttpRequestAddData.OnAddDataListener, com.weixin.wxjx.http.HttpPostLocation.LocationPostListener
{
    class AdvertPageChangeListener
        implements android.support.v4.view.ViewPager.OnPageChangeListener
    {

        public void onPageScrollStateChanged(int i)
        {
        }

        public void onPageScrolled(int i, float f, int j)
        {
        }

        public void onPageSelected(int i)
        {
            curAdvertPosition = i;
            setPointSelected(i);
        }

        final MainActivity this$0;

        AdvertPageChangeListener()
        {
            this$0 = MainActivity.this;
            super();
        }
    }

    private class AdvertPagerAdapter extends PagerAdapter
    {

        public void destroyItem(View view, int i, Object obj)
        {
            ((ViewPager)view).removeView((View)mAdvertListViews.get(i));
        }

        public int getCount()
        {
            return mAdvertListViews.size();
        }

        public int getItemPosition(Object obj)
        {
            return super.getItemPosition(obj);
        }

        public Object instantiateItem(View view, int i)
        {
            ((ViewPager)view).addView((View)mAdvertListViews.get(i));
            return mAdvertListViews.get(i);
        }

        public boolean isViewFromObject(View view, Object obj)
        {
            boolean flag;
            if(view == obj)
                flag = true;
            else
                flag = false;
            return flag;
        }

        public List mAdvertListViews;
        final MainActivity this$0;

        public AdvertPagerAdapter(List list)
        {
            this$0 = MainActivity.this;
            super();
            mAdvertListViews = list;
        }
    }

    public class MyLocationListener
        implements BDLocationListener
    {

        public void onReceiveLocation(BDLocation bdlocation)
        {
            if(bdlocation != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            StringBuffer stringbuffer;
            stringbuffer = new StringBuffer(256);
            stringbuffer.append("time : ");
            stringbuffer.append(bdlocation.getTime());
            stringbuffer.append("\nerror code : ");
            stringbuffer.append(bdlocation.getLocType());
            stringbuffer.append("\nlatitude : ");
            stringbuffer.append(bdlocation.getLatitude());
            stringbuffer.append("\nlontitude : ");
            stringbuffer.append(bdlocation.getLongitude());
            stringbuffer.append("\nradius : ");
            stringbuffer.append(bdlocation.getRadius());
            if(bdlocation.getLocType() != 61)
                break; /* Loop/switch isn't completed */
            stringbuffer.append("\nspeed : ");
            stringbuffer.append(bdlocation.getSpeed());
            stringbuffer.append("\nsatellite : ");
            stringbuffer.append(bdlocation.getSatelliteNumber());
_L5:
            int i = bdlocation.getLocType();
            if(i != 62 && (i < 162 || i > 167))
            {
                mLatitude = bdlocation.getLatitude();
                mLontitude = bdlocation.getLongitude();
                postCurLocationInfo(1000);
                mLocationClient.stop();
            }
            if(true) goto _L1; else goto _L3
_L3:
            if(bdlocation.getLocType() != 161) goto _L5; else goto _L4
_L4:
            stringbuffer.append("\naddr : ");
            stringbuffer.append(bdlocation.getAddrStr());
              goto _L5
        }

        public void onReceivePoi(BDLocation bdlocation)
        {
        }

        final MainActivity this$0;

        public MyLocationListener()
        {
            this$0 = MainActivity.this;
            super();
        }
    }

    class MyOnPageChangeListener
        implements android.support.v4.view.ViewPager.OnPageChangeListener
    {

        public void onPageScrollStateChanged(int i)
        {
        }

        public void onPageScrolled(int i, float f, int j)
        {
        }

        public void onPageSelected(int i)
        {
            mCurPosition = i * offset;
            if(i != 0) goto _L2; else goto _L1
_L1:
            pageLevel = 1;
            currentPage = 0;
            if(imageViews != null && imageViews.length > 0)
                mHandler.postDelayed(autoPlayImageRunnable, advertPlayInterval);
            if(!loadDataOfJingXuan)
                setDefaultPage();
            ((CustomViewPager)mPager).setChildView((ViewGroup)listViewJingXuan.getmHeadView());
_L4:
            TranslateAnimation translateanimation = new TranslateAnimation(prePos, mCurPosition, 0.0F, 0.0F);
            prePos = mCurPosition;
            translateanimation.setDuration(300L);
            translateanimation.setFillEnabled(true);
            translateanimation.setFillAfter(true);
            translateanimation.setAnimationListener(new TranslateAnimationListener());
            imgSliser.startAnimation(translateanimation);
            return;
_L2:
            if(i == 1)
            {
                pageLevel = 1;
                currentPage = 1;
                if(!isInitializedTab)
                {
                    initTabHost();
                    isInitializedTab = true;
                }
            } else
            if(i == 2)
            {
                currentPage = 2;
                if(childPageInAll == 200)
                {
                    if(!loadAllDataSuccess)
                        setDefaultPageOfAll();
                } else
                if(childPageInAll == 201)
                {
                    if(!loadCategoryDataSuccess)
                        initCategoryListView();
                } else
                if(childPageInAll == -1)
                    setDefaultPageOfAll();
            } else
            if(i == 3)
            {
                currentPage = 3;
                if(childPageInMore == 100)
                {
                    if(!loadRecommendDataSuccess)
                        setDefaultPageOfMore();
                } else
                if(childPageInMore == 101)
                    initApplyOfMore();
                else
                if(childPageInMore == 102)
                    initSettingOfMore();
                else
                if(childPageInMore == 103)
                    initApplyOfMore();
                else
                if(childPageInMore == -1)
                    setDefaultPageOfMore();
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        final MainActivity this$0;

        MyOnPageChangeListener()
        {
            this$0 = MainActivity.this;
            super();
        }
    }

    class MyPagerAdapter extends PagerAdapter
    {

        public void destroyItem(ViewGroup viewgroup, int i, Object obj)
        {
            ((ViewPager)viewgroup).removeView((View)mListViews.get(i));
        }

        public int getCount()
        {
            return mListViews.size();
        }

        public ArrayList getmListViews()
        {
            return mListViews;
        }

        public Object instantiateItem(ViewGroup viewgroup, int i)
        {
            ((ViewPager)viewgroup).addView((View)mListViews.get(i), 0);
            return mListViews.get(i);
        }

        public boolean isViewFromObject(View view, Object obj)
        {
            boolean flag;
            if(view == obj)
                flag = true;
            else
                flag = false;
            return flag;
        }

        public void setmListViews(ArrayList arraylist)
        {
            mListViews = arraylist;
        }

        public ArrayList mListViews;
        final MainActivity this$0;

        MyPagerAdapter()
        {
            this$0 = MainActivity.this;
            super();
        }
    }

    class MyViewOnClickListener
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            mPager.setCurrentItem(indexPage);
        }

        private int indexPage;
        final MainActivity this$0;

        public MyViewOnClickListener(int i)
        {
            this$0 = MainActivity.this;
            super();
            indexPage = i;
        }
    }

    class RequestUserManagerUrlTask extends AsyncTask
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
            userProgressView.setVisibility(8);
            if(!s.equals("") && !s.contains("Error"))
            {
                userNetState.setVisibility(8);
                webView.setVisibility(0);
                webView.loadUrl(s);
            } else
            {
                userNetState.setVisibility(0);
                webView.setVisibility(8);
                userNetState.setText(0x7f090028);
            }
            super.onPostExecute(s);
        }

        final MainActivity this$0;

        RequestUserManagerUrlTask()
        {
            this$0 = MainActivity.this;
            super();
        }
    }

    class TranslateAnimationListener
        implements android.view.animation.Animation.AnimationListener
    {

        public void onAnimationEnd(Animation animation1)
        {
            currentPage;
            JVM INSTR tableswitch 0 3: default 36
        //                       0 37
        //                       1 88
        //                       2 139
        //                       3 190;
               goto _L1 _L2 _L3 _L4 _L5
_L1:
            return;
_L2:
            imgJingXuan.setImageResource(0x7f020027);
            imgSort.setImageResource(0x7f02005e);
            imgAll.setImageResource(0x7f020003);
            imgMore.setImageResource(0x7f020034);
            continue; /* Loop/switch isn't completed */
_L3:
            imgSort.setImageResource(0x7f02005f);
            imgJingXuan.setImageResource(0x7f020026);
            imgAll.setImageResource(0x7f020003);
            imgMore.setImageResource(0x7f020034);
            continue; /* Loop/switch isn't completed */
_L4:
            imgAll.setImageResource(0x7f020004);
            imgSort.setImageResource(0x7f02005e);
            imgJingXuan.setImageResource(0x7f020026);
            imgMore.setImageResource(0x7f020034);
            continue; /* Loop/switch isn't completed */
_L5:
            imgMore.setImageResource(0x7f020035);
            imgSort.setImageResource(0x7f02005e);
            imgAll.setImageResource(0x7f020003);
            imgJingXuan.setImageResource(0x7f020026);
            if(true) goto _L1; else goto _L6
_L6:
        }

        public void onAnimationRepeat(Animation animation1)
        {
        }

        public void onAnimationStart(Animation animation1)
        {
        }

        final MainActivity this$0;

        TranslateAnimationListener()
        {
            this$0 = MainActivity.this;
            super();
        }
    }

    class checkVersionTask extends AsyncTask
    {

        protected transient WxUpgradeData doInBackground(HttpClientUtil ahttpclientutil[])
        {
            String s = ahttpclientutil[0].postClient();
            WxUpgradeData wxupgradedata = null;
            if(!s.equals("") && !s.contains("Error"))
                wxupgradedata = (WxUpgradeData)(new Gson()).fromJson(s, com/weixin/wxjx/bean/WxUpgradeData);
            return wxupgradedata;
        }

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((HttpClientUtil[])aobj);
        }

        protected void onPostExecute(WxUpgradeData wxupgradedata)
        {
            if(wxupgradedata == null) goto _L2; else goto _L1
_L1:
            if(wxupgradedata.getUpgrade() != 1) goto _L4; else goto _L3
_L3:
            showUpdateDialog(wxupgradedata);
_L6:
            super.onPostExecute(wxupgradedata);
            return;
_L4:
            if(wxupgradedata.getUpgrade() == 0)
                Toast.makeText(MainActivity.this, 0x7f090027, 0).show();
            continue; /* Loop/switch isn't completed */
_L2:
            Toast.makeText(MainActivity.this, 0x7f090028, 0).show();
            if(true) goto _L6; else goto _L5
_L5:
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((WxUpgradeData)obj);
        }

        final MainActivity this$0;

        checkVersionTask()
        {
            this$0 = MainActivity.this;
            super();
        }
    }


    public MainActivity()
    {
        isInitializedTab = false;
        currentPage = 0;
        mHandler = new Handler();
        pageLevel = -1;
        advertPlayInterval = 5000L;
        mLocationClient = null;
        myListener = new MyLocationListener();
        loadDataOfJingXuan = false;
        childPageInAll = -1;
        imageRecommendViews = new ImageView[4];
        textRecommendViews = new TextView[4];
        childPageInMore = -1;
        moreImageCallBack = new com.weixin.wxjx.http.AsyncImageLoader.ImageCallBack() {

            public void imageLoad(ImageView imageview, Bitmap bitmap)
            {
                if(bitmap != null)
                    imageview.setImageBitmap(bitmap);
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        };
        autoPlayImageRunnable = new Runnable() {

            public void run()
            {
                if(currentPage == 0)
                {
                    if(imageViews.length > 0)
                    {
                        int i = (1 + curAdvertPosition) % imageViews.length;
                        advertPager.setCurrentItem(i);
                    }
                    mHandler.postDelayed(autoPlayImageRunnable, advertPlayInterval);
                } else
                {
                    mHandler.removeCallbacks(autoPlayImageRunnable);
                }
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        };
    }

    private void checkVersionUpdate()
    {
        TelephonyManager telephonymanager = (TelephonyManager)getSystemService("phone");
        WxVersionCode wxversioncode = new WxVersionCode();
        String s;
        HttpClientUtil httpclientutil;
        if(telephonymanager.getSubscriberId() == null)
        {
            WxApplication wxapplication = (WxApplication)getApplicationContext();
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
        httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xaa, s);
        if(AndroidUtil.isNetworkConnected(this))
        {
            checkVersionTask checkversiontask = new checkVersionTask();
            HttpClientUtil ahttpclientutil[] = new HttpClientUtil[1];
            ahttpclientutil[0] = httpclientutil;
            checkversiontask.execute(ahttpclientutil);
        } else
        {
            Toast.makeText(this, 0x7f090029, 0).show();
        }
    }

    private void downloadNewApk(WxUpgradeData wxupgradedata)
    {
        String s = wxupgradedata.getDownloadUrl();
        Intent intent = new Intent(this, com/weixin/wxjx/service/UpdateApkService);
        intent.putExtra("download_apk_url", s);
        startService(intent);
    }

    private View getAdvImageView(int i, WxAdvertisingData wxadvertisingdata)
    {
        View view = LayoutInflater.from(this).inflate(0x7f030007, null);
        ImageView imageview = (ImageView)view.findViewById(0x7f08004e);
        final String adUrl = wxadvertisingdata.getAdUrl();
        Bitmap bitmap = AsyncImageLoader.getAsyncImageLoader(this).loadDrawable(imageview, wxadvertisingdata.getAdImageView(), new com.weixin.wxjx.http.AsyncImageLoader.ImageCallBack() {

            public void imageLoad(ImageView imageview1, Bitmap bitmap1)
            {
                if(bitmap1 != null)
                    imageview1.setImageBitmap(bitmap1);
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        }, true);
        if(bitmap != null)
            imageview.setImageBitmap(bitmap);
        imageview.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view1)
            {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse(adUrl));
                startActivity(intent);
            }

            final MainActivity this$0;
            private final String val$adUrl;

            
            {
                this$0 = MainActivity.this;
                adUrl = s;
                super();
            }
        });
        return view;
    }

    private void getAllData(int i, ListView listview, com.weixin.wxjx.http.HttpRequestAllData.AllDataLoadListener alldataloadlistener)
    {
        HttpRequestAllData httprequestalldata = new HttpRequestAllData(this, dataAdapterAll);
        httprequestalldata.setRequestCode(i);
        httprequestalldata.setAllDataLoadListener(alldataloadlistener);
        httprequestalldata.getDefaultDataOfAll();
    }

    private void getDataOfJingXuan(int i, boolean flag, boolean flag1, com.weixin.wxjx.http.HttpRequestJingXuanData.InitAdvertbar initadvertbar)
    {
        HttpRequestJingXuanData httprequestjingxuandata = new HttpRequestJingXuanData(this, dataAdapterJingXuan);
        httprequestjingxuandata.setInitAdvertbar(initadvertbar);
        httprequestjingxuandata.setRequestCode(i);
        httprequestjingxuandata.setFirstRequest(flag);
        if(flag)
        {
            httprequestjingxuandata.getDefaultDataOfJingXuan();
        } else
        {
            httprequestjingxuandata.setListView(listViewJingXuan);
            httprequestjingxuandata.getNextDataOfJingXuan(flag1);
        }
    }

    private void getLocationInfo()
    {
        mLocationClient = new LocationClient(getApplicationContext());
        mLocationClient.registerLocationListener(myListener);
        LocationClientOption locationclientoption = new LocationClientOption();
        locationclientoption.setOpenGps(false);
        locationclientoption.setAddrType("all");
        locationclientoption.setCoorType("bd09ll");
        locationclientoption.setScanSpan(5000);
        locationclientoption.disableCache(true);
        locationclientoption.setPriority(2);
        mLocationClient.setLocOption(locationclientoption);
        mLocationClient.start();
    }

    private void getRecommendDataOfMore(int i)
    {
        HttpRequestRecommendData httprequestrecommenddata = new HttpRequestRecommendData(this);
        httprequestrecommenddata.setRecommendDataLoadListener(this);
        httprequestrecommenddata.setRequestCode(i);
        httprequestrecommenddata.getRecommendData();
    }

    private void getSortData(int i, DragListView draglistview, BaseAdapter baseadapter, boolean flag, boolean flag1, int j, com.weixin.wxjx.http.HttpRequestSortData.SortDataLoadListener sortdataloadlistener)
    {
        HttpRequestSortData httprequestsortdata = new HttpRequestSortData(this, baseadapter);
        httprequestsortdata.setListView(draglistview);
        httprequestsortdata.setRequestCode(i);
        httprequestsortdata.setFirstRequest(flag);
        httprequestsortdata.setPullDown(flag1);
        httprequestsortdata.setFlag(j);
        httprequestsortdata.setSortDataLoadListener(sortdataloadlistener);
        httprequestsortdata.getDefaultDataOfSort();
    }

    private void getUserManagerUrl()
    {
        TelephonyManager telephonymanager = (TelephonyManager)getSystemService("phone");
        WxVersionCode wxversioncode = new WxVersionCode();
        String s;
        HttpClientUtil httpclientutil;
        if(telephonymanager.getSubscriberId() == null)
        {
            WxApplication wxapplication = (WxApplication)getApplicationContext();
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
        httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xac, s);
        if(AndroidUtil.isNetworkConnected(this))
        {
            RequestUserManagerUrlTask requestusermanagerurltask = new RequestUserManagerUrlTask();
            HttpClientUtil ahttpclientutil[] = new HttpClientUtil[1];
            ahttpclientutil[0] = httpclientutil;
            requestusermanagerurltask.execute(ahttpclientutil);
        } else
        {
            userProgressView.setVisibility(8);
            userNetState.setVisibility(0);
            webView.setVisibility(8);
            userNetState.setText(0x7f090029);
        }
    }

    private void getWxCategoryData(int i, boolean flag, boolean flag1)
    {
        HttpRequestCategoryData httprequestcategorydata = new HttpRequestCategoryData(this, categoryAdapter);
        httprequestcategorydata.setTypeId(categoryId);
        httprequestcategorydata.setFirstRequest(flag);
        httprequestcategorydata.setListView(categoryListView);
        httprequestcategorydata.setPullDown(flag1);
        httprequestcategorydata.setRequestCode(i);
        httprequestcategorydata.setDataLoadListener(this);
        httprequestcategorydata.getCategoryData();
    }

    private void initApplyOfMore()
    {
        pageLevel = 2;
        childPageInMore = 101;
        txtMoreTitle.setText(0x7f090016);
        moreBackView.setVisibility(0);
        imgSetting.setVisibility(8);
        moreContentView.setVisibility(8);
        applyContentView.setVisibility(0);
        settingContentView.setVisibility(8);
        usermanagerContentView.setVisibility(8);
        moreBackView.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view)
            {
                setDefaultPageOfMore();
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        qqIsEmpty = true;
        wxIsEmpty = true;
        Button button = (Button)moreView.findViewById(0x7f080038);
        qqEditText = (EditText)moreView.findViewById(0x7f080033);
        wxEditText = (EditText)moreView.findViewById(0x7f080034);
        wxPublicRadioButton = (RadioButton)moreView.findViewById(0x7f080036);
        wxPrivateRadioButton = (RadioButton)moreView.findViewById(0x7f080037);
        wxRadioGroup = (RadioGroup)moreView.findViewById(0x7f080035);
        button.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view)
            {
                postWeiXinInfo();
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        qqEditText.addTextChangedListener(new TextWatcher() {

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                qqIsEmpty = false;
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        wxEditText.addTextChangedListener(new TextWatcher() {

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                wxIsEmpty = false;
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
    }

    private void initCategoryListView()
    {
        pageLevel = 2;
        childPageInAll = 201;
        txtTitle.setText(categoryName);
        mAllProgressView.setVisibility(0);
        allBackView.setVisibility(0);
        listViewAll.setVisibility(8);
        categoryListView.setVisibility(8);
        allNetStateTip.setVisibility(8);
        getWxCategoryData(1000, true, false);
        categoryListView.setAdapter(categoryAdapter);
        categoryListView.setOnRefreshListener(new com.weixin.wxjx.view.DragListView.OnRefreshLoadingMoreListener() {

            public void onLoadMore()
            {
                getWxCategoryData(1000, false, false);
            }

            public void onRefresh()
            {
                getWxCategoryData(1000, false, true);
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        allBackView.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view)
            {
                setDefaultPageOfAll();
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
    }

    private void initSettingOfMore()
    {
        pageLevel = 2;
        childPageInMore = 102;
        txtMoreTitle.setText(0x7f090015);
        moreBackView.setVisibility(0);
        imgSetting.setVisibility(8);
        moreContentView.setVisibility(8);
        applyContentView.setVisibility(8);
        settingContentView.setVisibility(0);
        usermanagerContentView.setVisibility(8);
        moreBackView.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view3)
            {
                setDefaultPageOfMore();
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        final ImageView imgSwitchIndicatorOn = (ImageView)moreView.findViewById(0x7f08009c);
        final ImageView imgSwitchIndicatorOff = (ImageView)moreView.findViewById(0x7f08009e);
        SlidButton slidbutton = (SlidButton)moreView.findViewById(0x7f08009d);
        View view;
        View view1;
        View view2;
        if(AndroidUtil.getPushState(this))
        {
            slidbutton.setSwitchState(true);
            imgSwitchIndicatorOn.setEnabled(true);
            imgSwitchIndicatorOff.setEnabled(false);
        } else
        {
            slidbutton.setSwitchState(false);
            imgSwitchIndicatorOn.setEnabled(false);
            imgSwitchIndicatorOff.setEnabled(true);
        }
        slidbutton.setOnSwitchListener(new com.weixin.wxjx.view.SlidButton.OnSwitchListener() {

            public void onSwitched(boolean flag)
            {
                android.content.SharedPreferences.Editor editor;
                if(flag)
                {
                    imgSwitchIndicatorOn.setEnabled(true);
                    imgSwitchIndicatorOff.setEnabled(false);
                } else
                {
                    imgSwitchIndicatorOn.setEnabled(false);
                    imgSwitchIndicatorOff.setEnabled(true);
                }
                editor = getSharedPreferences("weixinjingxuan_pref", 0).edit();
                editor.putBoolean("switch_state", flag);
                editor.commit();
            }

            final MainActivity this$0;
            private final ImageView val$imgSwitchIndicatorOff;
            private final ImageView val$imgSwitchIndicatorOn;

            
            {
                this$0 = MainActivity.this;
                imgSwitchIndicatorOn = imageview;
                imgSwitchIndicatorOff = imageview1;
                super();
            }
        });
        ((CustomViewPager)mPager).setChildView((ViewGroup)moreView.findViewById(0x7f08009b));
        ((TextView)moreView.findViewById(0x7f0800a1)).setText(AndroidUtil.getVersionCode(this));
        view = moreView.findViewById(0x7f08009f);
        view1 = moreView.findViewById(0x7f0800a3);
        view2 = moreView.findViewById(0x7f0800a6);
        view.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view3)
            {
                checkVersionUpdate();
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        view2.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view3)
            {
                initUserManagerOfMore();
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        view1.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view3)
            {
                Intent intent = new Intent(MainActivity.this, com/weixin/wxjx/activity/UserSuggestionActivity);
                startActivity(intent);
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
    }

    private void initTabHost()
    {
        listViewDaySort = (DragListView)sortView.findViewById(0x7f0800b9);
        listViewAllSort = (DragListView)sortView.findViewById(0x7f0800ba);
        mSortProgressBar = sortView.findViewById(0x7f08006f);
        sortNetState = (TextView)sortView.findViewById(0x7f0800bb);
        dayTextView = (TextView)sortView.findViewById(0x7f0800b7);
        allTextView = (TextView)sortView.findViewById(0x7f0800b8);
        View view = sortView.findViewById(0x7f0800b5);
        View view1 = sortView.findViewById(0x7f0800b6);
        dayTextView.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view2)
            {
                if(currentTab == 1)
                    setDefaultTab();
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        allTextView.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view2)
            {
                if(currentTab == 0)
                    setTabOfAll();
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        view1.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view2)
            {
                Intent intent = new Intent(MainActivity.this, com/weixin/wxjx/shake/ShakeActivity);
                startActivity(intent);
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        view.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view2)
            {
                Intent intent = new Intent(MainActivity.this, com/weixin/wxjx/activity/SearchActivity);
                startActivity(intent);
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        if(currentTab != 0) goto _L2; else goto _L1
_L1:
        setDefaultTab();
_L4:
        return;
_L2:
        if(currentTab == 1)
            setTabOfAll();
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void initUserManagerOfMore()
    {
        pageLevel = 3;
        childPageInMore = 103;
        txtMoreTitle.setText(0x7f090025);
        moreBackView.setVisibility(0);
        imgSetting.setVisibility(8);
        moreContentView.setVisibility(8);
        applyContentView.setVisibility(8);
        settingContentView.setVisibility(8);
        usermanagerContentView.setVisibility(0);
        moreBackView.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view)
            {
                initSettingOfMore();
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        userNetState = (TextView)moreView.findViewById(0x7f0800c2);
        userProgressView = moreView.findViewById(0x7f08006f);
        webView = (WebView)moreView.findViewById(0x7f0800c1);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebViewClient(new WebViewClient() {

            public void onPageFinished(WebView webview, String s)
            {
                super.onPageFinished(webview, s);
            }

            public void onPageStarted(WebView webview, String s, Bitmap bitmap)
            {
                super.onPageStarted(webview, s, bitmap);
            }

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                webview.loadUrl(s);
                return super.shouldOverrideUrlLoading(webview, s);
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        userNetState.setVisibility(8);
        userProgressView.setVisibility(0);
        webView.setVisibility(8);
        getUserManagerUrl();
    }

    private void initView()
    {
        dataAdapterJingXuan = new DataAdapterJingXuan(this);
        dataAdapterDaySort = new DataAdapterSort(this);
        dataAdapterAllSort = new DataAdapterSort(this);
        imgSliser = (ImageView)findViewById(0x7f080072);
        btnJingXuan = (LinearLayout)findViewById(0x7f080074);
        btnSort = (LinearLayout)findViewById(0x7f080076);
        btnAll = (LinearLayout)findViewById(0x7f080078);
        btnMore = (LinearLayout)findViewById(0x7f08007a);
        imgJingXuan = (ImageView)findViewById(0x7f080075);
        imgSort = (ImageView)findViewById(0x7f080077);
        imgAll = (ImageView)findViewById(0x7f080079);
        imgMore = (ImageView)findViewById(0x7f08007b);
        btnJingXuan.setOnClickListener(new MyViewOnClickListener(0));
        btnSort.setOnClickListener(new MyViewOnClickListener(1));
        btnAll.setOnClickListener(new MyViewOnClickListener(2));
        btnMore.setOnClickListener(new MyViewOnClickListener(3));
        int i = AndroidUtil.getScreenWidth(this) / 4;
        offset = i;
        params = new android.widget.FrameLayout.LayoutParams(i, getResources().getDimensionPixelSize(0x7f070003));
        imgSliser.setLayoutParams(params);
    }

    private void initViewpager()
    {
        mPager = (ViewPager)findViewById(0x7f08007c);
        listViews = new ArrayList();
        LayoutInflater layoutinflater = getLayoutInflater();
        jingXuanView = layoutinflater.inflate(0x7f030005, null);
        sortView = layoutinflater.inflate(0x7f03001b, null);
        allView = layoutinflater.inflate(0x7f030002, null);
        moreView = layoutinflater.inflate(0x7f030012, null);
        txtTitle = (TextView)allView.findViewById(0x7f0800bd);
        listViewAll = (ListView)allView.findViewById(0x7f08002f);
        categoryListView = (DragListView)allView.findViewById(0x7f080030);
        mAllProgressView = allView.findViewById(0x7f08006f);
        allNetStateTip = (TextView)allView.findViewById(0x7f080031);
        allBackView = allView.findViewById(0x7f0800bc);
        categoryAdapter = new DataAdapterJingXuan(this);
        dataAdapterAll = new DataAdapterAll(this, listViewAll);
        moreContentView = moreView.findViewById(0x7f08007e);
        applyContentView = moreView.findViewById(0x7f080032);
        settingContentView = moreView.findViewById(0x7f08009a);
        usermanagerContentView = moreView.findViewById(0x7f0800c0);
        txtMoreTitle = (TextView)moreView.findViewById(0x7f08008a);
        moreBackView = moreView.findViewById(0x7f08008c);
        imgSetting = (ImageView)moreView.findViewById(0x7f08008b);
        listViews.add(jingXuanView);
        listViews.add(sortView);
        listViews.add(allView);
        listViews.add(moreView);
        mPagerAdapter = new MyPagerAdapter();
        mPagerAdapter.setmListViews(listViews);
        mPager.setAdapter(mPagerAdapter);
        mPager.setOnPageChangeListener(new MyOnPageChangeListener());
        currentTab = 0;
        prePos = 0;
        pageLevel = 1;
        currentPage = 0;
    }

    private void postCurLocationInfo(int i)
    {
        HttpPostLocation httppostlocation = new HttpPostLocation(this);
        httppostlocation.setmLatitude(mLatitude);
        httppostlocation.setmLontitude(mLontitude);
        httppostlocation.setRequestCode(i);
        httppostlocation.setLocationPostListener(this);
        httppostlocation.postUserLocation();
    }

    private void postWeiXinInfo()
    {
        if(qqIsEmpty || wxIsEmpty) goto _L2; else goto _L1
_L1:
        String s;
        String s1;
        s = qqEditText.getText().toString().trim();
        s1 = wxEditText.getText().toString().trim();
        if(s.equals("") || s1.equals("")) goto _L4; else goto _L3
_L3:
        if(!AndroidUtil.isValidateWxId(s1) || !AndroidUtil.isValidateQQId(s)) goto _L6; else goto _L5
_L5:
        HttpRequestAddData httprequestadddata = new HttpRequestAddData(this);
        httprequestadddata.setQqID(s);
        httprequestadddata.setWxID(s1);
        httprequestadddata.setAddDataListener(this);
        if(wxRadioGroup.getCheckedRadioButtonId() == wxPrivateRadioButton.getId())
            httprequestadddata.setWxIdType(2);
        else
            httprequestadddata.setWxIdType(1);
        httprequestadddata.sendForApplyData();
_L8:
        return;
_L6:
        if(!AndroidUtil.isValidateWxId(s1) || !AndroidUtil.isValidateQQId(s))
            Toast.makeText(this, "\u8F93\u5165\u8D26\u53F7\u683C\u5F0F\u9519\u8BEF!", 0).show();
        continue; /* Loop/switch isn't completed */
_L4:
        Toast.makeText(this, "\u8D26\u53F7\u4E0D\u80FD\u4E3A\u7A7A!", 0).show();
        continue; /* Loop/switch isn't completed */
_L2:
        if(qqIsEmpty || wxIsEmpty)
            Toast.makeText(this, "\u8BF7\u8F93\u5165\u60A8\u7684qq\u8D26\u53F7\u548C\u5FAE\u4FE1\u8D26\u53F7!", 0).show();
        if(true) goto _L8; else goto _L7
_L7:
    }

    private void searchApkByBrowser(String s)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(s));
        startActivity(intent);
    }

    private void setDefaultPage()
    {
        mPager.setCurrentItem(0);
        imgJingXuan.setImageResource(0x7f020027);
        View view = jingXuanView.findViewById(0x7f08003f);
        jingXuanView.findViewById(0x7f080040).setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view1)
            {
                Intent intent = new Intent(MainActivity.this, com/weixin/wxjx/shake/ShakeActivity);
                startActivity(intent);
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        view.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view1)
            {
                Intent intent = new Intent(MainActivity.this, com/weixin/wxjx/activity/SearchActivity);
                startActivity(intent);
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        listViewJingXuan = (DragListView)jingXuanView.findViewById(0x7f080041);
        mJxProgressBar = jingXuanView.findViewById(0x7f08006f);
        jingNetState = (TextView)jingXuanView.findViewById(0x7f080042);
        imageAnimView = (ImageView)jingXuanView.findViewById(0x7f080043);
        mJxProgressBar.setVisibility(0);
        imageAnimView.setVisibility(8);
        listViewJingXuan.setVisibility(8);
        jingNetState.setVisibility(8);
        getDataOfJingXuan(1000, true, false, this);
        listViewJingXuan.setAdapter(dataAdapterJingXuan);
        listViewJingXuan.setOnRefreshListener(new com.weixin.wxjx.view.DragListView.OnRefreshLoadingMoreListener() {

            public void onLoadMore()
            {
                getDataOfJingXuan(1000, false, false, MainActivity.this);
            }

            public void onRefresh()
            {
                getDataOfJingXuan(1000, false, true, MainActivity.this);
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
    }

    private void setDefaultPageOfAll()
    {
        pageLevel = 1;
        childPageInAll = 200;
        dataAdapterAll.setCallback(new com.weixin.wxjx.adapter.DataAdapterAll.CategoryDataLoadCallback() {

            public void onLoadCategoryData(String s, int i)
            {
                categoryId = i;
                categoryName = s;
                initCategoryListView();
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        View view = allView.findViewById(0x7f0800be);
        allView.findViewById(0x7f0800bf).setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view1)
            {
                Intent intent = new Intent(MainActivity.this, com/weixin/wxjx/shake/ShakeActivity);
                startActivity(intent);
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        view.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view1)
            {
                Intent intent = new Intent(MainActivity.this, com/weixin/wxjx/activity/SearchActivity);
                startActivity(intent);
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        mAllProgressView.setVisibility(0);
        listViewAll.setVisibility(8);
        allBackView.setVisibility(8);
        categoryListView.setVisibility(8);
        allNetStateTip.setVisibility(8);
        txtTitle.setText(0x7f090013);
        getAllData(1000, listViewAll, this);
        listViewAll.setAdapter(dataAdapterAll);
    }

    private void setDefaultPageOfMore()
    {
        pageLevel = 1;
        childPageInMore = 100;
        imgSetting.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view)
            {
                initSettingOfMore();
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        moreView.findViewById(0x7f08007f).setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view)
            {
                initApplyOfMore();
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        ImageView imageview = (ImageView)moreView.findViewById(0x7f080080);
        ImageView imageview1 = (ImageView)moreView.findViewById(0x7f080082);
        ImageView imageview2 = (ImageView)moreView.findViewById(0x7f080084);
        ImageView imageview3 = (ImageView)moreView.findViewById(0x7f080086);
        TextView textview = (TextView)moreView.findViewById(0x7f080081);
        TextView textview1 = (TextView)moreView.findViewById(0x7f080083);
        TextView textview2 = (TextView)moreView.findViewById(0x7f080085);
        TextView textview3 = (TextView)moreView.findViewById(0x7f080087);
        imageRecommendViews[0] = imageview;
        imageRecommendViews[1] = imageview1;
        imageRecommendViews[2] = imageview2;
        imageRecommendViews[3] = imageview3;
        textRecommendViews[0] = textview;
        textRecommendViews[1] = textview1;
        textRecommendViews[2] = textview2;
        textRecommendViews[3] = textview3;
        getRecommendDataOfMore(1000);
        moreBackView.setVisibility(8);
        imgSetting.setVisibility(0);
        txtMoreTitle.setText(0x7f090014);
        moreContentView.setVisibility(0);
        applyContentView.setVisibility(8);
        settingContentView.setVisibility(8);
        usermanagerContentView.setVisibility(8);
    }

    private void setDefaultTab()
    {
        currentTab = 0;
        dayTextView.setBackgroundResource(0x7f020066);
        allTextView.setBackgroundResource(0x7f020065);
        listViewAllSort.setVisibility(8);
        listViewDaySort.setVisibility(8);
        sortNetState.setVisibility(8);
        mSortProgressBar.setVisibility(0);
        dataAdapterDaySort.removeAllData();
        getSortData(1000, listViewDaySort, dataAdapterDaySort, true, false, 1, this);
        listViewDaySort.setAdapter(dataAdapterDaySort);
        listViewDaySort.setOnRefreshListener(new com.weixin.wxjx.view.DragListView.OnRefreshLoadingMoreListener() {

            public void onLoadMore()
            {
                getSortData(1000, listViewDaySort, dataAdapterDaySort, false, false, 1, MainActivity.this);
            }

            public void onRefresh()
            {
                getSortData(1000, listViewDaySort, dataAdapterDaySort, false, true, 1, MainActivity.this);
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
    }

    private void setPointOnAdvert(int i)
    {
        if(viewGroup != null)
            viewGroup.removeAllViews();
        int j = 0;
        do
        {
            if(j >= i)
                return;
            ImageView imageview = new ImageView(this);
            imageview.setLayoutParams(new android.widget.FrameLayout.LayoutParams(15, 15));
            imageview.setPadding(2, 0, 0, 0);
            imageview.setImageResource(0x7f02003f);
            imageViews[j] = imageview;
            viewGroup.addView(imageViews[j]);
            j++;
        } while(true);
    }

    private void setPointSelected(int i)
    {
        int j = 0;
        do
        {
            if(j >= imageViews.length)
                return;
            if(j == i)
                imageViews[j].setEnabled(true);
            else
                imageViews[j].setEnabled(false);
            j++;
        } while(true);
    }

    private void setTabOfAll()
    {
        currentTab = 1;
        allTextView.setBackgroundResource(0x7f020066);
        dayTextView.setBackgroundResource(0x7f020065);
        listViewDaySort.setVisibility(8);
        listViewAllSort.setVisibility(8);
        sortNetState.setVisibility(8);
        mSortProgressBar.setVisibility(0);
        dataAdapterAllSort.removeAllData();
        listViewAllSort.setAdapter(dataAdapterAllSort);
        getSortData(1000, listViewAllSort, dataAdapterAllSort, true, false, 2, this);
        listViewAllSort.setOnRefreshListener(new com.weixin.wxjx.view.DragListView.OnRefreshLoadingMoreListener() {

            public void onLoadMore()
            {
                getSortData(1000, listViewAllSort, dataAdapterAllSort, false, false, 2, MainActivity.this);
            }

            public void onRefresh()
            {
                getSortData(1000, listViewAllSort, dataAdapterAllSort, false, true, 2, MainActivity.this);
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
    }

    private void showUpdateDialog(final WxUpgradeData wxUpgradeData)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(this);
        builder.setTitle(0x7f09002a);
        builder.setMessage(0x7f09002b);
        builder.setPositiveButton(0x7f09002c, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
                downloadNewApk(wxUpgradeData);
            }

            final MainActivity this$0;
            private final WxUpgradeData val$wxUpgradeData;

            
            {
                this$0 = MainActivity.this;
                wxUpgradeData = wxupgradedata;
                super();
            }
        });
        builder.setNegativeButton(0x7f09002d, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            final MainActivity this$0;

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        builder.create().show();
    }

    private void startPushService()
    {
        startService(new Intent(this, com/weixin/wxjx/service/PushService));
        PendingIntent pendingintent = PendingIntent.getService(this, 0, new Intent(this, com/weixin/wxjx/service/PushService), 0);
        long l = SystemClock.elapsedRealtime();
        ((AlarmManager)getSystemService("alarm")).setRepeating(2, l, 10000L, pendingintent);
    }

    public ViewPager getmPager()
    {
        return mPager;
    }

    public void onAddDataSuccess(boolean flag, int i)
    {
        if(!flag) goto _L2; else goto _L1
_L1:
        if(i != 1) goto _L4; else goto _L3
_L3:
        Toast.makeText(this, "\u7533\u8BF7\u63D0\u4EA4\u6210\u529F\uFF01", 0).show();
_L6:
        return;
_L4:
        if(i == 2)
            Toast.makeText(this, "\u5DF2\u7ECF\u7533\u8BF7\u8FC7\u4E86\uFF01", 0).show();
        else
        if(i == 3)
            Toast.makeText(this, "\u5DF2\u7ECF\u6210\u529F\u6536\u5F55\uFF01", 0).show();
        continue; /* Loop/switch isn't completed */
_L2:
        if(i == 2)
            Toast.makeText(this, 0x7f090029, 0).show();
        else
        if(i == 4)
            Toast.makeText(this, "\u63D0\u4EA4\u7533\u8BF7\u5931\u8D25\uFF01", 0).show();
        if(true) goto _L6; else goto _L5
_L5:
    }

    public void onAdvertbarInitialize(List list)
    {
        advertPager = listViewJingXuan.getAdvertPager();
        ((ChildViewPager)advertPager).setmActivity(this);
        viewGroup = listViewJingXuan.getPointViewGroup();
        ((CustomViewPager)mPager).setChildView((ViewGroup)listViewJingXuan.getmHeadView());
        ArrayList arraylist = new ArrayList();
        int i = 0;
        do
        {
            if(i >= list.size())
            {
                if(imageViews != null)
                    imageViews = null;
                imageViews = new ImageView[list.size()];
                setPointOnAdvert(list.size());
                advertPager.setAdapter(new AdvertPagerAdapter(arraylist));
                advertPager.setOnPageChangeListener(new AdvertPageChangeListener());
                setPointSelected(0);
                advertPager.setCurrentItem(0);
                mHandler.postDelayed(autoPlayImageRunnable, advertPlayInterval);
                return;
            }
            arraylist.add(getAdvImageView(i, (WxAdvertisingData)list.get(i)));
            i++;
        } while(true);
    }

    public void onBackPressed()
    {
        if(currentPage == 2)
        {
            if(childPageInAll == 201)
            {
                txtTitle.setText(0x7f090013);
                setDefaultPageOfAll();
                pageLevel = 2;
            }
        } else
        if(currentPage == 3)
            if(childPageInMore == 102 || childPageInMore == 101)
            {
                txtMoreTitle.setText(0x7f090014);
                setDefaultPageOfMore();
                pageLevel = 2;
            } else
            if(childPageInMore == 103)
            {
                txtMoreTitle.setText(0x7f090015);
                initSettingOfMore();
                pageLevel = 3;
            }
        if(pageLevel == 1)
        {
            Toast.makeText(this, 0x7f09000c, 0).show();
            pageLevel = 0;
        } else
        if(pageLevel == 2)
            pageLevel = 1;
        else
        if(pageLevel == 3)
            pageLevel = 2;
        else
        if(pageLevel == 0)
            finish();
    }

    public void onCheckVersionUpdate(WxUpgradeData wxupgradedata)
    {
        if(wxupgradedata != null && wxupgradedata.getUpgrade() == 1)
            showUpdateDialog(wxupgradedata);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030011);
        initView();
        initViewpager();
        if(bundle != null)
        {
            prePos = bundle.getInt("prePos");
            mCurPosition = bundle.getInt("mCurPosition");
            currentTab = bundle.getInt("currentTab");
            currentPage = bundle.getInt("currentPage");
            categoryId = bundle.getInt("categoryId");
            childPageInAll = bundle.getInt("childPageInAll");
            categoryName = bundle.getString("categoryName");
            childPageInMore = bundle.getInt("childPageInMore");
            int i = AndroidUtil.getScreenWidth(this) / 4;
            int j = getResources().getDimensionPixelSize(0x7f070003);
            imgSliser.setPadding(mCurPosition, 0, i, j);
        }
        if(currentPage == 0)
            setDefaultPage();
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    public void onLoadAllDataSuccess(boolean flag, int i, int j)
    {
        loadAllDataSuccess = flag;
        if(flag) goto _L2; else goto _L1
_L1:
        if(j != 1000) goto _L4; else goto _L3
_L3:
        if(i != 1) goto _L6; else goto _L5
_L5:
        getAllData(1001, listViewAll, this);
_L11:
        return;
_L6:
        if(i == 2)
        {
            allNetStateTip.setText(0x7f090029);
            mAllProgressView.setVisibility(8);
            listViewAll.setVisibility(8);
            categoryListView.setVisibility(8);
            allNetStateTip.setVisibility(0);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if(i != 1) goto _L8; else goto _L7
_L7:
        allNetStateTip.setText(0x7f090028);
_L9:
        mAllProgressView.setVisibility(8);
        listViewAll.setVisibility(8);
        categoryListView.setVisibility(8);
        allNetStateTip.setVisibility(0);
        continue; /* Loop/switch isn't completed */
_L8:
        if(i == 2)
            allNetStateTip.setText(0x7f090029);
        else
        if(i == 3)
            allNetStateTip.setText("\u6CA1\u6709\u6570\u636E\u4E86\uFF01\uFF01\uFF01");
        if(true) goto _L9; else goto _L2
_L2:
        mAllProgressView.setVisibility(8);
        listViewAll.setVisibility(0);
        categoryListView.setVisibility(8);
        allNetStateTip.setVisibility(8);
        if(true) goto _L11; else goto _L10
_L10:
    }

    public void onLoadCategoryDataSuccess(boolean flag, int i, int j, boolean flag1, boolean flag2)
    {
        loadCategoryDataSuccess = flag;
        if(flag) goto _L2; else goto _L1
_L1:
        if(j != 1000) goto _L4; else goto _L3
_L3:
        if(i != 1) goto _L6; else goto _L5
_L5:
        if(flag1)
            getWxCategoryData(1001, true, false);
        else
        if(flag2)
            getWxCategoryData(1001, false, true);
        else
            getWxCategoryData(1001, false, false);
_L11:
        return;
_L6:
        if(i == 2 && flag1)
        {
            allNetStateTip.setText(0x7f090029);
            mAllProgressView.setVisibility(8);
            listViewAll.setVisibility(8);
            categoryListView.setVisibility(8);
            allNetStateTip.setVisibility(0);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if(i != 1) goto _L8; else goto _L7
_L7:
        allNetStateTip.setText(0x7f090028);
_L9:
        mAllProgressView.setVisibility(8);
        listViewAll.setVisibility(8);
        categoryListView.setVisibility(8);
        allNetStateTip.setVisibility(0);
        continue; /* Loop/switch isn't completed */
_L8:
        if(i == 2)
            allNetStateTip.setText(0x7f090029);
        else
        if(i == 3)
            allNetStateTip.setText("\u6CA1\u6709\u6570\u636E\u4E86\uFF01\uFF01\uFF01");
        if(true) goto _L9; else goto _L2
_L2:
        mAllProgressView.setVisibility(8);
        listViewAll.setVisibility(8);
        categoryListView.setVisibility(0);
        allNetStateTip.setVisibility(8);
        if(true) goto _L11; else goto _L10
_L10:
    }

    public void onLoadJingXuanDataSuccess(boolean flag, int i, int j, boolean flag1, boolean flag2)
    {
        loadDataOfJingXuan = flag;
        if(flag) goto _L2; else goto _L1
_L1:
        if(j != 1000) goto _L4; else goto _L3
_L3:
        if(i != 1) goto _L6; else goto _L5
_L5:
        if(flag1)
            getDataOfJingXuan(1001, true, false, this);
        else
        if(flag2)
            getDataOfJingXuan(1001, false, true, this);
        else
            getDataOfJingXuan(1001, false, false, this);
_L8:
        return;
_L6:
        if(i == 2 && flag1)
        {
            jingNetState.setText(0x7f090029);
            mJxProgressBar.setVisibility(8);
            imageAnimView.setVisibility(8);
            listViewJingXuan.setVisibility(8);
            jingNetState.setVisibility(0);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if(i == 1)
            jingNetState.setText(0x7f090028);
        else
            jingNetState.setText(0x7f090029);
        mJxProgressBar.setVisibility(8);
        imageAnimView.setVisibility(8);
        listViewJingXuan.setVisibility(8);
        jingNetState.setVisibility(0);
        continue; /* Loop/switch isn't completed */
_L2:
        if(flag1)
        {
            if(!AndroidUtil.isPushServiceStarted(this))
                startPushService();
            getLocationInfo();
        }
        mJxProgressBar.setVisibility(8);
        listViewJingXuan.setVisibility(0);
        imageAnimView.setVisibility(0);
        jingNetState.setVisibility(8);
        if(true) goto _L8; else goto _L7
_L7:
    }

    public void onLoadRecommendDataSuccess(boolean flag, int i, List list, int j)
    {
        int k;
        loadRecommendDataSuccess = flag;
        if(!flag)
            break MISSING_BLOCK_LABEL_165;
        k = 0;
_L3:
        if(k < list.size()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        ImageView imageview = imageRecommendViews[k];
        TextView textview = textRecommendViews[k];
        String s = ((WxFeaturedData)list.get(k)).getLogoView();
        imageview.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view)
            {
                if(AndroidUtil.checkApkExist(MainActivity.this, pkgName))
                    AndroidUtil.startAppByPackageName(MainActivity.this, pkgName);
                else
                    searchApkByBrowser(apkUrl);
            }

            final MainActivity this$0;
            private final String val$apkUrl;
            private final String val$pkgName;

            
            {
                this$0 = MainActivity.this;
                pkgName = s;
                apkUrl = s1;
                super();
            }
        });
        Bitmap bitmap = AsyncImageLoader.getAsyncImageLoader(this).loadDrawable(imageview, s, moreImageCallBack, false);
        if(bitmap == null)
            imageview.setImageResource(0x7f02007b);
        else
            imageview.setImageBitmap(bitmap);
        textview.setText(((WxFeaturedData)list.get(k)).getName());
        k++;
          goto _L3
        if(j == 1000 && i == 1)
            getRecommendDataOfMore(1001);
          goto _L1
    }

    public void onLoadSortDataSuccess(int i, boolean flag, int j, int k, boolean flag1, boolean flag2)
    {
        if(flag) goto _L2; else goto _L1
_L1:
        if(k != 1000) goto _L4; else goto _L3
_L3:
        if(j != 1) goto _L6; else goto _L5
_L5:
        if(!flag1) goto _L8; else goto _L7
_L7:
        if(i != 1) goto _L10; else goto _L9
_L9:
        getSortData(1001, listViewDaySort, dataAdapterDaySort, true, false, 1, this);
_L12:
        return;
_L10:
        if(i == 2)
            getSortData(1001, listViewAllSort, dataAdapterAllSort, true, false, 2, this);
        continue; /* Loop/switch isn't completed */
_L8:
        if(flag2)
        {
            if(i == 1)
                getSortData(1001, listViewDaySort, dataAdapterDaySort, false, true, 1, this);
            else
            if(i == 2)
                getSortData(1001, listViewAllSort, dataAdapterAllSort, false, true, 2, this);
        } else
        if(i == 1)
            getSortData(1001, listViewDaySort, dataAdapterDaySort, false, false, 1, this);
        else
        if(i == 2)
            getSortData(1001, listViewAllSort, dataAdapterAllSort, false, false, 2, this);
        continue; /* Loop/switch isn't completed */
_L6:
        if(j == 2 && flag1)
        {
            sortNetState.setText(0x7f090029);
            mSortProgressBar.setVisibility(8);
            listViewAllSort.setVisibility(8);
            listViewDaySort.setVisibility(8);
            sortNetState.setVisibility(0);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if(j == 1)
            sortNetState.setText(0x7f090028);
        else
            sortNetState.setText(0x7f090029);
        mSortProgressBar.setVisibility(8);
        listViewAllSort.setVisibility(8);
        listViewDaySort.setVisibility(8);
        sortNetState.setVisibility(0);
        continue; /* Loop/switch isn't completed */
_L2:
        mSortProgressBar.setVisibility(8);
        sortNetState.setVisibility(8);
        if(i == 1)
        {
            listViewAllSort.setVisibility(8);
            listViewDaySort.setVisibility(0);
        } else
        if(i == 2)
        {
            listViewAllSort.setVisibility(0);
            listViewDaySort.setVisibility(8);
        }
        if(true) goto _L12; else goto _L11
_L11:
    }

    public void onLocationPostSuccess(boolean flag, int i, int j)
    {
        if(!flag) goto _L2; else goto _L1
_L1:
        if(j == 1000 && i == 3)
            postCurLocationInfo(1001);
_L4:
        return;
_L2:
        if(j == 1000 && i == 1)
            postCurLocationInfo(1001);
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected void onResume()
    {
        super.onResume();
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        bundle.putInt("prePos", prePos);
        bundle.putInt("mCurPosition", mCurPosition);
        bundle.putInt("currentTab", currentTab);
        bundle.putInt("currentPage", currentPage);
        bundle.putInt("categoryId", categoryId);
        bundle.putInt("childPageInAll", childPageInAll);
        bundle.putString("categoryName", categoryName);
        bundle.putInt("childPageInMore", childPageInMore);
        super.onSaveInstanceState(bundle);
    }

    protected void onStart()
    {
        super.onStart();
    }

    public void setChildPageInMore(int i)
    {
        childPageInMore = i;
    }

    public void startAnimation()
    {
        if(currentPage == 0)
        {
            imageAnimView.setVisibility(0);
            imageAnimView.setBackgroundResource(0x7f040000);
            animation = (AnimationDrawable)imageAnimView.getBackground();
            animation.start();
        }
    }

    public void startAutoPlay()
    {
        mHandler.postDelayed(autoPlayImageRunnable, advertPlayInterval);
    }

    public void stopAnimation()
    {
        if(currentPage == 0)
        {
            animation.stop();
            imageAnimView.setVisibility(8);
        }
    }

    public void stopAutoPlay()
    {
        mHandler.removeCallbacks(autoPlayImageRunnable);
    }

    private static final String TAG = "MainActivity";
    private ViewPager advertPager;
    private long advertPlayInterval;
    private View allBackView;
    private TextView allNetStateTip;
    private TextView allTextView;
    private View allView;
    private AnimationDrawable animation;
    private View applyContentView;
    private Runnable autoPlayImageRunnable;
    private LinearLayout btnAll;
    private LinearLayout btnJingXuan;
    private LinearLayout btnMore;
    private LinearLayout btnSort;
    private DataAdapterJingXuan categoryAdapter;
    private int categoryId;
    private DragListView categoryListView;
    private String categoryName;
    private int childPageInAll;
    private int childPageInMore;
    private int curAdvertPosition;
    private int currentPage;
    private int currentTab;
    private DataAdapterAll dataAdapterAll;
    private DataAdapterSort dataAdapterAllSort;
    private DataAdapterSort dataAdapterDaySort;
    private DataAdapterJingXuan dataAdapterJingXuan;
    private TextView dayTextView;
    private ImageView imageAnimView;
    private ImageView imageRecommendViews[];
    private ImageView imageViews[];
    private ImageView imgAll;
    private ImageView imgJingXuan;
    private ImageView imgMore;
    private ImageView imgSetting;
    private ImageView imgSliser;
    private ImageView imgSort;
    private boolean isInitializedTab;
    private TextView jingNetState;
    private View jingXuanView;
    private ListView listViewAll;
    private DragListView listViewAllSort;
    private DragListView listViewDaySort;
    private DragListView listViewJingXuan;
    private ArrayList listViews;
    private boolean loadAllDataSuccess;
    private boolean loadCategoryDataSuccess;
    private boolean loadDataOfJingXuan;
    private boolean loadRecommendDataSuccess;
    private View mAllProgressView;
    private int mCurPosition;
    private Handler mHandler;
    private View mJxProgressBar;
    private double mLatitude;
    public LocationClient mLocationClient;
    private double mLontitude;
    private ViewPager mPager;
    private MyPagerAdapter mPagerAdapter;
    private View mSortProgressBar;
    private View moreBackView;
    private View moreContentView;
    private com.weixin.wxjx.http.AsyncImageLoader.ImageCallBack moreImageCallBack;
    private View moreView;
    public BDLocationListener myListener;
    private int offset;
    private int pageLevel;
    private android.widget.FrameLayout.LayoutParams params;
    private int prePos;
    private EditText qqEditText;
    private boolean qqIsEmpty;
    private View settingContentView;
    private TextView sortNetState;
    private View sortView;
    private TextView textRecommendViews[];
    private TextView txtMoreTitle;
    private TextView txtTitle;
    private TextView userNetState;
    private View userProgressView;
    private View usermanagerContentView;
    private ViewGroup viewGroup;
    private WebView webView;
    private EditText wxEditText;
    private boolean wxIsEmpty;
    private RadioButton wxPrivateRadioButton;
    private RadioButton wxPublicRadioButton;
    private RadioGroup wxRadioGroup;
































































}
