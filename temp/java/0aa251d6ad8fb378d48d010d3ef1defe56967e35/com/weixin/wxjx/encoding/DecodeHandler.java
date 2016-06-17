// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.encoding;

import android.os.*;
import com.google.zxing.*;
import com.google.zxing.common.HybridBinarizer;
import com.weixin.wxjx.activity.CaptureActivity;
import com.weixin.wxjx.camera.CameraManager;
import com.weixin.wxjx.camera.PlanarYUVLuminanceSource;
import java.util.Hashtable;

final class DecodeHandler extends Handler
{

    DecodeHandler(CaptureActivity captureactivity, Hashtable hashtable)
    {
        multiFormatReader.setHints(hashtable);
        activity = captureactivity;
    }

    private void decode(byte abyte0[], int i, int j)
    {
        com.google.zxing.Result result;
        byte abyte1[];
        int k;
        result = null;
        abyte1 = new byte[abyte0.length];
        k = 0;
_L5:
        if(k < j) goto _L2; else goto _L1
_L1:
        PlanarYUVLuminanceSource planaryuvluminancesource;
        BinaryBitmap binarybitmap;
        planaryuvluminancesource = CameraManager.get().buildLuminanceSource(abyte1, j, i);
        binarybitmap = new BinaryBitmap(new HybridBinarizer(planaryuvluminancesource));
        com.google.zxing.Result result1 = multiFormatReader.decodeWithState(binarybitmap);
        result = result1;
        multiFormatReader.reset();
_L3:
        int l;
        Exception exception;
        ReaderException readerexception;
        if(result != null)
        {
            Message message = Message.obtain(activity.getHandler(), 0x7f080003, result);
            Bundle bundle = new Bundle();
            bundle.putParcelable("barcode_bitmap", planaryuvluminancesource.renderCroppedGreyscaleBitmap());
            message.setData(bundle);
            message.sendToTarget();
        } else
        {
            Message.obtain(activity.getHandler(), 0x7f080002).sendToTarget();
        }
        return;
_L2:
        l = 0;
        do
        {
            if(l >= i)
            {
                k++;
                continue; /* Loop/switch isn't completed */
            }
            abyte1[-1 + ((j + l * j) - k)] = abyte0[l + k * i];
            l++;
        } while(true);
        readerexception;
        multiFormatReader.reset();
          goto _L3
        exception;
        multiFormatReader.reset();
        throw exception;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR lookupswitch 2: default 32
    //                   2131230721: 33
    //                   2131230727: 55;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        decode((byte[])message.obj, message.arg1, message.arg2);
        continue; /* Loop/switch isn't completed */
_L3:
        Looper.myLooper().quit();
        if(true) goto _L1; else goto _L4
_L4:
    }

    private final CaptureActivity activity;
    private final MultiFormatReader multiFormatReader = new MultiFormatReader();
}
