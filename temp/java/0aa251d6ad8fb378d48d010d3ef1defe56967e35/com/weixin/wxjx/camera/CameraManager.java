// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.camera;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Handler;
import android.view.SurfaceHolder;
import java.io.IOException;

// Referenced classes of package com.weixin.wxjx.camera:
//            CameraConfigurationManager, PreviewCallback, AutoFocusCallback, PlanarYUVLuminanceSource, 
//            FlashlightManager

public final class CameraManager
{

    private CameraManager(Context context1)
    {
        context = context1;
        configManager = new CameraConfigurationManager(context1);
        boolean flag;
        if(Integer.parseInt(android.os.Build.VERSION.SDK) > 3)
            flag = true;
        else
            flag = false;
        useOneShotPreviewCallback = flag;
        previewCallback = new PreviewCallback(configManager, useOneShotPreviewCallback);
    }

    public static CameraManager get()
    {
        return cameraManager;
    }

    public static void init(Context context1)
    {
        if(cameraManager == null)
            cameraManager = new CameraManager(context1);
    }

    public PlanarYUVLuminanceSource buildLuminanceSource(byte abyte0[], int i, int j)
    {
        Rect rect;
        int k;
        String s;
        rect = getFramingRectInPreview();
        k = configManager.getPreviewFormat();
        s = configManager.getPreviewFormatString();
        k;
        JVM INSTR tableswitch 16 17: default 48
    //                   16 93
    //                   17 93;
           goto _L1 _L2 _L2
_L1:
        if(!"yuv420p".equals(s)) goto _L4; else goto _L3
_L3:
        PlanarYUVLuminanceSource planaryuvluminancesource = new PlanarYUVLuminanceSource(abyte0, i, j, rect.left, rect.top, rect.width(), rect.height());
_L5:
        return planaryuvluminancesource;
_L2:
        planaryuvluminancesource = new PlanarYUVLuminanceSource(abyte0, i, j, rect.left, rect.top, rect.width(), rect.height());
        if(true) goto _L5; else goto _L4
_L4:
        throw new IllegalArgumentException((new StringBuilder("Unsupported picture format: ")).append(k).append('/').append(s).toString());
    }

    public void closeDriver()
    {
        if(camera != null)
        {
            FlashlightManager.disableFlashlight();
            camera.release();
            camera = null;
        }
    }

    public Context getContext()
    {
        return context;
    }

    public Rect getFramingRect()
    {
        Point point = configManager.getScreenResolution();
        if(framingRect != null) goto _L2; else goto _L1
_L1:
        if(camera != null) goto _L4; else goto _L3
_L3:
        Rect rect = null;
_L6:
        return rect;
_L4:
        int i = (3 * point.x) / 4;
        int j;
        int k;
        int l;
        if(i < 240)
            i = 240;
        else
        if(i > 480)
            i = 480;
        j = (3 * point.y) / 4;
        if(j < 240)
            j = 240;
        else
        if(j > 360)
            j = 360;
        k = (point.x - i) / 2;
        l = (point.y - j) / 2;
        framingRect = new Rect(k, l, k + i, l + j);
_L2:
        rect = framingRect;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public Rect getFramingRectInPreview()
    {
        if(framingRectInPreview == null)
        {
            Rect rect = new Rect(getFramingRect());
            Point point = configManager.getCameraResolution();
            Point point1 = configManager.getScreenResolution();
            rect.left = (rect.left * point.y) / point1.x;
            rect.right = (rect.right * point.y) / point1.x;
            rect.top = (rect.top * point.x) / point1.y;
            rect.bottom = (rect.bottom * point.x) / point1.y;
            framingRectInPreview = rect;
        }
        return framingRectInPreview;
    }

    public void openDriver(SurfaceHolder surfaceholder)
        throws IOException
    {
        if(camera == null)
        {
            camera = Camera.open();
            if(camera == null)
                throw new IOException();
            camera.setPreviewDisplay(surfaceholder);
            if(!initialized)
            {
                initialized = true;
                configManager.initFromCameraParameters(camera);
            }
            configManager.setDesiredCameraParameters(camera);
            FlashlightManager.enableFlashlight();
        }
    }

    public void requestAutoFocus(Handler handler, int i)
    {
        if(camera != null && previewing)
        {
            autoFocusCallback.setHandler(handler, i);
            camera.autoFocus(autoFocusCallback);
        }
    }

    public void requestPreviewFrame(Handler handler, int i)
    {
        if(camera != null && previewing)
        {
            previewCallback.setHandler(handler, i);
            if(useOneShotPreviewCallback)
                camera.setOneShotPreviewCallback(previewCallback);
            else
                camera.setPreviewCallback(previewCallback);
        }
    }

    public void startPreview()
    {
        if(camera != null && !previewing)
        {
            camera.startPreview();
            previewing = true;
        }
    }

    public void stopPreview()
    {
        if(camera != null && previewing)
        {
            if(!useOneShotPreviewCallback)
                camera.setPreviewCallback(null);
            camera.stopPreview();
            previewCallback.setHandler(null, 0);
            autoFocusCallback.setHandler(null, 0);
            previewing = false;
        }
    }

    private static final int MAX_FRAME_HEIGHT = 360;
    private static final int MAX_FRAME_WIDTH = 480;
    private static final int MIN_FRAME_HEIGHT = 240;
    private static final int MIN_FRAME_WIDTH = 240;
    static final int SDK_INT;
    private static CameraManager cameraManager;
    private final AutoFocusCallback autoFocusCallback = new AutoFocusCallback();
    private Camera camera;
    private final CameraConfigurationManager configManager;
    private final Context context;
    private Rect framingRect;
    private Rect framingRectInPreview;
    private boolean initialized;
    private final PreviewCallback previewCallback;
    private boolean previewing;
    private final boolean useOneShotPreviewCallback;

    static 
    {
        int j = Integer.parseInt(android.os.Build.VERSION.SDK);
        int i = j;
_L2:
        SDK_INT = i;
        return;
        NumberFormatException numberformatexception;
        numberformatexception;
        i = 10000;
        if(true) goto _L2; else goto _L1
_L1:
    }
}
