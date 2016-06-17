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
import com.weixin.wxjx.bean.*;
import com.weixin.wxjx.http.AsyncImageLoader;
import java.util.*;

public class DataAdapterAll extends BaseAdapter
{
    public static interface CategoryDataLoadCallback
    {

        public abstract void onLoadCategoryData(String s, int i);
    }

    private final class ViewHolder
    {

        final DataAdapterAll this$0;
        public TextView wxCategory;
        public TextView wxCategoryCount;
        public LinearLayout wxLayout[];
        public LinearLayout wxMoreLayout;

        private ViewHolder()
        {
            this$0 = DataAdapterAll.this;
            super();
            wxLayout = new LinearLayout[4];
        }

        ViewHolder(ViewHolder viewholder)
        {
            this();
        }
    }


    public DataAdapterAll(Context context, ListView listview)
    {
        mAllowLoad = true;
        imageCallBack = new com.weixin.wxjx.http.AsyncImageLoader.ImageCallBack() {

            public void imageLoad(ImageView imageview, Bitmap bitmap)
            {
                if(bitmap != null)
                    imageview.setImageBitmap(bitmap);
            }

            final DataAdapterAll this$0;

            
            {
                this$0 = DataAdapterAll.this;
                super();
            }
        };
        scrollListener = new android.widget.AbsListView.OnScrollListener() {

            public void onScroll(AbsListView abslistview, int i, int j, int k)
            {
            }

            public void onScrollStateChanged(AbsListView abslistview, int i)
            {
                i;
                JVM INSTR tableswitch 0 2: default 28
            //                           0 40
            //                           1 58
            //                           2 29;
                   goto _L1 _L2 _L3 _L4
_L1:
                return;
_L4:
                mAllowLoad = false;
                continue; /* Loop/switch isn't completed */
_L2:
                mAllowLoad = true;
                loadImage();
                continue; /* Loop/switch isn't completed */
_L3:
                mAllowLoad = false;
                if(true) goto _L1; else goto _L5
_L5:
            }

            final DataAdapterAll this$0;

            
            {
                this$0 = DataAdapterAll.this;
                super();
            }
        };
        viewMap = new HashMap();
        mContext = context;
        listView = listview;
        listView.setOnScrollListener(scrollListener);
    }

    private void setItem(int i, LinearLayout alinearlayout[], List list)
    {
        HashMap hashmap = new HashMap();
        int j = 0;
        do
        {
            if(j >= list.size())
            {
                viewMap.put(Integer.valueOf(i), hashmap);
                return;
            }
            final int accountId = ((WxRecommendData)list.get(j)).getAccountId();
            alinearlayout[j].setOnClickListener(new android.view.View.OnClickListener() {

                public void onClick(View view)
                {
                    Intent intent = new Intent(mContext, com/weixin/wxjx/activity/AccountAttentionActivity);
                    intent.putExtra("accountId", accountId);
                    mContext.startActivity(intent);
                }

                final DataAdapterAll this$0;
                private final int val$accountId;

            
            {
                this$0 = DataAdapterAll.this;
                accountId = i;
                super();
            }
            });
            ImageView imageview = (ImageView)alinearlayout[j].getChildAt(0);
            TextView textview = (TextView)alinearlayout[j].getChildAt(1);
            String s = ((WxRecommendData)list.get(j)).getLogoView();
            hashmap.put(s, imageview);
            if(mAllowLoad)
            {
                Bitmap bitmap = AsyncImageLoader.getAsyncImageLoader(mContext).loadDrawable(imageview, s, imageCallBack, false);
                if(bitmap == null)
                    imageview.setImageResource(0x7f02007b);
                else
                    imageview.setImageBitmap(bitmap);
            } else
            {
                imageview.setImageResource(0x7f02007b);
            }
            textview.setText(((WxRecommendData)list.get(j)).getName());
            j++;
        } while(true);
    }

