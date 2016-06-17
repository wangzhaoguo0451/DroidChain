// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import com.google.gson.Gson;
import com.weixin.wxjx.application.WxApplication;
import com.weixin.wxjx.bean.*;
import com.weixin.wxjx.http.AsyncImageLoader;
import com.weixin.wxjx.http.HttpClientUtil;
import com.weixin.wxjx.util.AndroidUtil;
import com.weixin.wxjx.util.ProtocolInfo;
import java.util.List;

public class AccountAttentionActivity extends Activity
    implements android.view.View.OnClickListener
{
    class RequestAccountInfoTask extends AsyncTask
    {

        protected transient WxReturnAccountClass doInBackground(HttpClientUtil ahttpclientutil[])
        {
            String s = ahttpclientutil[0].postClient();
            WxReturnAccountClass wxreturnaccountclass = null;
            if(!s.equals("") && !s.contains("Error"))
                wxreturnaccountclass = (WxReturnAccountClass)(new Gson()).fromJson(s, com/weixin/wxjx/bean/WxReturnAccountClass);
            return wxreturnaccountclass;
        }

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((HttpClientUtil[])aobj);
        }

        protected void onPostExecute(WxReturnAccountClass wxreturnaccountclass)
        {
            progressBar.setVisibility(8);
            if(wxreturnaccountclass != null)
            {
                accountInfo.setVisibility(0);
                tipViewGroup.setVisibility(8);
                scrollGroup.setVisibility(0);
                commentViewGroup.setVisibility(0);
                setViewValue(wxreturnaccountclass);
            } else
            {
                accountInfo.setVisibility(0);
                commentViewGroup.setVisibility(8);
                scrollGroup.setVisibility(8);
                tipViewGroup.setVisibility(0);
                txtNetStat.setText(0x7f090028);
            }
            super.onPostExecute(wxreturnaccountclass);
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((WxReturnAccountClass)obj);
        }

        final AccountAttentionActivity this$0;

        RequestAccountInfoTask()
        {
            this$0 = AccountAttentionActivity.this;
            super();
        }
    }

    class UserCommentPostTask extends AsyncTask
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
            if(commentType != 1) goto _L6; else goto _L5
_L5:
            int j = 1 + Integer.valueOf(txtLike.getText().toString()).intValue();
            txtLike.setText(String.valueOf(j));
_L8:
            super.onPostExecute(s);
            return;
_L6:
            if(commentType == 0)
            {
                int i = 1 + Integer.valueOf(txtNotLike.getText().toString()).intValue();
                txtNotLike.setText(String.valueOf(i));
            }
            continue; /* Loop/switch isn't completed */
_L4:
            Toast.makeText(AccountAttentionActivity.this, "\u8BC4\u8BBA\u5931\u8D25\uFF01", 0).show();
            continue; /* Loop/switch isn't completed */
_L2:
            Toast.makeText(AccountAttentionActivity.this, "\u8BC4\u8BBA\u5931\u8D25\uFF01", 0).show();
            if(true) goto _L8; else goto _L7
