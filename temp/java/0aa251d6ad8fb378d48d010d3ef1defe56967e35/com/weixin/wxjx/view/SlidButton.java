// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.view;

import android.content.Context;
import android.graphics.*;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

public class SlidButton extends View
    implements android.view.View.OnTouchListener
{
    public static interface OnSwitchListener
    {

        public abstract void onSwitched(boolean flag);
    }


    public SlidButton(Context context)
    {
        super(context);
        isSlipping = false;
        isSwitchOn = false;
        isSwitchListenerOn = false;
        init();
    }

    public SlidButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        isSlipping = false;
        isSwitchOn = false;
        isSwitchListenerOn = false;
        init();
    }

    private void init()
    {
        switch_on_Bkg = BitmapFactory.decodeResource(getResources(), 0x7f02005a);
        switch_off_Bkg = BitmapFactory.decodeResource(getResources(), 0x7f020059);
        slip_Btn = BitmapFactory.decodeResource(getResources(), 0x7f02005b);
        on_Rect = new Rect(switch_off_Bkg.getWidth() - slip_Btn.getWidth(), 0, switch_off_Bkg.getWidth(), slip_Btn.getHeight());
        off_Rect = new Rect(0, 0, slip_Btn.getWidth(), slip_Btn.getHeight());
        setOnTouchListener(this);
    }

    protected boolean getSwitchState()
    {
        return isSwitchOn;
    }

    protected void onDraw(Canvas canvas)
    {
        float f;
        super.onDraw(canvas);
        Matrix matrix = new Matrix();
        Paint paint = new Paint();
        if(currentX < (float)(switch_on_Bkg.getWidth() / 2) && !isSwitchOn)
            canvas.drawBitmap(switch_off_Bkg, matrix, paint);
        else
            canvas.drawBitmap(switch_on_Bkg, matrix, paint);
        if(isSlipping)
        {
            if(currentX > (float)switch_on_Bkg.getWidth())
                f = switch_on_Bkg.getWidth() - slip_Btn.getWidth();
            else
                f = currentX - (float)(slip_Btn.getWidth() / 2);
        } else
        if(isSwitchOn)
            f = on_Rect.left;
        else
            f = off_Rect.left;
        if(f >= 0.0F) goto _L2; else goto _L1
_L1:
        f = 0.0F;
_L4:
        canvas.drawBitmap(slip_Btn, f, 0.0F, paint);
        return;
_L2:
        if(f > (float)(switch_on_Bkg.getWidth() - slip_Btn.getWidth()))
            f = switch_on_Bkg.getWidth() - slip_Btn.getWidth();
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected void onMeasure(int i, int j)
    {
        setMeasuredDimension(switch_on_Bkg.getWidth(), switch_on_Bkg.getHeight());
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        boolean flag = false;
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 32
    //                   0 51
    //                   1 107
    //                   2 40;
           goto _L1 _L2 _L3 _L4
_L1:
        invalidate();
        flag = true;
_L6:
        return flag;
_L4:
        currentX = motionevent.getX();
        continue; /* Loop/switch isn't completed */
_L2:
        if(motionevent.getX() > (float)switch_on_Bkg.getWidth() || motionevent.getY() > (float)switch_on_Bkg.getHeight()) goto _L6; else goto _L5
_L5:
        isSlipping = true;
        previousX = motionevent.getX();
        currentX = previousX;
        continue; /* Loop/switch isn't completed */
_L3:
        isSlipping = false;
        boolean flag1 = isSwitchOn;
        if(motionevent.getX() >= (float)(switch_on_Bkg.getWidth() / 2))
            isSwitchOn = true;
        else
            isSwitchOn = false;
        if(isSwitchListenerOn && flag1 != isSwitchOn)
            onSwitchListener.onSwitched(isSwitchOn);
        if(true) goto _L1; else goto _L7
_L7:
    }

    public void setOnSwitchListener(OnSwitchListener onswitchlistener)
    {
        onSwitchListener = onswitchlistener;
        isSwitchListenerOn = true;
    }

    public void setSwitchState(boolean flag)
    {
        isSwitchOn = flag;
        invalidate();
    }

    private static final String TAG = "SlidButton";
    private float currentX;
    private boolean isSlipping;
    private boolean isSwitchListenerOn;
    private boolean isSwitchOn;
    private Rect off_Rect;
    private OnSwitchListener onSwitchListener;
    private Rect on_Rect;
    private float previousX;
    private Bitmap slip_Btn;
    private Bitmap switch_off_Bkg;
    private Bitmap switch_on_Bkg;
}
