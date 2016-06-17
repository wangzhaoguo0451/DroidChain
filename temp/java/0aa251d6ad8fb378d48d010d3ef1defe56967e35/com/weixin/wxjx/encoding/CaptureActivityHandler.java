// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.encoding;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.*;
import com.google.zxing.Result;
import com.weixin.wxjx.activity.CaptureActivity;
import com.weixin.wxjx.camera.CameraManager;
import com.weixin.wxjx.view.ViewfinderResultPointCallback;
import java.util.Vector;

// Referenced classes of package com.weixin.wxjx.encoding:
//            DecodeThread

public final class CaptureActivityHandler extends Handler
{
    private static final class State extends Enum
    {

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(com/weixin/wxjx/encoding/CaptureActivityHandler$State, s);
        }

        public static State[] values()
        {
            State astate[] = ENUM$VALUES;
            int i = astate.length;
            State astate1[] = new State[i];
            System.arraycopy(astate, 0, astate1, 0, i);
            return astate1;
        }

        public static final State DONE;
        private static final State ENUM$VALUES[];
        public static final State PREVIEW;
        public static final State SUCCESS;

        static 
        {
            PREVIEW = new State("PREVIEW", 0);
            SUCCESS = new State("SUCCESS", 1);
            DONE = new State("DONE", 2);
            State astate[] = new State[3];
            astate[0] = PREVIEW;
            astate[1] = SUCCESS;
            astate[2] = DONE;
            ENUM$VALUES = astate;
        }

        private State(String s, int i)
        {
            super(s, i);
        }
    }


    public CaptureActivityHandler(CaptureActivity captureactivity, Vector vector, String s)
    {
        activity = captureactivity;
        decodeThread = new DecodeThread(captureactivity, vector, s, new ViewfinderResultPointCallback(captureactivity.getViewfinderView()));
        decodeThread.start();
        state = State.SUCCESS;
        CameraManager.get().startPreview();
        restartPreviewAndDecode();
    }

    private void restartPreviewAndDecode()
    {
        if(state == State.SUCCESS)
        {
            state = State.PREVIEW;
            CameraManager.get().requestPreviewFrame(decodeThread.getHandler(), 0x7f080001);
            CameraManager.get().requestAutoFocus(this, 0x7f080000);
            activity.drawViewfinder();
        }
    }

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 2131230720 2131230729: default 60
    //                   2131230720 61
    //                   2131230721 60
    //                   2131230722 145
    //                   2131230723 90
    //                   2131230724 60
    //                   2131230725 60
    //                   2131230726 196
    //                   2131230727 60
    //                   2131230728 83
    //                   2131230729 170;
           goto _L1 _L2 _L1 _L3 _L4 _L1 _L1 _L5 _L1 _L6 _L7
_L1:
        return;
_L2:
        if(state == State.PREVIEW)
            CameraManager.get().requestAutoFocus(this, 0x7f080000);
        continue; /* Loop/switch isn't completed */
_L6:
        restartPreviewAndDecode();
        continue; /* Loop/switch isn't completed */
_L4:
        state = State.SUCCESS;
        Bundle bundle = message.getData();
        Bitmap bitmap;
        if(bundle == null)
            bitmap = null;
        else
            bitmap = (Bitmap)bundle.getParcelable("barcode_bitmap");
        activity.handleDecode((Result)message.obj, bitmap);
        continue; /* Loop/switch isn't completed */
_L3:
        state = State.PREVIEW;
        CameraManager.get().requestPreviewFrame(decodeThread.getHandler(), 0x7f080001);
        continue; /* Loop/switch isn't completed */
_L7:
        activity.setResult(-1, (Intent)message.obj);
        activity.finish();
        continue; /* Loop/switch isn't completed */
_L5:
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse((String)message.obj));
        intent.addFlags(0x80000);
        activity.startActivity(intent);
        if(true) goto _L1; else goto _L8
_L8:
    }

    public void quitSynchronously()
    {
        state = State.DONE;
        CameraManager.get().stopPreview();
        Message.obtain(decodeThread.getHandler(), 0x7f080007).sendToTarget();
        try
        {
            decodeThread.join();
        }
        catch(InterruptedException interruptedexception) { }
        removeMessages(0x7f080003);
        removeMessages(0x7f080002);
    }

    private final CaptureActivity activity;
    private final DecodeThread decodeThread;
    private State state;
}
