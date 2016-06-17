// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.camera;

import android.hardware.Camera;
import android.os.Handler;

final class AutoFocusCallback
    implements android.hardware.Camera.AutoFocusCallback
{

    AutoFocusCallback()
    {
    }

    public void onAutoFocus(boolean flag, Camera camera)
    {
        if(autoFocusHandler != null)
        {
            android.os.Message message = autoFocusHandler.obtainMessage(autoFocusMessage, Boolean.valueOf(flag));
            autoFocusHandler.sendMessageDelayed(message, 1500L);
            autoFocusHandler = null;
        }
    }

    void setHandler(Handler handler, int i)
    {
        autoFocusHandler = handler;
        autoFocusMessage = i;
    }

    private static final long AUTOFOCUS_INTERVAL_MS = 1500L;
    private Handler autoFocusHandler;
    private int autoFocusMessage;
}
