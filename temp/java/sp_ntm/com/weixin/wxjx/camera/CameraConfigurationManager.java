// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.camera;

import android.content.Context;
import android.graphics.Point;
import android.hardware.Camera;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import java.util.regex.Pattern;

// Referenced classes of package com.weixin.wxjx.camera:
//            CameraManager

final class CameraConfigurationManager
{

    CameraConfigurationManager(Context context1)
    {
        context = context1;
    }

    private static int findBestMotZoomValue(CharSequence charsequence, int i)
    {
        int j;
        String as[];
        int k;
        int l;
        j = 0;
        as = COMMA_PATTERN.split(charsequence);
        k = as.length;
        l = 0;
_L3:
        if(l < k) goto _L2; else goto _L1
_L1:
        i = j;
_L4:
        return i;
_L2:
        String s = as[l].trim();
        double d = Double.parseDouble(s);
        int i1 = (int)(10D * d);
        if(Math.abs((double)i - d) < (double)Math.abs(i - j))
            j = i1;
        l++;
          goto _L3
        NumberFormatException numberformatexception;
        numberformatexception;
          goto _L4
    }

    private static Point findBestPreviewSizeValue(CharSequence charsequence, Point point)
    {
        int i;
        int j;
        int k;
        int l;
        String as[];
        int i1;
        i = 0;
        j = 0;
        k = 0;
        l = 0x7fffffff;
        as = COMMA_PATTERN.split(charsequence);
        i1 = as.length;
_L5:
        if(i < i1) goto _L2; else goto _L1
_L1:
        String s;
        int j1;
        NumberFormatException numberformatexception;
        int k1;
        int l1;
        int i2;
        Point point1;
        if(j > 0 && k > 0)
            point1 = new Point(j, k);
        else
            point1 = null;
        return point1;
_L2:
        s = as[i].trim();
        j1 = s.indexOf('x');
        if(j1 >= 0) goto _L4; else goto _L3
_L3:
        i++;
          goto _L5
_L4:
        k1 = Integer.parseInt(s.substring(0, j1));
        l1 = Integer.parseInt(s.substring(j1 + 1));
        i2 = Math.abs(k1 - point.x) + Math.abs(l1 - point.y);
        if(i2 != 0)
            break MISSING_BLOCK_LABEL_154;
        j = k1;
        k = l1;
          goto _L1
        numberformatexception;
          goto _L3
        if(i2 < l)
        {
            j = k1;
            k = l1;
            l = i2;
        }
          goto _L3
    }

    private static Point getCameraResolution(android.hardware.Camera.Parameters parameters, Point point)
    {
        String s = parameters.get("preview-size-values");
        if(s == null)
            s = parameters.get("preview-size-value");
        Point point1 = null;
        if(s != null)
            point1 = findBestPreviewSizeValue(s, point);
        if(point1 == null)
            point1 = new Point((point.x >> 3) << 3, (point.y >> 3) << 3);
        return point1;
    }

    public static int getDesiredSharpness()
    {
        return 30;
    }

    private void setFlash(android.hardware.Camera.Parameters parameters)
    {
        if(Build.MODEL.contains("Behold II") && CameraManager.SDK_INT == 3)
            parameters.set("flash-value", 1);
        else
            parameters.set("flash-value", 2);
        parameters.set("flash-mode", "off");
    }

    private void setZoom(android.hardware.Camera.Parameters parameters)
    {
        String s = parameters.get("zoom-supported");
        if(s == null || Boolean.parseBoolean(s)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i;
        String s1;
        i = 27;
        s1 = parameters.get("max-zoom");
        if(s1 == null)
            break MISSING_BLOCK_LABEL_60;
        double d = Double.parseDouble(s1);
        int i1 = (int)(10D * d);
        if(i > i1)
            i = i1;
_L3:
        String s2;
        s2 = parameters.get("taking-picture-zoom-max");
        if(s2 == null)
            break MISSING_BLOCK_LABEL_89;
        int l = Integer.parseInt(s2);
        if(i > l)
            i = l;
_L4:
        String s3;
        String s4;
        s3 = parameters.get("mot-zoom-values");
        if(s3 != null)
            i = findBestMotZoomValue(s3, i);
        s4 = parameters.get("mot-zoom-step");
        if(s4 == null)
            break MISSING_BLOCK_LABEL_154;
        int k;
        int j = (int)(10D * Double.parseDouble(s4.trim()));
        if(j <= 1)
            break MISSING_BLOCK_LABEL_154;
        k = i % j;
        i -= k;
_L5:
        if(s1 != null || s3 != null)
            parameters.set("zoom", String.valueOf((double)i / 10D));
        if(s2 != null)
            parameters.set("taking-picture-zoom", i);
          goto _L1
        NumberFormatException numberformatexception2;
        numberformatexception2;
          goto _L3
        NumberFormatException numberformatexception1;
        numberformatexception1;
          goto _L4
        NumberFormatException numberformatexception;
        numberformatexception;
          goto _L5
    }

    Point getCameraResolution()
    {
        return cameraResolution;
    }

    int getPreviewFormat()
    {
        return previewFormat;
    }

    String getPreviewFormatString()
    {
        return previewFormatString;
    }

    Point getScreenResolution()
    {
        return screenResolution;
    }

    void initFromCameraParameters(Camera camera)
    {
        android.hardware.Camera.Parameters parameters = camera.getParameters();
        previewFormat = parameters.getPreviewFormat();
        previewFormatString = parameters.get("preview-format");
        Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        screenResolution = new Point(display.getWidth(), display.getHeight());
        cameraResolution = getCameraResolution(parameters, screenResolution);
    }

    void setDesiredCameraParameters(Camera camera)
    {
        android.hardware.Camera.Parameters parameters = camera.getParameters();
        parameters.setPreviewSize(cameraResolution.x, cameraResolution.y);
        setFlash(parameters);
        setZoom(parameters);
        camera.setDisplayOrientation(90);
        camera.setParameters(parameters);
    }

    private static final Pattern COMMA_PATTERN = Pattern.compile(",");
    private static final int DESIRED_SHARPNESS = 30;
    private static final int TEN_DESIRED_ZOOM = 27;
    private Point cameraResolution;
    private final Context context;
    private int previewFormat;
    private String previewFormatString;
    private Point screenResolution;

}
