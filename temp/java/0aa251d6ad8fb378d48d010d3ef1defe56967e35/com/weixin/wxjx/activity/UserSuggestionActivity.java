// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.*;
import com.google.gson.Gson;
import com.weixin.wxjx.application.WxApplication;
import com.weixin.wxjx.bean.WxUserSuggest;
import com.weixin.wxjx.database.WxDBHelper;
import com.weixin.wxjx.database.WxDBUtil;
import com.weixin.wxjx.http.HttpClientUtil;
import com.weixin.wxjx.util.AndroidUtil;
import com.weixin.wxjx.util.ProtocolInfo;

// Referenced classes of package com.weixin.wxjx.activity:
//            MySuggestionActivity

public class UserSuggestionActivity extends Activity
    implements android.view.View.OnClickListener
{
    class postUserSuggestionTask extends AsyncTask
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
            if(!s.equals("") && !s.contains("Error"))
            {
                if(s.equals(String.valueOf(1)))
                {
                    Toast.makeText(UserSuggestionActivity.this, "\u63D0\u4EA4\u6210\u529F\uFF01", 0).show();
                    WxDBUtil wxdbutil = new WxDBUtil();
                    android.content.ContentValues contentvalues = wxdbutil.insertToThrads(suggestContent);
                    long l = wxDBHelper.insert(contentvalues, "threads");
                    if(l != -1L)
                    {
                        android.content.ContentValues contentvalues1 = wxdbutil.insertToSessions(l, suggestContent, 0);
                        wxDBHelper.insert(contentvalues1, "sessions");
                        android.content.ContentValues contentvalues2 = wxdbutil.insertToSessions(l, getResources().getString(0x7f090033), 1);
                        wxDBHelper.insert(contentvalues2, "sessions");
                    }
                    Intent intent = new Intent(UserSuggestionActivity.this, com/weixin/wxjx/activity/MySuggestionActivity);
                    startActivity(intent);
                } else
                {
                    Toast.makeText(UserSuggestionActivity.this, "\u63D0\u4EA4\u5931\u8D25\uFF01", 0).show();
                }
            } else
            {
                Toast.makeText(UserSuggestionActivity.this, 0x7f090028, 0).show();
            }
            super.onPostExecute(s);
        }

        final UserSuggestionActivity this$0;

        postUserSuggestionTask()
        {
            this$0 = UserSuggestionActivity.this;
            super();
        }
    }


    public UserSuggestionActivity()
    {
        textChanged = false;
    }

    private void initView()
    {
        wxDBHelper = WxDBHelper.getInstance(this);
        imgUserMore = (ImageView)findViewById(0x7f0800c3);
        btnUserPost = (Button)findViewById(0x7f0800c5);
        editTextUserPost = (EditText)findViewById(0x7f0800c4);
        imgUserMore.setOnClickListener(this);
        btnUserPost.setOnClickListener(this);
        editTextUserPost.addTextChangedListener(new TextWatcher() {

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                textChanged = true;
            }

            final UserSuggestionActivity this$0;

            
            {
                this$0 = UserSuggestionActivity.this;
                super();
            }
        });
    }

    private void postUserSuggestion()
    {
        TelephonyManager telephonymanager = (TelephonyManager)getSystemService("phone");
        WxUserSuggest wxusersuggest = new WxUserSuggest();
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
            wxusersuggest.setUserId(s1);
        } else
        {
            wxusersuggest.setUserId(telephonymanager.getSubscriberId());
        }
        wxusersuggest.setSuggest(suggestContent);
        s = (new Gson()).toJson(wxusersuggest);
        httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xa9, s);
        if(AndroidUtil.isNetworkConnected(this))
        {
            postUserSuggestionTask postusersuggestiontask = new postUserSuggestionTask();
            HttpClientUtil ahttpclientutil[] = new HttpClientUtil[1];
            ahttpclientutil[0] = httpclientutil;
            postusersuggestiontask.execute(ahttpclientutil);
        } else
        {
            Toast.makeText(this, 0x7f090029, 0).show();
        }
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131230915 2131230917: default 32
    //                   2131230915 104
    //                   2131230916 32
    //                   2131230917 33;
           goto _L1 _L2 _L1 _L3
_L1:
        return;
_L3:
        if(textChanged)
        {
            suggestContent = editTextUserPost.getText().toString().trim();
            if(suggestContent.equals(""))
                Toast.makeText(this, "\u8F93\u5165\u4E0D\u80FD\u4E3A\u7A7A\uFF01", 0).show();
            else
                postUserSuggestion();
        } else
        {
            Toast.makeText(this, "\u8BF7\u8F93\u5165\u60A8\u7684\u610F\u89C1\uFF01", 0).show();
        }
        continue; /* Loop/switch isn't completed */
_L2:
        startActivity(new Intent(this, com/weixin/wxjx/activity/MySuggestionActivity));
        if(true) goto _L1; else goto _L4
_L4:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03001e);
        initView();
    }

    protected void onStart()
    {
        suggestContent = "";
        editTextUserPost.setText("");
        editTextUserPost.setHint(0x7f090030);
        textChanged = false;
        super.onStart();
    }

    private static final String TAG = "UserSuggestionActivity";
    private Button btnUserPost;
    private EditText editTextUserPost;
    private ImageView imgUserMore;
    private String suggestContent;
    private boolean textChanged;
    private WxDBHelper wxDBHelper;



}
