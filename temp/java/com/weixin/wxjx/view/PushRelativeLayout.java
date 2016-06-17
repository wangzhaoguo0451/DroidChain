// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

public class PushRelativeLayout extends RelativeLayout
{

    public PushRelativeLayout(Context context)
    {
        super(context);
    }

    public PushRelativeLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return true;
    }
}
