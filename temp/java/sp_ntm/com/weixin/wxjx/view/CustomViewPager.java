// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.view;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;

public class CustomViewPager extends ViewPager
{

    public CustomViewPager(Context context)
    {
        super(context);
    }

    public CustomViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if((getCurrentItem() == 0 || getCurrentItem() == 3) && childView != null)
            childView.requestDisallowInterceptTouchEvent(true);
        return super.onInterceptTouchEvent(motionevent);
    }

    public void setChildView(ViewGroup viewgroup)
    {
        childView = viewgroup;
    }

    private ViewGroup childView;
}
