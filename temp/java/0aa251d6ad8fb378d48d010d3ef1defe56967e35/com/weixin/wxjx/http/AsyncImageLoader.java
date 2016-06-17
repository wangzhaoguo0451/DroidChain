// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.http;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.*;
import android.widget.ImageView;
import com.weixin.wxjx.util.GlobalInfo;
import java.io.*;
import java.lang.ref.SoftReference;
import java.net.*;
import java.util.HashMap;

public class AsyncImageLoader
{
    public static interface ImageCallBack
    {

        public abstract void imageLoad(ImageView imageview, Bitmap bitmap);
    }

    final class ImageLoaderInfo
    {

        public Bitmap bitmap;
        public ImageCallBack imageCallBack;
        public ImageView imageView;
        public String imgURL;
        public boolean isAdvert;
        final AsyncImageLoader this$0;

        ImageLoaderInfo()
        {
            this$0 = AsyncImageLoader.this;
            super();
        }
    }

    private class LoaderThread extends HandlerThread
        implements android.os.Handler.Callback
    {

        private void downLoadImg(ImageLoaderInfo imageloaderinfo)
        {
            InputStream inputstream = null;
            InputStream inputstream1 = ((HttpURLConnection)(new URL(imageloaderinfo.imgURL)).openConnection()).getInputStream();
            inputstream = inputstream1;
_L1:
            Bitmap bitmap = BitmapFactory.decodeStream(inputstream);
            if(bitmap != null)
            {
                imageCache.put(imageloaderinfo.imgURL, new SoftReference(bitmap));
                imageloaderinfo.bitmap = bitmap;
                Message message = mMainThreadHandler.obtainMessage(0, imageloaderinfo);
                mMainThreadHandler.sendMessage(message);
                IOException ioexception;
                MalformedURLException malformedurlexception;
                if(Environment.getExternalStorageState().equals("mounted"))
                {
                    String s = imageloaderinfo.imgURL.substring(1 + imageloaderinfo.imgURL.lastIndexOf("/"));
                    saveImage(GlobalInfo.APK_DIRS, s, bitmap, inputstream);
                } else
                {
                    saveImage((new StringBuilder(String.valueOf(mContext.getFilesDir().getAbsolutePath()))).append("/img/").toString(), imageloaderinfo.imgURL.substring(1 + imageloaderinfo.imgURL.lastIndexOf("/")), bitmap, inputstream);
                }
            }
            return;
            malformedurlexception;
            malformedurlexception.printStackTrace();
              goto _L1
            ioexception;
            ioexception.printStackTrace();
              goto _L1
        }

        private Bitmap loadImageFromLocal(ImageLoaderInfo imageloaderinfo)
        {
            String s = imageloaderinfo.imgURL;
            String s1 = s.substring(1 + s.lastIndexOf("/"));
            Bitmap bitmap = null;
            if(Environment.getExternalStorageState().equals("mounted"))
            {
                File file = new File(GlobalInfo.APK_DIRS);
                if(file.exists())
                {
                    File afile[] = file.listFiles();
                    int i = 0;
                    while(i < afile.length && !s1.equals(afile[i].getName())) 
                        i++;
                    if(i < afile.length)
                    {
                        bitmap = BitmapFactory.decodeFile((new StringBuilder(String.valueOf(GlobalInfo.APK_DIRS))).append(s1).toString());
                        imageCache.put(s, new SoftReference(bitmap));
                    }
                }
            } else
            {
                File file1 = new File((new StringBuilder()).append(mContext.getFilesDir()).append("/img/").toString());
                if(file1.exists())
                {
                    File afile1[] = file1.listFiles();
                    int j = 0;
                    while(j < afile1.length && !s1.equals(afile1[j].getName())) 
                        j++;
                    if(j < afile1.length)
                    {
                        bitmap = BitmapFactory.decodeFile((new StringBuilder()).append(mContext.getFilesDir()).append("/img/").append(s1).toString());
                        imageCache.put(s, new SoftReference(bitmap));
                    }
                }
            }
            return bitmap;
        }

        private void saveImage(String s, String s1, Bitmap bitmap, InputStream inputstream)
        {
            File file1;
            FileOutputStream fileoutputstream;
            FileOutputStream fileoutputstream1;
            File file = new File(s);
            if(!file.exists())
                file.mkdirs();
            file1 = new File((new StringBuilder(String.valueOf(s))).append(s1).toString());
            if(!file1.exists())
                try
                {
                    file1.createNewFile();
                }
                catch(IOException ioexception11)
                {
                    ioexception11.printStackTrace();
                }
            fileoutputstream = null;
            fileoutputstream1 = new FileOutputStream(file1);
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, fileoutputstream1);
            fileoutputstream1.close();
            FileNotFoundException filenotfoundexception;
            Exception exception;
            IOException ioexception6;
            IOException ioexception;
            IOException ioexception1;
            IOException ioexception2;
            IOException ioexception3;
            IOException ioexception4;
            IOException ioexception5;
            IOException ioexception7;
            IOException ioexception8;
            NullPointerException nullpointerexception1;
            if(inputstream != null)
                try
                {
                    inputstream.close();
                }
                catch(IOException ioexception10)
                {
                    ioexception10.printStackTrace();
                }
            if(fileoutputstream1 != null)
                try
                {
                    fileoutputstream1.close();
                }
                catch(IOException ioexception9)
                {
                    ioexception9.printStackTrace();
                }
            if(file1 != null && file1.length() <= 0L)
                file1.delete();
            return;
            nullpointerexception1;
_L8:
            if(inputstream != null)
                try
                {
                    inputstream.close();
                }
                // Misplaced declaration of an exception variable
                catch(IOException ioexception1)
                {
                    ioexception1.printStackTrace();
                }
            if(fileoutputstream != null)
                try
                {
                    fileoutputstream.close();
                }
                // Misplaced declaration of an exception variable
                catch(IOException ioexception)
                {
                    ioexception.printStackTrace();
                }
            if(file1 != null && file1.length() <= 0L)
                file1.delete();
            break MISSING_BLOCK_LABEL_137;
            filenotfoundexception;
_L6:
            filenotfoundexception.printStackTrace();
            if(inputstream != null)
                try
                {
                    inputstream.close();
                }
                // Misplaced declaration of an exception variable
                catch(IOException ioexception5)
                {
                    ioexception5.printStackTrace();
                }
            if(fileoutputstream != null)
                try
                {
                    fileoutputstream.close();
                }
                // Misplaced declaration of an exception variable
                catch(IOException ioexception4)
                {
                    ioexception4.printStackTrace();
                }
            if(file1 != null && file1.length() <= 0L)
                file1.delete();
            break MISSING_BLOCK_LABEL_137;
            ioexception6;
_L4:
            ioexception6.printStackTrace();
            if(inputstream != null)
                try
                {
                    inputstream.close();
                }
                // Misplaced declaration of an exception variable
                catch(IOException ioexception8)
                {
                    ioexception8.printStackTrace();
                }
            if(fileoutputstream != null)
                try
                {
                    fileoutputstream.close();
                }
                // Misplaced declaration of an exception variable
                catch(IOException ioexception7)
                {
                    ioexception7.printStackTrace();
                }
            if(file1 != null && file1.length() <= 0L)
                file1.delete();
            break MISSING_BLOCK_LABEL_137;
            exception;
_L2:
            if(inputstream != null)
                try
                {
                    inputstream.close();
                }
                // Misplaced declaration of an exception variable
                catch(IOException ioexception3)
                {
                    ioexception3.printStackTrace();
                }
            if(fileoutputstream != null)
                try
                {
                    fileoutputstream.close();
                }
                // Misplaced declaration of an exception variable
                catch(IOException ioexception2)
                {
                    ioexception2.printStackTrace();
                }
            if(file1 != null && file1.length() <= 0L)
                file1.delete();
            throw exception;
            exception;
            fileoutputstream = fileoutputstream1;
            if(true) goto _L2; else goto _L1
_L1:
            ioexception6;
            fileoutputstream = fileoutputstream1;
            if(true) goto _L4; else goto _L3
_L3:
            filenotfoundexception;
            fileoutputstream = fileoutputstream1;
            if(true) goto _L6; else goto _L5
_L5:
            NullPointerException nullpointerexception;
            nullpointerexception;
            fileoutputstream = fileoutputstream1;
            if(true) goto _L8; else goto _L7
_L7:
        }

