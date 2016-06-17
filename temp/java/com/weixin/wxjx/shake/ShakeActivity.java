// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.shake;

import android.app.Activity;
import android.content.res.Resources;
import android.media.AudioManager;
import android.media.SoundPool;
import android.os.Bundle;
import android.os.Vibrator;
import android.view.View;
import android.view.animation.*;
import android.widget.*;
import com.weixin.wxjx.adapter.DataAdapterJingXuan;
import com.weixin.wxjx.http.HttpRequestShakeData;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.weixin.wxjx.shake:
//            ShakeListener

public class ShakeActivity extends Activity
    implements com.weixin.wxjx.http.HttpRequestShakeData.OnLoadShakeDataListener
{

    public ShakeActivity()
    {
        mShakeListener = null;
        soundMap = new HashMap();
        oldVolume = 0;
        shakeListener = new ShakeListener.OnShakeListener() {

            public void onShake()
            {
                startAnim();
                startPlay();
                startVibrato();
            }

            final ShakeActivity this$0;

            
            {
                this$0 = ShakeActivity.this;
                super();
            }
        };
    }

    private void getShakeData(int i)
    {
        mProgressBar.setVisibility(0);
        HttpRequestShakeData httprequestshakedata = new HttpRequestShakeData(this, adapter);
        httprequestshakedata.setRequestCode(i);
        httprequestshakedata.setLoadShakeDataListener(this);
        httprequestshakedata.getShakeData();
    }

    private void initView()
    {
        amAudioManager = (AudioManager)getSystemService("audio");
        mVibrator = (Vibrator)getSystemService("vibrator");
        adapter = new DataAdapterJingXuan(this);
        soundPool = new SoundPool(2, 3, 5);
        soundMap.put("start", Integer.valueOf(soundPool.load(this, 0x7f050003, 1)));
        soundMap.put("end", Integer.valueOf(soundPool.load(this, 0x7f050002, 1)));
        mProgressBar = findViewById(0x7f0800af);
        mImgUp = (RelativeLayout)findViewById(0x7f0800ac);
        mImgDn = (RelativeLayout)findViewById(0x7f0800ad);
        mTitle = (RelativeLayout)findViewById(0x7f0800a9);
        mDrawer = (SlidingDrawer)findViewById(0x7f0800b0);
        mDrawerBtn = (Button)findViewById(0x7f0800b2);
        listView = (ListView)findViewById(0x7f0800b3);
        listView.setAdapter(adapter);
        mDrawer.setOnDrawerOpenListener(new android.widget.SlidingDrawer.OnDrawerOpenListener() {

            public void onDrawerOpened()
            {
                mDrawerBtn.setBackgroundDrawable(getResources().getDrawable(0x7f020054));
                TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, -1F);
                translateanimation.setDuration(200L);
                translateanimation.setFillAfter(true);
                mTitle.startAnimation(translateanimation);
                mShakeListener.stop();
            }

            final ShakeActivity this$0;

            
            {
                this$0 = ShakeActivity.this;
                super();
            }
        });
        mDrawer.setOnDrawerCloseListener(new android.widget.SlidingDrawer.OnDrawerCloseListener() {

            public void onDrawerClosed()
            {
                mDrawerBtn.setBackgroundDrawable(getResources().getDrawable(0x7f020053));
                TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, -1F, 1, 0.0F);
                translateanimation.setDuration(200L);
                translateanimation.setFillAfter(false);
                mTitle.startAnimation(translateanimation);
                mShakeListener.start();
            }

            final ShakeActivity this$0;

            
            {
                this$0 = ShakeActivity.this;
                super();
            }
        });
        mShakeListener = new ShakeListener(this);
        mShakeListener.setOnShakeListener(shakeListener);
    }

    private void restoreVolume()
    {
        amAudioManager.setStreamVolume(3, oldVolume, 8);
    }

    private void setVolume()
    {
        oldVolume = amAudioManager.getStreamVolume(3);
        int i = amAudioManager.getStreamMaxVolume(3);
        amAudioManager.setStreamVolume(3, i / 2, 8);
    }

    private void startPlay()
    {
        setVolume();
        soundPool.play(((Integer)soundMap.get("start")).intValue(), 1.0F, 1.0F, 0, 0, 1.0F);
        restoreVolume();
    }

    private void startPlayEnd()
    {
        setVolume();
        soundPool.play(((Integer)soundMap.get("end")).intValue(), 1.0F, 1.0F, 0, 0, 1.0F);
        restoreVolume();
    }

    public void onBackPressed()
    {
        if(mDrawer.isOpened())
        {
            mDrawer.close();
            mShakeListener.start();
        } else
        {
            super.onBackPressed();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03001a);
        initView();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if(mShakeListener != null)
            mShakeListener.stop();
        if(soundMap != null)
            soundMap.clear();
        if(soundPool != null)
            soundPool.release();
    }

    public void onLoadShakeDataSuccess(boolean flag, int i, int j)
    {
        if(!flag) goto _L2; else goto _L1
_L1:
        mShakeListener.setShaked(false);
        mProgressBar.setVisibility(8);
        if(i != 3) goto _L4; else goto _L3
_L3:
        Toast.makeText(this, "\u6CA1\u6709\u641C\u7D22\u5230\u7ED3\u679C\uFF01", 0).show();
_L6:
        return;
_L4:
        if(i == 0)
        {
            startPlayEnd();
            mDrawer.open();
            mShakeListener.stop();
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if(i == 2)
        {
            mShakeListener.setShaked(false);
            mProgressBar.setVisibility(8);
            Toast.makeText(this, 0x7f090029, 0).show();
        } else
        if(i == 1)
            if(j == 1000)
            {
                getShakeData(1001);
            } else
            {
                mShakeListener.setShaked(false);
                mProgressBar.setVisibility(8);
                Toast.makeText(this, 0x7f090028, 0).show();
            }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public void shake_activity_back(View view)
    {
        finish();
    }

    public void startAnim()
    {
        AnimationSet animationset = new AnimationSet(true);
        TranslateAnimation translateanimation = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, -0.5F);
        translateanimation.setDuration(1000L);
        TranslateAnimation translateanimation1 = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, 0.5F);
        translateanimation1.setDuration(1000L);
        translateanimation1.setStartOffset(1000L);
        animationset.addAnimation(translateanimation);
        animationset.addAnimation(translateanimation1);
        mImgUp.startAnimation(animationset);
        AnimationSet animationset1 = new AnimationSet(true);
        TranslateAnimation translateanimation2 = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, 0.5F);
        translateanimation2.setDuration(1000L);
        TranslateAnimation translateanimation3 = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 0.0F, 1, -0.5F);
        translateanimation3.setDuration(1000L);
        translateanimation3.setStartOffset(1000L);
        animationset1.addAnimation(translateanimation2);
        animationset1.addAnimation(translateanimation3);
        mImgDn.startAnimation(animationset1);
        animationset1.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            public void onAnimationEnd(Animation animation)
            {
                getShakeData(1000);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            final ShakeActivity this$0;

            
            {
                this$0 = ShakeActivity.this;
                super();
            }
        });
    }

    public void startVibrato()
    {
        Vibrator vibrator = mVibrator;
        long al[] = new long[4];
        al[0] = 500L;
        al[1] = 200L;
        al[2] = 500L;
        al[3] = 200L;
        vibrator.vibrate(al, -1);
    }

    private static final String SHAKE_END = "end";
    private static final String SHAKE_START = "start";
    private static final String TAG = "ShakeActivity";
    private DataAdapterJingXuan adapter;
    private AudioManager amAudioManager;
    private ListView listView;
    private SlidingDrawer mDrawer;
    private Button mDrawerBtn;
    private RelativeLayout mImgDn;
    private RelativeLayout mImgUp;
    private View mProgressBar;
    ShakeListener mShakeListener;
    private RelativeLayout mTitle;
    Vibrator mVibrator;
    private int oldVolume;
    private ShakeListener.OnShakeListener shakeListener;
    private Map soundMap;
    private SoundPool soundPool;




}
