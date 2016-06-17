// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.ViewGroup;
import java.io.File;

// Referenced classes of package com.weixin.wxjx.activity:
//            MainActivity

public class LoadingActivity extends Activity
{

    public LoadingActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03000f);
        viewGroup = (ViewGroup)findViewById(0x7f08006e);
        android.graphics.Bitmap bitmap = BitmapFactory.decodeFile((new StringBuilder(String.valueOf(getFilesDir().getAbsolutePath()))).append("/startimg/").append("welcome.png").toString());
        if(bitmap != null)
        {
            BitmapDrawable bitmapdrawable = new BitmapDrawable(bitmap);
            viewGroup.setBackgroundDrawable(bitmapdrawable);
        }
        (new Handler()).postDelayed(new Runnable() {

            public void run()
            {
                startActivity(new Intent(LoadingActivity.this, com/weixin/wxjx/activity/MainActivity));
                finish();
            }

            final LoadingActivity this$0;

            
            {
                this$0 = LoadingActivity.this;
                super();
            }
        }, 3000L);
    }

    private final int SPLASH_DISPLAY_LENGHT = 3000;
    private ViewGroup viewGroup;
}