        public boolean handleMessage(Message message)
        {
            ImageLoaderInfo imageloaderinfo = (ImageLoaderInfo)message.obj;
            Bitmap bitmap = loadImageFromLocal(imageloaderinfo);
            if(bitmap != null)
            {
                imageloaderinfo.bitmap = bitmap;
                Message message1 = mMainThreadHandler.obtainMessage(0, imageloaderinfo);
                mMainThreadHandler.sendMessage(message1);
            } else
            {
                downLoadImg(imageloaderinfo);
            }
            return true;
        }

        public void requestLoading(ImageLoaderInfo imageloaderinfo)
        {
            if(mLoaderThreadHandler == null)
                mLoaderThreadHandler = new Handler(getLooper(), this);
            Message message = mLoaderThreadHandler.obtainMessage(0, imageloaderinfo);
            mLoaderThreadHandler.sendMessage(message);
        }

        private Handler mLoaderThreadHandler;
        final AsyncImageLoader this$0;

        public LoaderThread()
        {
            this$0 = AsyncImageLoader.this;
            super("LoaderThread");
        }
    }


    private AsyncImageLoader(Context context)
    {
        imageCache = null;
        mContext = context;
        imageCache = new HashMap();
    }

    public static AsyncImageLoader getAsyncImageLoader(Context context)
    {
        if(asyncImageLoader == null)
            asyncImageLoader = new AsyncImageLoader(context);
        return asyncImageLoader;
    }

    public Bitmap loadDrawable(ImageView imageview, String s, ImageCallBack imagecallback, boolean flag)
    {
        if(!imageCache.containsKey(s)) goto _L2; else goto _L1
_L1:
        Bitmap bitmap = (Bitmap)((SoftReference)imageCache.get(s)).get();
        if(bitmap == null) goto _L2; else goto _L3
_L3:
        return bitmap;
_L2:
        ImageLoaderInfo imageloaderinfo = new ImageLoaderInfo();
        imageloaderinfo.imageCallBack = imagecallback;
        imageloaderinfo.imgURL = s;
        imageloaderinfo.imageView = imageview;
        imageloaderinfo.isAdvert = flag;
        if(mLoaderThread == null)
        {
            mLoaderThread = new LoaderThread();
            mLoaderThread.start();
        }
        mLoaderThread.requestLoading(imageloaderinfo);
        bitmap = null;
        if(true) goto _L3; else goto _L4
_L4:
    }

    public void stop()
    {
        if(mLoaderThread != null)
        {
            mLoaderThread.quit();
            mLoaderThread = null;
        }
        imageCache.clear();
    }

    private static final String TAG = "AsyncImageLoader";
    private static AsyncImageLoader asyncImageLoader;
    private HashMap imageCache;
    private Context mContext;
    private LoaderThread mLoaderThread;
    private final Handler mMainThreadHandler = new Handler() {

        public void handleMessage(Message message)
        {
            ImageLoaderInfo imageloaderinfo = (ImageLoaderInfo)message.obj;
            imageloaderinfo.imageCallBack.imageLoad(imageloaderinfo.imageView, imageloaderinfo.bitmap);
        }

        final AsyncImageLoader this$0;

            
            {
                this$0 = AsyncImageLoader.this;
                super();
            }
    };



}
