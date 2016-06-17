// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.adapter;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.*;
import android.widget.*;
import com.weixin.wxjx.activity.AccountAttentionActivity;
import com.weixin.wxjx.bean.WxReturnListData;
import com.weixin.wxjx.http.AsyncImageLoader;
import com.weixin.wxjx.util.AndroidUtil;
import java.util.List;

public class DataAdapterSort extends BaseAdapter
{
    private final class ViewHolder
    {

        public Button btnAttention;
        public ImageView imgLog;
        public View list_item;
        public View pageLayout;
        final DataAdapterSort this$0;
        public TextView txtPageCount;
        public TextView wxCategory;
        public TextView wxIntroduce;
        public TextView wxName;
        public TextView wxRanking;

        private ViewHolder()
        {
            this$0 = DataAdapterSort.this;
            super();
        }

        ViewHolder(ViewHolder viewholder)
        {
            this();
        }
    }


    public DataAdapterSort(Context context1)
    {
        context = context1;
    }

    public void appendData(List list)
    {
        int i = 0;
        do
        {
            if(i >= list.size())
                return;
            listDatas.add((WxReturnListData)list.get(i));
            i++;
        } while(true);
    }

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

    public List getListDatas()
    {
        return listDatas;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ViewHolder viewholder;
        WxReturnListData wxreturnlistdata;
        Bitmap bitmap;
        final String qrCode;
        final int accountId;
        if(view == null)
        {
            viewholder = new ViewHolder(null);
            view = LayoutInflater.from(context).inflate(0x7f03000a, null);
            viewholder.list_item = view.findViewById(0x7f08005a);
            viewholder.imgLog = (ImageView)view.findViewById(0x7f08005b);
            viewholder.wxName = (TextView)view.findViewById(0x7f08005d);
            viewholder.wxCategory = (TextView)view.findViewById(0x7f08005e);
            viewholder.wxIntroduce = (TextView)view.findViewById(0x7f08005f);
            viewholder.wxRanking = (TextView)view.findViewById(0x7f08005c);
            viewholder.pageLayout = view.findViewById(0x7f080061);
            viewholder.txtPageCount = (TextView)view.findViewById(0x7f080062);
            viewholder.btnAttention = (Button)view.findViewById(0x7f080060);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        wxreturnlistdata = (WxReturnListData)listDatas.get(i);
        viewholder.imgLog.setImageResource(0x7f02007b);
        bitmap = AsyncImageLoader.getAsyncImageLoader(context).loadDrawable(viewholder.imgLog, wxreturnlistdata.getLogoView(), new com.weixin.wxjx.http.AsyncImageLoader.ImageCallBack() {

            public void imageLoad(ImageView imageview, Bitmap bitmap1)
            {
                if(bitmap1 != null)
                    imageview.setImageBitmap(bitmap1);
            }

            final DataAdapterSort this$0;

            
            {
                this$0 = DataAdapterSort.this;
                super();
            }
        }, false);
        if(bitmap == null)
            viewholder.imgLog.setImageResource(0x7f02007b);
        else
            viewholder.imgLog.setImageBitmap(bitmap);
        viewholder.wxName.setText(wxreturnlistdata.getName());
        viewholder.wxCategory.setText(wxreturnlistdata.getTypeName());
        viewholder.wxIntroduce.setText(wxreturnlistdata.getIntroduce());
        viewholder.wxRanking.setText(String.valueOf(i + 1));
        if(i == 0)
            viewholder.wxRanking.setBackgroundResource(0x7f02003b);
        else
        if(i == 1)
            viewholder.wxRanking.setBackgroundResource(0x7f020038);
        else
        if(i == 2)
            viewholder.wxRanking.setBackgroundResource(0x7f02003a);
        else
            viewholder.wxRanking.setBackgroundResource(0x7f020039);
        qrCode = wxreturnlistdata.getQrCode();
        viewholder.btnAttention.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view1)
            {
                if(AndroidUtil.checkApkExist(context, "com.tencent.mm"))
                    AndroidUtil.startAttention(context, qrCode);
                else
                    AndroidUtil.showInstallWxDialog(context);
            }

            final DataAdapterSort this$0;
            private final String val$qrCode;

            
            {
                this$0 = DataAdapterSort.this;
                qrCode = s;
                super();
            }
        });
        accountId = wxreturnlistdata.getAccountId();
        viewholder.list_item.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view1)
            {
                Intent intent = new Intent(context, com/weixin/wxjx/activity/AccountAttentionActivity);
                intent.putExtra("accountId", accountId);
                context.startActivity(intent);
            }

            final DataAdapterSort this$0;
            private final int val$accountId;

            
            {
                this$0 = DataAdapterSort.this;
                accountId = i;
                super();
            }
        });
        if((i + 1) % 10 == 0)
        {
            viewholder.pageLayout.setVisibility(0);
            int j = (i + 1) / 10;
            String s = context.getResources().getString(0x7f09000b);
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(j);
            String s1 = String.format(s, aobj);
            viewholder.txtPageCount.setText(s1);
        } else
        {
            viewholder.pageLayout.setVisibility(8);
        }
        return view;
    }

    public void insertData(List list)
    {
        int i = 0;
        do
        {
            if(i >= list.size())
                return;
            listDatas.add(0, (WxReturnListData)list.get(i));
            i++;
        } while(true);
    }

    public void removeAllData()
    {
        if(listDatas != null && listDatas.size() > 0)
            listDatas.clear();
    }

    public void setListDatas(List list)
    {
        listDatas = list;
    }

    private Context context;
    private List listDatas;

}