    public void appendData(List list)
    {
        int i = 0;
        do
        {
            if(i >= list.size())
                return;
            listDatas.add((WxReturnAllClass)list.get(i));
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
        WxReturnAllClass wxreturnallclass;
        final int categoryId;
        final String categoryTitle;
        String s;
        String s1;
        if(view == null)
        {
            viewholder = new ViewHolder(null);
            view = LayoutInflater.from(mContext).inflate(0x7f030008, null);
            viewholder.wxCategory = (TextView)view.findViewById(0x7f08004f);
            viewholder.wxCategoryCount = (TextView)view.findViewById(0x7f080051);
            viewholder.wxMoreLayout = (LinearLayout)view.findViewById(0x7f080050);
            viewholder.wxLayout[0] = (LinearLayout)view.findViewById(0x7f080053);
            viewholder.wxLayout[1] = (LinearLayout)view.findViewById(0x7f080054);
            viewholder.wxLayout[2] = (LinearLayout)view.findViewById(0x7f080055);
            viewholder.wxLayout[3] = (LinearLayout)view.findViewById(0x7f080056);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        wxreturnallclass = (WxReturnAllClass)listDatas.get(i);
        categoryId = wxreturnallclass.getWxTypeData().getTypeId();
        categoryTitle = wxreturnallclass.getWxTypeData().getTypeName();
        viewholder.wxCategory.setText(categoryTitle);
        s = String.valueOf(wxreturnallclass.getWxTypeData().getCount());
        s1 = (new StringBuilder(String.valueOf(mContext.getResources().getString(0x7f090008)))).append("( ").append(s).append(" )").toString();
        viewholder.wxCategoryCount.setText(s1);
        viewholder.wxMoreLayout.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view1)
            {
                if(callback != null)
                    callback.onLoadCategoryData(categoryTitle, categoryId);
            }

            final DataAdapterAll this$0;
            private final int val$categoryId;
            private final String val$categoryTitle;

            
            {
                this$0 = DataAdapterAll.this;
                categoryTitle = s;
                categoryId = i;
                super();
            }
        });
        setItem(i, viewholder.wxLayout, wxreturnallclass.getWxRecommendDatas());
        return view;
    }

    public void insertData(List list)
    {
        int i = 0;
        do
        {
            if(i >= list.size())
                return;
            listDatas.add(0, (WxReturnAllClass)list.get(i));
            i++;
        } while(true);
    }

    public void loadImage()
    {
        int j;
        int k;
        int i = listView.getFirstVisiblePosition();
        j = listView.getLastVisiblePosition();
        if(j >= getCount())
            j = -1 + getCount();
        k = i;
_L2:
        if(k > j)
            return;
        Iterator iterator = ((HashMap)viewMap.get(Integer.valueOf(k))).entrySet().iterator();
        do
        {
label0:
            {
                if(iterator.hasNext())
                    break label0;
                k++;
            }
            if(true)
                continue;
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s = (String)entry.getKey();
            ImageView imageview = (ImageView)entry.getValue();
            Bitmap bitmap = AsyncImageLoader.getAsyncImageLoader(mContext).loadDrawable(imageview, s, imageCallBack, false);
            if(bitmap == null)
                imageview.setImageResource(0x7f02007b);
            else
                imageview.setImageBitmap(bitmap);
        } while(true);
        if(true) goto _L2; else goto _L1
_L1:
    }

    public void setCallback(CategoryDataLoadCallback categorydataloadcallback)
    {
        callback = categorydataloadcallback;
    }

    public void setListDatas(List list)
    {
        listDatas = list;
    }

    private static final String TAG = "DataAdapterAll";
    private CategoryDataLoadCallback callback;
    private com.weixin.wxjx.http.AsyncImageLoader.ImageCallBack imageCallBack;
    private List listDatas;
    private ListView listView;
    private boolean mAllowLoad;
    private Context mContext;
    private android.widget.AbsListView.OnScrollListener scrollListener;
    private HashMap viewMap;



}
