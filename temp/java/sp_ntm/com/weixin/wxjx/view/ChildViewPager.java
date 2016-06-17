// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.view;

import android.app.Activity;
import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.weixin.wxjx.activity.MainActivity;

public class ChildViewPager extends ViewPager
{

    public ChildViewPager(Context context)
    {
        super(context);
    }

    public ChildViewPager(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 32
    //                   0 32
    //                   1 51
    //                   2 38;
           goto _L1 _L1 _L2 _L3
_L1:
        return super.onTouchEvent(motionevent);
_L3:
        ((MainActivity)mActivity).stopAutoPlay();
        continue; /* Loop/switch isn't completed */
_L2:
        ((MainActivity)mActivity).startAutoPlay();
        if(true) goto _L1; else goto _L4
_L4:
    }

    public void setmActivity(Activity activity)
    {
        mActivity = activity;
    }

    private Activity mActivity;
}
