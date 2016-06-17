// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.widget.*;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.weixin.wxjx.activity:
//            SearchResulteActivity

public class SearchActivity extends Activity
    implements android.view.View.OnClickListener
{
    class MyTextView
    {

        public boolean isUsed;
        public TextView textView;
        final SearchActivity this$0;

        public MyTextView(TextView textview, boolean flag)
        {
            this$0 = SearchActivity.this;
            super();
            textView = textview;
            isUsed = flag;
        }
    }


    public SearchActivity()
    {
    }

    private int getColor()
    {
        int i = (int)(Math.random() * (double)txtColor.length);
        return txtColor[i];
    }

    private MyTextView getMyTextView()
    {
        int i = (int)(Math.random() * (double)myTextViewList.size());
        return (MyTextView)myTextViewList.get(i);
    }

    private int getTextSize()
    {
        int i = (int)(Math.random() * (double)txtSize.length);
        return txtSize[i];
    }

    private void initTable()
    {
        int i;
        tableLayout.removeAllViews();
        i = 1;
_L2:
        if(i >= 10)
            return;
        TableRow tablerow = new TableRow(this);
        int j = 0;
        do
        {
label0:
            {
                if(j < 4)
                    break label0;
                tableLayout.addView(tablerow, new android.widget.TableLayout.LayoutParams());
                i++;
            }
            if(true)
                continue;
            TextView textview = new TextView(this);
            textview.setTextColor(getColor());
            textview.setTextSize(getTextSize());
            textview.setPadding(4, 4, 4, 4);
            tablerow.addView(textview);
            myTextViewList.add(new MyTextView(textview, false));
            j++;
        } while(true);
        if(true) goto _L2; else goto _L1
_L1:
    }

    private void initView()
    {
        myTextViewList = new ArrayList();
        imgBack = (ImageView)findViewById(0x7f080092);
        imgSearchView = (ImageView)findViewById(0x7f080094);
        editSearchText = (EditText)findViewById(0x7f080093);
        tableLayout = (TableLayout)findViewById(0x7f080095);
        imgBack.setOnClickListener(this);
        imgSearchView.setOnClickListener(this);
    }

    private void showTextView()
    {
        int i = 0;
        do
        {
label0:
            {
                if(i >= txt.length)
                    return;
                final String txtContent = getResources().getString(txt[i]);
                for(MyTextView mytextview = getMyTextView(); mytextview.isUsed; mytextview = getMyTextView())
                    break label0;

                mytextview.textView.setText(txt[i]);
                mytextview.textView.setOnClickListener(new android.view.View.OnClickListener() {

                    public void onClick(View view)
                    {
                        Intent intent = new Intent(SearchActivity.this, com/weixin/wxjx/activity/SearchResulteActivity);
                        intent.putExtra("search_content", txtContent);
                        startActivity(intent);
                    }

                    final SearchActivity this$0;
                    private final String val$txtContent;

            
            {
                this$0 = SearchActivity.this;
                txtContent = s;
                super();
            }
                });
                mytextview.isUsed = true;
                i++;
            }
        } while(true);
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131230866 2131230868: default 32
    //                   2131230866 33
    //                   2131230867 32
    //                   2131230868 40;
           goto _L1 _L2 _L1 _L3
_L1:
        return;
_L2:
        finish();
        continue; /* Loop/switch isn't completed */
_L3:
        String s = editSearchText.getText().toString();
        Intent intent = new Intent(this, com/weixin/wxjx/activity/SearchResulteActivity);
        intent.putExtra("search_content", s);
        startActivity(intent);
        if(true) goto _L1; else goto _L4
_L4:
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030017);
        initView();
        initTable();
        showTextView();
    }

    private static final int COLUMN_COUNT = 4;
    private static final int ROW_COUNT = 10;
    private static final int txt[];
    private static final int txtColor[];
    private static final int txtSize[];
    private EditText editSearchText;
    private ImageView imgBack;
    private ImageView imgSearchView;
    private List myTextViewList;
    private TableLayout tableLayout;

    static 
    {
        int ai[] = new int[24];
        ai[0] = 0x7f06007a;
        ai[1] = 0x7f060085;
        ai[2] = 0x7f06008f;
        ai[3] = 0x7f060061;
        ai[4] = 0x7f060072;
        ai[5] = 0x7f06009f;
        ai[6] = 0x7f060037;
        ai[7] = 0x7f060067;
        ai[8] = 0x7f060057;
        ai[9] = 0x7f06002d;
        ai[10] = 0x7f060083;
        ai[11] = 0x7f060033;
        ai[12] = 0x7f06002e;
        ai[13] = 0x7f060076;
        ai[14] = 0x7f060050;
        ai[15] = 0x7f060089;
        ai[16] = 0x7f060034;
        ai[17] = 0x7f06004d;
        ai[18] = 0x7f060046;
        ai[19] = 0x7f060035;
        ai[20] = 0x7f060078;
        ai[21] = 0x7f06006f;
        ai[22] = 0x7f06002b;
        ai[23] = 0x7f06006d;
        txtColor = ai;
        int ai1[] = new int[14];
        ai1[0] = 13;
        ai1[1] = 14;
        ai1[2] = 15;
        ai1[3] = 16;
        ai1[4] = 17;
        ai1[5] = 18;
        ai1[6] = 19;
        ai1[7] = 20;
        ai1[8] = 21;
        ai1[9] = 22;
        ai1[10] = 23;
        ai1[11] = 24;
        ai1[12] = 25;
        ai1[13] = 26;
        txtSize = ai1;
        int ai2[] = new int[9];
        ai2[0] = 0x7f090035;
        ai2[1] = 0x7f09003c;
        ai2[2] = 0x7f090039;
        ai2[3] = 0x7f09003b;
        ai2[4] = 0x7f09003a;
        ai2[5] = 0x7f090037;
        ai2[6] = 0x7f090036;
        ai2[7] = 0x7f090038;
        ai2[8] = 0x7f09003d;
        txt = ai2;
    }
}
