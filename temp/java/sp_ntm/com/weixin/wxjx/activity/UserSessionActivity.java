// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.*;
import android.widget.*;
import com.google.gson.Gson;
import com.weixin.wxjx.application.WxApplication;
import com.weixin.wxjx.bean.WxUserSuggest;
import com.weixin.wxjx.database.*;
import com.weixin.wxjx.http.HttpClientUtil;
import com.weixin.wxjx.util.AndroidUtil;
import com.weixin.wxjx.util.ProtocolInfo;
import java.text.SimpleDateFormat;
import java.util.*;

public class UserSessionActivity extends Activity
{
    private class PostUserSessionTask extends AsyncTask
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
                    editUserPost.setText("");
                    textChanged = false;
                    WxDBUtil wxdbutil = new WxDBUtil();
                    android.content.ContentValues contentvalues = wxdbutil.insertToSessions(threadId, sessionContent, 0);
                    dbHelper.insert(contentvalues, "sessions");
                    String s1 = getResources().getString(0x7f090033);
                    android.content.ContentValues contentvalues1 = wxdbutil.insertToSessions(threadId, s1, 1);
                    if(dbHelper.insert(contentvalues1, "sessions") != -1L)
                    {
                        sessionAdapter.setListDatas(getInitData());
                        sessionAdapter.notifyDataSetChanged();
                    }
                } else
                {
                    Toast.makeText(UserSessionActivity.this, "\u63D0\u4EA4\u5931\u8D25\uFF01", 0).show();
                }
            } else
            {
                Toast.makeText(UserSessionActivity.this, 0x7f090028, 0).show();
            }
            super.onPostExecute(s);
        }

        final UserSessionActivity this$0;

        private PostUserSessionTask()
        {
            this$0 = UserSessionActivity.this;
            super();
        }

        PostUserSessionTask(PostUserSessionTask postusersessiontask)
        {
            this();
        }
    }

    class SessionAdapter extends BaseAdapter
    {

        public int getCount()
        {
            int i;
            if(listDatas != null)
                i = listDatas.size();
            else
                i = 0;
            return i;
        }

        public Object getItem(int i)
        {
            return listDatas.get(i);
        }

        public long getItemId(int i)
        {
            return (long)i;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            ViewHolder viewholder;
            if(view == null)
            {
                viewholder = new ViewHolder(null);
                view = LayoutInflater.from(UserSessionActivity.this).inflate(0x7f030009, null);
                viewholder.sessionGroup = (ViewGroup)view.findViewById(0x7f080057);
                viewholder.sessionTheme = (TextView)view.findViewById(0x7f080058);
                viewholder.sessionTime = (TextView)view.findViewById(0x7f080059);
                view.setTag(viewholder);
            } else
            {
                viewholder = (ViewHolder)view.getTag();
            }
            if(((SessionMessage)listDatas.get(i)).getFrom() == 0)
                viewholder.sessionGroup.setBackgroundResource(0x7f020073);
            else
                viewholder.sessionGroup.setBackgroundResource(0x7f020072);
            viewholder.sessionTheme.setText(((SessionMessage)listDatas.get(i)).getTheme());
            viewholder.sessionTime.setText(((SessionMessage)listDatas.get(i)).getCreatedTime());
            return view;
        }

        public void setListDatas(List list)
        {
            listDatas = list;
        }

        private List listDatas;
        final UserSessionActivity this$0;

        public SessionAdapter(List list)
        {
            this$0 = UserSessionActivity.this;
            super();
            listDatas = list;
        }
    }

    private final class ViewHolder
    {

        public ViewGroup sessionGroup;
        public TextView sessionTheme;
        public TextView sessionTime;
        final UserSessionActivity this$0;

        private ViewHolder()
        {
            this$0 = UserSessionActivity.this;
            super();
        }

        ViewHolder(ViewHolder viewholder)
        {
            this();
        }
    }


    public UserSessionActivity()
    {
        textChanged = false;
    }

    private String getCreateTime(long l)
    {
        return (new SimpleDateFormat("yyyy-MM-dd HH:mm")).format(new Date(l));
    }

    private List getInitData()
    {
        ArrayList arraylist = new ArrayList();
        String as[] = new String[1];
        as[0] = String.valueOf(threadId);
        Cursor cursor = dbHelper.queryAll("sessions", "thread_id = ? ", as, "create_time ASC");
        do
        {
            if(!cursor.moveToNext())
                return arraylist;
            String s = cursor.getString(cursor.getColumnIndex("content"));
            long l = cursor.getLong(cursor.getColumnIndex("create_time"));
            int i = cursor.getInt(cursor.getColumnIndex("is_frome"));
            SessionMessage sessionmessage = new SessionMessage();
            sessionmessage.setCreatedTime(getCreateTime(l));
            sessionmessage.setTheme(s);
            sessionmessage.setFrom(i);
            arraylist.add(sessionmessage);
        } while(true);
    }

    private void initView()
    {
        dbHelper = WxDBHelper.getInstance(this);
        sessionAdapter = new SessionAdapter(getInitData());
        btnPost = (Button)findViewById(0x7f0800c8);
        msgListView = (ListView)findViewById(0x7f0800ca);
        editUserPost = (EditText)findViewById(0x7f0800c9);
        editUserPost.requestFocus();
        editUserPost.addTextChangedListener(new TextWatcher() {

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

            final UserSessionActivity this$0;

            
            {
                this$0 = UserSessionActivity.this;
                super();
            }
        });
        btnPost.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view)
            {
                if(textChanged)
                {
                    sessionContent = editUserPost.getText().toString().trim();
                    if(!sessionContent.equals(""))
                        postUserSession();
                } else
                {
                    Toast.makeText(UserSessionActivity.this, "\u8BF7\u8F93\u5165\u60A8\u7684\u610F\u89C1\uFF01", 0).show();
                }
            }

            final UserSessionActivity this$0;

            
            {
                this$0 = UserSessionActivity.this;
                super();
            }
        });
    }

    private void postUserSession()
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
        wxusersuggest.setSuggest(sessionContent);
        s = (new Gson()).toJson(wxusersuggest);
        httpclientutil = new HttpClientUtil("http://42.121.127.83:9891/ApptreeManager/WeixinServlet", ProtocolInfo.PROTOCOL_0xa9, s);
        if(AndroidUtil.isNetworkConnected(this))
        {
            PostUserSessionTask postusersessiontask = new PostUserSessionTask(null);
            HttpClientUtil ahttpclientutil[] = new HttpClientUtil[1];
            ahttpclientutil[0] = httpclientutil;
            postusersessiontask.execute(ahttpclientutil);
        } else
        {
            Toast.makeText(this, 0x7f090029, 0).show();
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03001f);
        threadId = getIntent().getLongExtra("thread_id", -1L);
        initView();
        msgListView.setAdapter(sessionAdapter);
    }

    protected void onStart()
    {
        textChanged = false;
        super.onStart();
    }

    private static final String TAG = "UserSessionActivity";
    private Button btnPost;
    private WxDBHelper dbHelper;
    private EditText editUserPost;
    private ListView msgListView;
    private SessionAdapter sessionAdapter;
    private String sessionContent;
    private boolean textChanged;
    private long threadId;










}
