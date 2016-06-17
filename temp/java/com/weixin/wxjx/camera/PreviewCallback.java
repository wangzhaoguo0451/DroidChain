// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.camera;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.weixin.wxjx.camera:
//            CameraConfigurationManager

final class PreviewCallback
    implements android.hardware.Camera.PreviewCallback
{

    PreviewCallback(CameraConfigurationManager cameraconfigurationmanager, boolean flag)
    {
        configManager = cameraconfigurationmanager;
        useOneShotPreviewCallback = flag;
    }

    public void onPreviewFrame(byte abyte0[], Camera camera)
    {
        Point point = configManager.getCameraResolution();
        if(!useOneShotPreviewCallback)
            camera.setPreviewCallback(null);
        if(previewHandler != null)
        {
            previewHandler.obtainMessage(previewMessage, point.x, point.y, abyte0).sendToTarget();
            previewHandler = null;
        }
    }

    void setHandler(Handler handler, int i)
    {
        previewHandler = handler;
        previewMessage = i;
    }

    private final CameraConfigurationManager configManager;
    private Handler previewHandler;
    private int previewMessage;
    private final boolean useOneShotPreviewCallback;
}
