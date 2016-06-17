// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.weixin.wxjx.adapter.DataAdapterJingXuan;
import com.weixin.wxjx.http.HttpRequestSearchData;
import com.weixin.wxjx.view.DragListView;

public class SearchResulteActivity extends Activity
    implements android.view.View.OnClickListener, com.weixin.wxjx.http.HttpRequestSearchData.SearchResulteLoadListener
{

    public SearchResulteActivity()
    {
    }

    private void getSearchData(int i, boolean flag, boolean flag1)
    {
        HttpRequestSearchData httprequestsearchdata = new HttpRequestSearchData(this, dataAdapter);
        httprequestsearchdata.setFirstRequest(flag);
        httprequestsearchdata.setPullDown(flag1);
        httprequestsearchdata.setSearchLoadListener(this);
        httprequestsearchdata.setRequestCode(i);
        httprequestsearchdata.setListView(resulteListView);
        httprequestsearchdata.setSearchContent(searchContent);
        httprequestsearchdata.getSearchResulte();
    }

    private void initView()
    {
        resulteBack = (ImageView)findViewById(0x7f080097);
        resulteListView = (DragListView)findViewById(0x7f080098);
        viewProgress = findViewById(0x7f08006f);
        resulteNetState = (TextView)findViewById(0x7f080099);
        resulteBack.setOnClickListener(this);
        dataAdapter = new DataAdapterJingXuan(this);
        resulteListView.setAdapter(dataAdapter);
        resulteListView.setVisibility(8);
        viewProgress.setVisibility(0);
        resulteNetState.setVisibility(8);
        getSearchData(1000, true, false);
        resulteListView.setOnRefreshListener(new com.weixin.wxjx.view.DragListView.OnRefreshLoadingMoreListener() {

            public void onLoadMore()
            {
                getSearchData(1000, false, false);
            }

            public void onRefresh()
            {
                getSearchData(1000, false, true);
            }

            final SearchResulteActivity this$0;

            
            {
                this$0 = SearchResulteActivity.this;
                super();
            }
        });
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131230871 2131230871: default 24
    //                   2131230871 25;
           goto _L1 _L2
_L1:
        return;
_L2:
        finish();
        if(true) goto _L1; else goto _L3
_L3:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030018);
        searchContent = getIntent().getStringExtra("search_content");
        initView();
    }

    public void onLoadSearchDataSuccess(boolean flag, int i, int j, boolean flag1, boolean flag2)
    {
        if(flag) goto _L2; else goto _L1
_L1:
        if(j != 1000) goto _L4; else goto _L3
_L3:
        if(i != 1) goto _L6; else goto _L5
_L5:
        if(flag1)
            getSearchData(1001, true, false);
        else
        if(flag2)
            getSearchData(1001, false, true);
        else
            getSearchData(1001, false, false);
_L11:
        return;
_L6:
        if(i == 2)
        {
            if(flag1)
            {
                resulteNetState.setText(0x7f090029);
                viewProgress.setVisibility(8);
                resulteListView.setVisibility(8);
                resulteNetState.setVisibility(0);
            }
        } else
        if(i == 3)
        {
            resulteNetState.setText("\u5F88\u62B1\u6B49\uFF0C\u6CA1\u6709\u627E\u5230\u4F60\u8981\u7684\u7ED3\u679C\u54DF\uFF01");
            viewProgress.setVisibility(8);
            resulteListView.setVisibility(8);
            resulteNetState.setVisibility(0);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if(i != 1) goto _L8; else goto _L7
_L7:
        resulteNetState.setText(0x7f090028);
_L9:
        viewProgress.setVisibility(8);
        resulteListView.setVisibility(8);
        resulteNetState.setVisibility(0);
        continue; /* Loop/switch isn't completed */
_L8:
        if(i == 2)
            resulteNetState.setText(0x7f090029);
        else
        if(i == 3)
            resulteNetState.setText("\u627E\u4E0D\u5230\u60A8\u60F3\u8981\u7684!");
        if(true) goto _L9; else goto _L2
_L2:
        viewProgress.setVisibility(8);
        resulteListView.setVisibility(0);
        resulteNetState.setVisibility(8);
        if(true) goto _L11; else goto _L10
_L10:
    }

    private DataAdapterJingXuan dataAdapter;
    private ImageView resulteBack;
    private DragListView resulteListView;
    private TextView resulteNetState;
    private String searchContent;
    private View viewProgress;

}
