// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.media.ExifInterface;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.widget.ListView;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log, AnimationHelperImpl22, AnimationHelperImpl21below, SmoothScrollToPosition22, 
//            SmoothScrollToPosition21below

public class BackwardSupportUtil
{
    public static class ExifHelper
    {

        public static int getExifOrientation(String s)
        {
            int i;
            i = 0;
            ExifInterface exifinterface;
            int j;
            try
            {
                exifinterface = new ExifInterface(s);
            }
            catch(IOException ioexception)
            {
                Log.e("MicroMsg.SDK.BackwardSupportUtil", (new StringBuilder("cannot read exif")).append(ioexception).toString());
                exifinterface = null;
            }
            if(exifinterface == null) goto _L2; else goto _L1
_L1:
            j = exifinterface.getAttributeInt("Orientation", -1);
            if(j == -1) goto _L2; else goto _L3
_L3:
            j;
            JVM INSTR tableswitch 3 8: default 68
        //                       3 105
        //                       4 68
        //                       5 68
        //                       6 99
        //                       7 68
        //                       8 112;
               goto _L2 _L4 _L2 _L2 _L5 _L2 _L6
_L2:
            return i;
_L5:
            i = 90;
            continue; /* Loop/switch isn't completed */
_L4:
            i = 180;
            continue; /* Loop/switch isn't completed */
_L6:
            i = 270;
            if(true) goto _L2; else goto _L7
_L7:
        }

        public ExifHelper()
        {
        }
    }

    public static class AnimationHelper
    {
        public static interface IHelper
        {

            public abstract void cancelAnimation(View view, Animation animation);
        }


        public static void cancelAnimation(View view, Animation animation)
        {
            if(android.os.Build.VERSION.SDK_INT >= 8)
                (new AnimationHelperImpl22()).cancelAnimation(view, animation);
            else
                (new AnimationHelperImpl21below()).cancelAnimation(view, animation);
        }

        public static void overridePendingTransition(Activity activity, int i, int j)
        {
            activity.overridePendingTransition(i, j);
        }

        public AnimationHelper()
        {
        }
    }

    public static class SmoothScrollFactory
    {
        public static interface IScroll
        {

            public abstract void doScroll(ListView listview);

            public abstract void doScroll(ListView listview, int i);
        }


        public static void scrollTo(ListView listview, int i)
        {
            if(android.os.Build.VERSION.SDK_INT >= 8)
                (new SmoothScrollToPosition22()).doScroll(listview, i);
            else
                (new SmoothScrollToPosition21below()).doScroll(listview, i);
        }

        public static void scrollToTop(ListView listview)
        {
            if(android.os.Build.VERSION.SDK_INT >= 8)
                (new SmoothScrollToPosition22()).doScroll(listview);
            else
                (new SmoothScrollToPosition21below()).doScroll(listview);
        }

        public SmoothScrollFactory()
        {
        }
    }

    public static class BitmapFactory
    {

        public static Bitmap decodeFile(String s, float f)
        {
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            float f1 = 160F * f;
            options.inDensity = (int)f1;
            Bitmap bitmap = android.graphics.BitmapFactory.decodeFile(s, options);
            if(bitmap != null)
                bitmap.setDensity((int)f1);
            return bitmap;
        }

        public static Bitmap decodeStream(InputStream inputstream)
        {
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inDensity = 160;
            options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
            return android.graphics.BitmapFactory.decodeStream(inputstream, null, options);
        }

        public static Bitmap decodeStream(InputStream inputstream, float f)
        {
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inDensity = (int)(160F * f);
            options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
            return android.graphics.BitmapFactory.decodeStream(inputstream, null, options);
        }

        public static int fromDPToPix(Context context, float f)
        {
            DisplayMetrics displaymetrics = new DisplayMetrics();
            ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
            return Math.round((f * (float)displaymetrics.densityDpi) / 160F);
        }

        public static Bitmap getBitmapFromURL(String s)
        {
            Bitmap bitmap;
            Log.d("MicroMsg.SDK.BackwardSupportUtil", (new StringBuilder("get bitmap from url:")).append(s).toString());
            HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
            httpurlconnection.setDoInput(true);
            httpurlconnection.connect();
            InputStream inputstream = httpurlconnection.getInputStream();
            bitmap = decodeStream(inputstream);
            inputstream.close();
_L2:
            return bitmap;
            IOException ioexception;
            ioexception;
            Log.e("MicroMsg.SDK.BackwardSupportUtil", "get bitmap from url failed");
            ioexception.printStackTrace();
            bitmap = null;
            if(true) goto _L2; else goto _L1
_L1:
            Exception exception;
            exception;
            throw exception;
        }

        public static String getDisplayDensityType(Context context)
        {
            DisplayMetrics displaymetrics = context.getResources().getDisplayMetrics();
            Configuration configuration = context.getResources().getConfiguration();
            String s;
            StringBuilder stringbuilder;
            String s1;
            if(displaymetrics.density < 1.0F)
                s = (new StringBuilder()).append("").append("LDPI").toString();
            else
            if(displaymetrics.density >= 1.5F)
                s = (new StringBuilder()).append("").append("HDPI").toString();
            else
                s = (new StringBuilder()).append("").append("MDPI").toString();
            stringbuilder = (new StringBuilder()).append(s);
            if(configuration.orientation == 2)
                s1 = "_L";
            else
                s1 = "_P";
            return stringbuilder.append(s1).toString();
        }

        public BitmapFactory()
        {
        }
    }


    public BackwardSupportUtil()
    {
    }

    public static final int ANDROID_API_LEVEL_16 = 16;
}