_L7:
        }

        final AccountAttentionActivity this$0;

        UserCommentPostTask()
        {
            this$0 = AccountAttentionActivity.this;
            super();
        }
    }


    public AccountAttentionActivity()
    {
        wxLikeLayouts = new LinearLayout[4];
        hasCommented = false;
        commentType = -1;
    }

    private void getAccountInfo()
    {
        TelephonyManager telephonymanager = (TelephonyManager)getSystemService("phone");
        WxSubmitAccountInfo wxsubmitaccountinfo = new WxSubmitAccountInfo();
        wxsubmitaccountinfo.setAccountId(accountId);
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
            wxsubmitaccountinfo.setUserId(s1);
        } else
        {
            wxsubmitaccountinfo.setUserId(telephonymanager.getSubscriberId());
        }
        s = (new Gson()).toJson(wxsubmitaccountinfo);
        httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xa6, s);
        if(AndroidUtil.isNetworkConnected(this))
        {
            RequestAccountInfoTask requestaccountinfotask = new RequestAccountInfoTask();
            HttpClientUtil ahttpclientutil[] = new HttpClientUtil[1];
            ahttpclientutil[0] = httpclientutil;
            requestaccountinfotask.execute(ahttpclientutil);
        } else
        {
            progressBar.setVisibility(8);
            accountInfo.setVisibility(0);
            scrollGroup.setVisibility(8);
            commentViewGroup.setVisibility(8);
            txtNetStat.setText(0x7f090029);
        }
    }

    private Bitmap getImageLogo(ImageView imageview, String s)
    {
        Bitmap bitmap = AsyncImageLoader.getAsyncImageLoader(this).loadDrawable(imageview, s, new com.weixin.wxjx.http.AsyncImageLoader.ImageCallBack() {

            public void imageLoad(ImageView imageview1, Bitmap bitmap1)
            {
                if(bitmap1 != null)
                    imageview1.setImageBitmap(bitmap1);
            }

            final AccountAttentionActivity this$0;

            
            {
                this$0 = AccountAttentionActivity.this;
                super();
            }
        }, false);
        if(bitmap == null)
            bitmap = BitmapFactory.decodeResource(getResources(), 0x7f02007b);
        return bitmap;
    }

    private void initView()
    {
        imgBack = (ImageView)findViewById(0x7f08000e);
        imgBack.setOnClickListener(this);
        progressBar = findViewById(0x7f08006f);
        commentViewGroup = (ViewGroup)findViewById(0x7f08000f);
        tipViewGroup = (ViewGroup)findViewById(0x7f080065);
        txtNetStat = (TextView)findViewById(0x7f080031);
        accountInfo = findViewById(0x7f08000c);
        scrollGroup = (ViewGroup)findViewById(0x7f080015);
        accountInfo.setVisibility(8);
        img_wxBigLogo = (ImageView)findViewById(0x7f080017);
        btn_wxAttention = (Button)findViewById(0x7f080018);
        txt_wxName = (TextView)findViewById(0x7f080019);
        txt_wxType = (TextView)findViewById(0x7f08001a);
        txt_wxId = (TextView)findViewById(0x7f08001b);
        txt_wxWord = (TextView)findViewById(0x7f08001c);
        txt_wxIntroduce = (TextView)findViewById(0x7f08001d);
        wxLikeLayout1 = (LinearLayout)findViewById(0x7f08001e);
        wxLikeLayout2 = (LinearLayout)findViewById(0x7f080021);
        wxLikeLayout3 = (LinearLayout)findViewById(0x7f080024);
        wxLikeLayout4 = (LinearLayout)findViewById(0x7f080027);
        wxLikeLayouts[0] = wxLikeLayout1;
        wxLikeLayouts[1] = wxLikeLayout2;
        wxLikeLayouts[2] = wxLikeLayout3;
        wxLikeLayouts[3] = wxLikeLayout4;
        txtLike = (TextView)findViewById(0x7f080011);
        txtNotLike = (TextView)findViewById(0x7f080013);
        imgSmaile = (ImageView)findViewById(0x7f080010);
        imgCry = (ImageView)findViewById(0x7f080014);
        btnBigAttention = (Button)findViewById(0x7f080012);
        imgSmaile.setOnClickListener(this);
        imgCry.setOnClickListener(this);
        btnBigAttention.setOnClickListener(this);
        btn_wxAttention.setOnClickListener(this);
        btnBigAttention.setOnClickListener(this);
    }

    private void postUserComment(int i)
    {
        TelephonyManager telephonymanager = (TelephonyManager)getSystemService("phone");
        WxSubmitAccountInfo wxsubmitaccountinfo = new WxSubmitAccountInfo();
        String s;
        HttpClientUtil httpclientutil;
        UserCommentPostTask usercommentposttask;
        HttpClientUtil ahttpclientutil[];
        if(telephonymanager.getSubscriberId() == null)
        {
            WxApplication wxapplication = (WxApplication)getApplicationContext();
            String s1 = wxapplication.getUserId();
            if(s1.equals(""))
            {
                s1 = AndroidUtil.getRandomUserId(15);
                wxapplication.setUserId(s1);
            }
            wxsubmitaccountinfo.setUserId(s1);
        } else
        {
            wxsubmitaccountinfo.setUserId(telephonymanager.getSubscriberId());
        }
        wxsubmitaccountinfo.setAccountId(accountId);
        wxsubmitaccountinfo.setComment(i);
        s = (new Gson()).toJson(wxsubmitaccountinfo);
        httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xa7, s);
        usercommentposttask = new UserCommentPostTask();
        ahttpclientutil = new HttpClientUtil[1];
        ahttpclientutil[0] = httpclientutil;
        usercommentposttask.execute(ahttpclientutil);
    }

    private void setViewValue(WxReturnAccountClass wxreturnaccountclass)
    {
        WxAccountData wxaccountdata = wxreturnaccountclass.getAccountData();
        List list = wxreturnaccountclass.getRecommendDatas();
        wxId = wxaccountdata.getWxId();
        wxName = wxaccountdata.getName();
        img_wxBigLogo.setImageBitmap(getImageLogo(img_wxBigLogo, wxaccountdata.getLogoView()));
        txt_wxName.setText(wxaccountdata.getName());
        txt_wxType.setText(wxaccountdata.getTypeName());
        txt_wxId.setText(wxaccountdata.getWxId());
        txt_wxWord.setText(wxaccountdata.getLable());
        txt_wxIntroduce.setText(wxaccountdata.getIntroduce());
        txtLike.setText(String.valueOf(wxaccountdata.getLikeCount()));
        txtNotLike.setText(String.valueOf(wxaccountdata.getUnLikeCount()));
        int i = 0;
        do
        {
            if(i >= list.size())
            {
                qrCode = wxaccountdata.getQrCode();
                return;
            }
            final WxRecommendData wxRecommendData = (WxRecommendData)list.get(i);
            ImageView imageview = (ImageView)wxLikeLayouts[i].getChildAt(0);
            TextView textview = (TextView)wxLikeLayouts[i].getChildAt(1);
            imageview.setImageBitmap(getImageLogo(imageview, wxRecommendData.getLogoView()));
            textview.setText(wxRecommendData.getName());
            wxLikeLayouts[i].setOnClickListener(new android.view.View.OnClickListener() {

                public void onClick(View view)
                {
                    Intent intent = new Intent(AccountAttentionActivity.this, com/weixin/wxjx/activity/AccountAttentionActivity);
                    intent.putExtra("accountId", wxRecommendData.getAccountId());
                    startActivity(intent);
                }

                final AccountAttentionActivity this$0;
                private final WxRecommendData val$wxRecommendData;

            
            {
                this$0 = AccountAttentionActivity.this;
                wxRecommendData = wxrecommenddata;
                super();
            }
            });
            i++;
        } while(true);
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131230734 2131230744: default 64
    //                   2131230734 65
    //                   2131230735 64
    //                   2131230736 72
    //                   2131230737 64
    //                   2131230738 150
    //                   2131230739 64
    //                   2131230740 111
    //                   2131230741 64
    //                   2131230742 64
    //                   2131230743 64
    //                   2131230744 165;
           goto _L1 _L2 _L1 _L3 _L1 _L4 _L1 _L5 _L1 _L1 _L1 _L6
_L1:
        return;
_L2:
        finish();
        continue; /* Loop/switch isn't completed */
_L3:
        if(!hasCommented)
        {
            commentType = 1;
            postUserComment(1);
            hasCommented = true;
        } else
        {
            Toast.makeText(this, "\u60A8\u5DF2\u7ECF\u8BC4\u8BBA\u4E86!", 0).show();
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if(!hasCommented)
        {
            commentType = 0;
            postUserComment(0);
            hasCommented = true;
        } else
        {
            Toast.makeText(this, "\u60A8\u5DF2\u7ECF\u8BC4\u8BBA\u4E86!", 0).show();
        }
        continue; /* Loop/switch isn't completed */
_L4:
        AndroidUtil.shareAccount(this, wxId, wxName);
        continue; /* Loop/switch isn't completed */
_L6:
        if(AndroidUtil.checkApkExist(this, "com.tencent.mm"))
            AndroidUtil.startAttention(this, qrCode);
        else
            AndroidUtil.showInstallWxDialog(this);
        if(true) goto _L1; else goto _L7
_L7:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030000);
        accountId = getIntent().getIntExtra("accountId", -1);
        initView();
        getAccountInfo();
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        accountId = intent.getIntExtra("accountId", -1);
        getAccountInfo();
    }

    private int accountId;
    private View accountInfo;
    private Button btnBigAttention;
    private Button btn_wxAttention;
    private int commentType;
    private ViewGroup commentViewGroup;
    private boolean hasCommented;
    private ImageView imgBack;
    private ImageView imgCry;
    private ImageView imgSmaile;
    private ImageView img_wxBigLogo;
    private View progressBar;
    private String qrCode;
    private ViewGroup scrollGroup;
    private ViewGroup tipViewGroup;
    private TextView txtLike;
    private TextView txtNetStat;
    private TextView txtNotLike;
    private TextView txt_wxId;
    private TextView txt_wxIntroduce;
    private TextView txt_wxName;
    private TextView txt_wxType;
    private TextView txt_wxWord;
    private String wxId;
    private LinearLayout wxLikeLayout1;
    private LinearLayout wxLikeLayout2;
    private LinearLayout wxLikeLayout3;
    private LinearLayout wxLikeLayout4;
    private LinearLayout wxLikeLayouts[];
    private String wxName;










}
