// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.activity;

import android.app.Activity;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.*;
import android.view.*;
import android.widget.Button;
import android.widget.Toast;
import com.google.zxing.Result;
import com.weixin.wxjx.camera.CameraManager;
import com.weixin.wxjx.encoding.CaptureActivityHandler;
import com.weixin.wxjx.encoding.InactivityTimer;
import com.weixin.wxjx.view.ViewfinderView;
import java.io.IOException;
import java.util.Vector;

public class CaptureActivity extends Activity
    implements android.view.SurfaceHolder.Callback
{

    public CaptureActivity()
    {
    }

    private void initBeepSound()
    {
        AssetFileDescriptor assetfiledescriptor;
        if(!playBeep || mediaPlayer != null)
            break MISSING_BLOCK_LABEL_100;
        setVolumeControlStream(3);
        mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioStreamType(3);
        mediaPlayer.setOnCompletionListener(beepListener);
        assetfiledescriptor = getResources().openRawResourceFd(0x7f050000);
        mediaPlayer.setDataSource(assetfiledescriptor.getFileDescriptor(), assetfiledescriptor.getStartOffset(), assetfiledescriptor.getLength());
        assetfiledescriptor.close();
        mediaPlayer.setVolume(0.1F, 0.1F);
        mediaPlayer.prepare();
_L1:
        return;
        IOException ioexception;
        ioexception;
        mediaPlayer = null;
          goto _L1
    }

    private void initCamera(SurfaceHolder surfaceholder)
    {
        CameraManager.get().openDriver(surfaceholder);
        if(handler == null)
            handler = new CaptureActivityHandler(this, decodeFormats, characterSet);
_L2:
        return;
        IOException ioexception;
        ioexception;
        continue; /* Loop/switch isn't completed */
        RuntimeException runtimeexception;
        runtimeexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private void playBeepSoundAndVibrate()
    {
        if(playBeep && mediaPlayer != null)
            mediaPlayer.start();
        if(vibrate)
            ((Vibrator)getSystemService("vibrator")).vibrate(200L);
    }

    public void drawViewfinder()
    {
        viewfinderView.drawViewfinder();
    }

    public Handler getHandler()
    {
        return handler;
    }

    public ViewfinderView getViewfinderView()
    {
        return viewfinderView;
    }

    public void handleDecode(Result result, Bitmap bitmap)
    {
        inactivityTimer.onActivity();
        playBeepSoundAndVibrate();
        String s = result.getText();
        if(s.equals(""))
        {
            Toast.makeText(this, "Scan failed!", 0).show();
        } else
        {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putString("result", s);
            intent.putExtras(bundle);
            setResult(-1, intent);
        }
        finish();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030004);
        CameraManager.init(getApplication());
        viewfinderView = (ViewfinderView)findViewById(0x7f08003c);
        cancelScanButton = (Button)findViewById(0x7f08003d);
        hasSurface = false;
        inactivityTimer = new InactivityTimer(this);
    }

    protected void onDestroy()
    {
        inactivityTimer.shutdown();
        super.onDestroy();
    }

    protected void onPause()
    {
        super.onPause();
        if(handler != null)
        {
            handler.quitSynchronously();
            handler = null;
        }
        CameraManager.get().closeDriver();
    }

    protected void onResume()
    {
        super.onResume();
        SurfaceHolder surfaceholder = ((SurfaceView)findViewById(0x7f08003b)).getHolder();
        if(hasSurface)
        {
            initCamera(surfaceholder);
        } else
        {
            surfaceholder.addCallback(this);
            surfaceholder.setType(3);
        }
        decodeFormats = null;
        characterSet = null;
        playBeep = true;
        if(((AudioManager)getSystemService("audio")).getRingerMode() != 2)
            playBeep = false;
        initBeepSound();
        vibrate = true;
        cancelScanButton.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view)
            {
                finish();
            }

            final CaptureActivity this$0;

            
            {
                this$0 = CaptureActivity.this;
                super();
            }
        });
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        if(!hasSurface)
        {
            hasSurface = true;
            initCamera(surfaceholder);
        }
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        hasSurface = false;
    }

    private static final float BEEP_VOLUME = 0.1F;
    private static final long VIBRATE_DURATION = 200L;
    private final android.media.MediaPlayer.OnCompletionListener beepListener = new android.media.MediaPlayer.OnCompletionListener() {

        public void onCompletion(MediaPlayer mediaplayer)
        {
            mediaplayer.seekTo(0);
        }

        final CaptureActivity this$0;

            
            {
                this$0 = CaptureActivity.this;
                super();
            }
    };
    private Button cancelScanButton;
    private String characterSet;
    private Vector decodeFormats;
    private CaptureActivityHandler handler;
    private boolean hasSurface;
    private InactivityTimer inactivityTimer;
    private MediaPlayer mediaPlayer;
    private boolean playBeep;
    private boolean vibrate;
    private ViewfinderView viewfinderView;
}
