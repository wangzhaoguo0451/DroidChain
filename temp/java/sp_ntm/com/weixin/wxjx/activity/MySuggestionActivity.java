// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.activity;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.*;
import android.widget.*;
import com.weixin.wxjx.database.SessionMessage;
import com.weixin.wxjx.database.WxDBHelper;
import java.text.SimpleDateFormat;
import java.util.*;

// Referenced classes of package com.weixin.wxjx.activity:
//            UserSessionActivity, UserSuggestionActivity

public class MySuggestionActivity extends Activity
{
    class MySuggestionAdapter extends BaseAdapter
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
                view = LayoutInflater.from(MySuggestionActivity.this).inflate(0x7f03000b, null);
                viewholder.sessionTheme = (TextView)view.findViewById(0x7f080063);
                viewholder.sessionTime = (TextView)view.findViewById(0x7f080064);
                view.setTag(viewholder);
            } else
            {
                viewholder = (ViewHolder)view.getTag();
            }
            viewholder.sessionTheme.setText(((SessionMessage)listDatas.get(i)).getTheme());
            viewholder.sessionTime.setText(((SessionMessage)listDatas.get(i)).getCreatedTime());
            return view;
        }

        public void setListDatas(List list)
        {
            listDatas = list;
        }

        private List listDatas;
        final MySuggestionActivity this$0;

        public MySuggestionAdapter(List list)
        {
            this$0 = MySuggestionActivity.this;
            super();
            listDatas = list;
        }
    }

    private final class ViewHolder
    {

        public TextView sessionTheme;
        public TextView sessionTime;
        final MySuggestionActivity this$0;

        private ViewHolder()
        {
            this$0 = MySuggestionActivity.this;
            super();
        }

        ViewHolder(ViewHolder viewholder)
        {
            this();
        }
    }


    public MySuggestionActivity()
    {
    }

    private String getCreateTime(long l)
    {
        return (new SimpleDateFormat("yyyy-MM-dd")).format(new Date(l));
    }

    private List getInitData()
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = dbHelper.queryAll("threads", null, null, "create_date DESC");
        do
        {
            if(!cursor.moveToNext())
                return arraylist;
            String s = cursor.getString(cursor.getColumnIndex("theme"));
            long l = cursor.getLong(cursor.getColumnIndex("create_date"));
            long l1 = cursor.getLong(cursor.getColumnIndex("_id"));
            int i = cursor.getInt(cursor.getColumnIndex("is_frome"));
            SessionMessage sessionmessage = new SessionMessage();
            sessionmessage.setCreatedTime(getCreateTime(l));
            sessionmessage.setTheme(s);
            sessionmessage.setThreadId(l1);
            sessionmessage.setFrom(i);
            arraylist.add(sessionmessage);
        } while(true);
    }

    private void initView()
    {
        dbHelper = WxDBHelper.getInstance(this);
        suggestionAdapter = new MySuggestionAdapter(getInitData());
        suggestionListView = (ListView)findViewById(0x7f08008e);
        registerForContextMenu(suggestionListView);
        imgPostView = (ImageView)findViewById(0x7f08008d);
        imgPostView.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view)
            {
                Intent intent = new Intent(MySuggestionActivity.this, com/weixin/wxjx/activity/UserSuggestionActivity);
                startActivity(intent);
            }

            final MySuggestionActivity this$0;

            
            {
                this$0 = MySuggestionActivity.this;
                super();
            }
        });
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        SessionMessage sessionmessage;
        int i = ((android.widget.AdapterView.AdapterContextMenuInfo)menuitem.getMenuInfo()).position;
        sessionmessage = (SessionMessage)suggestionAdapter.getItem(i);
        menuitem.getItemId();
        JVM INSTR tableswitch 2 3: default 52
    //                   2 58
    //                   3 91;
           goto _L1 _L2 _L3
_L1:
        return super.onContextItemSelected(menuitem);
_L2:
        Intent intent = new Intent(this, com/weixin/wxjx/activity/UserSessionActivity);
        intent.putExtra("thread_id", sessionmessage.getThreadId());
        startActivity(intent);
        continue; /* Loop/switch isn't completed */
_L3:
        if(dbHelper.delRecordInThreads(sessionmessage.getThreadId()))
        {
            dbHelper.delRecordInSessions(sessionmessage.getThreadId());
            suggestionAdapter.setListDatas(getInitData());
            suggestionAdapter.notifyDataSetChanged();
        }
        if(true) goto _L1; else goto _L4
_L4:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030015);
        initView();
        suggestionListView.setAdapter(suggestionAdapter);
        suggestionListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                SessionMessage sessionmessage = (SessionMessage)adapterview.getItemAtPosition(i);
                Intent intent = new Intent(MySuggestionActivity.this, com/weixin/wxjx/activity/UserSessionActivity);
                intent.putExtra("thread_id", sessionmessage.getThreadId());
                startActivity(intent);
            }

            final MySuggestionActivity this$0;

            
            {
                this$0 = MySuggestionActivity.this;
                super();
            }
        });
        suggestionListView.setOnItemLongClickListener(new android.widget.AdapterView.OnItemLongClickListener() {

            public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
            {
                return false;
            }

            final MySuggestionActivity this$0;

            
            {
                this$0 = MySuggestionActivity.this;
                super();
            }
        });
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        super.onCreateContextMenu(contextmenu, view, contextmenuinfo);
        contextmenu.setHeaderTitle("\u64CD\u4F5C");
        contextmenu.add(0, 2, 1, "\u67E5\u770B\u53CD\u9988");
        contextmenu.add(0, 3, 1, "\u5220\u9664\u53CD\u9988");
    }

    private static final String TAG = "MySuggestionActivity";
    private WxDBHelper dbHelper;
    private ImageView imgPostView;
    private MySuggestionAdapter suggestionAdapter;
    private ListView suggestionListView;
}
