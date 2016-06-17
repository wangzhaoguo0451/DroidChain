// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.encoding;

import android.os.Handler;
import android.os.Looper;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import com.weixin.wxjx.activity.CaptureActivity;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.weixin.wxjx.encoding:
//            DecodeFormatManager, DecodeHandler

final class DecodeThread extends Thread
{

    DecodeThread(CaptureActivity captureactivity, Vector vector, String s, ResultPointCallback resultpointcallback)
    {
        activity = captureactivity;
        if(vector == null || vector.isEmpty())
        {
            vector = new Vector();
            vector.addAll(DecodeFormatManager.ONE_D_FORMATS);
            vector.addAll(DecodeFormatManager.QR_CODE_FORMATS);
            vector.addAll(DecodeFormatManager.DATA_MATRIX_FORMATS);
        }
        hints.put(DecodeHintType.POSSIBLE_FORMATS, vector);
        if(s != null)
            hints.put(DecodeHintType.CHARACTER_SET, s);
        hints.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, resultpointcallback);
    }

    Handler getHandler()
    {
        try
        {
            handlerInitLatch.await();
        }
        catch(InterruptedException interruptedexception) { }
        return handler;
    }

    public void run()
    {
        Looper.prepare();
        handler = new DecodeHandler(activity, hints);
        handlerInitLatch.countDown();
        Looper.loop();
    }

    public static final String BARCODE_BITMAP = "barcode_bitmap";
    private final CaptureActivity activity;
    private Handler handler;
    private final CountDownLatch handlerInitLatch = new CountDownLatch(1);
    private final Hashtable hints = new Hashtable(3);
}
