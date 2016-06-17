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

public class DataAdapterJingXuan extends BaseAdapter
{
    private final class ViewHolder
    {

        public ImageView imgLog;
        public ImageView imgRecommend;
        public View list_item;
        public View pageLayout;
        final DataAdapterJingXuan this$0;
        public TextView txtPageCount;
        public Button wxAttentionButton;
        public TextView wxCategory;
        public TextView wxIntroduce;
        public TextView wxName;

        private ViewHolder()
        {
            this$0 = DataAdapterJingXuan.this;
            super();
        }

        ViewHolder(ViewHolder viewholder)
        {
            this();
        }
    }


    public DataAdapterJingXuan(Context context1)
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
        ImageView imageview;
        String s;
        Bitmap bitmap;
        final String qrCode;
        final int accountId;
        if(view == null)
        {
            viewholder = new ViewHolder(null);
            view = LayoutInflater.from(context).inflate(0x7f030006, null);
            viewholder.list_item = view.findViewById(0x7f080044);
            viewholder.imgRecommend = (ImageView)view.findViewById(0x7f080047);
            viewholder.imgLog = (ImageView)view.findViewById(0x7f080046);
            viewholder.wxName = (TextView)view.findViewById(0x7f080048);
            viewholder.wxCategory = (TextView)view.findViewById(0x7f080049);
            viewholder.wxIntroduce = (TextView)view.findViewById(0x7f08004a);
            viewholder.txtPageCount = (TextView)view.findViewById(0x7f08004d);
            viewholder.pageLayout = view.findViewById(0x7f08004c);
            viewholder.wxAttentionButton = (Button)view.findViewById(0x7f08004b);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        wxreturnlistdata = (WxReturnListData)listDatas.get(i);
        imageview = viewholder.imgLog;
        s = wxreturnlistdata.getLogoView();
        bitmap = AsyncImageLoader.getAsyncImageLoader(context).loadDrawable(viewholder.imgLog, s, new com.weixin.wxjx.http.AsyncImageLoader.ImageCallBack() {

            public void imageLoad(ImageView imageview1, Bitmap bitmap1)
            {
                if(bitmap1 != null)
                    imageview1.setImageBitmap(bitmap1);
            }

            final DataAdapterJingXuan this$0;

            
            {
                this$0 = DataAdapterJingXuan.this;
                super();
            }
        }, false);
        if(bitmap == null)
            imageview.setImageResource(0x7f02007b);
        else
            imageview.setImageBitmap(bitmap);
        qrCode = wxreturnlistdata.getQrCode();
        viewholder.wxAttentionButton.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view1)
            {
                if(AndroidUtil.checkApkExist(context, "com.tencent.mm"))
                    AndroidUtil.startAttention(context, qrCode);
                else
                    AndroidUtil.showInstallWxDialog(context);
            }

            final DataAdapterJingXuan this$0;
            private final String val$qrCode;

            
            {
                this$0 = DataAdapterJingXuan.this;
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

            final DataAdapterJingXuan this$0;
            private final int val$accountId;

            
            {
                this$0 = DataAdapterJingXuan.this;
                accountId = i;
                super();
            }
        });
        if("1".equals(wxreturnlistdata.getRecommend()))
        {
            viewholder.imgRecommend.setVisibility(0);
            viewholder.imgRecommend.setImageResource(0x7f02007e);
        } else
        if("2".equals(wxreturnlistdata.getRecommend()))
        {
            viewholder.imgRecommend.setVisibility(0);
            viewholder.imgRecommend.setImageResource(0x7f02007c);
        } else
        if("3".equals(wxreturnlistdata.getRecommend()))
        {
            viewholder.imgRecommend.setVisibility(0);
            viewholder.imgRecommend.setImageResource(0x7f02007d);
        } else
        {
            viewholder.imgRecommend.setVisibility(8);
        }
        viewholder.wxName.setText(wxreturnlistdata.getName());
        viewholder.wxCategory.setText(wxreturnlistdata.getTypeName());
        viewholder.wxIntroduce.setText(wxreturnlistdata.getIntroduce());
        if((i + 1) % 10 == 0)
        {
            viewholder.pageLayout.setVisibility(0);
            int j = (i + 1) / 10;
            String s1 = context.getResources().getString(0x7f09000b);
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(j);
            String s2 = String.format(s1, aobj);
            viewholder.txtPageCount.setText(s2);
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
