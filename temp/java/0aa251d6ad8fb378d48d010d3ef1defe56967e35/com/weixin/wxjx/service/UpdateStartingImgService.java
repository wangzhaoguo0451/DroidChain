// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.service;

import android.app.IntentService;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.weixin.wxjx.util.AndroidUtil;
import java.io.*;
import java.net.*;

public class UpdateStartingImgService extends IntentService
{

    public UpdateStartingImgService()
    {
        super("UpdateStartingImgService");
    }

    private void downLoadImg(String s)
    {
        InputStream inputstream = null;
        InputStream inputstream1 = ((HttpURLConnection)(new URL(s)).openConnection()).getInputStream();
        inputstream = inputstream1;
_L2:
        Bitmap bitmap = BitmapFactory.decodeStream(inputstream);
        if(bitmap != null)
            saveImage((new StringBuilder(String.valueOf(getFilesDir().getAbsolutePath()))).append("/startimg/").toString(), bitmap, inputstream);
        return;
        MalformedURLException malformedurlexception;
        malformedurlexception;
        malformedurlexception.printStackTrace();
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        if(true) goto _L2; else goto _L1
_L1:
    }

    private void saveImage(String s, Bitmap bitmap, InputStream inputstream)
    {
        File file1;
        FileOutputStream fileoutputstream;
        FileOutputStream fileoutputstream1;
        File file = new File(s);
        if(!file.exists())
            file.mkdirs();
        file1 = new File((new StringBuilder(String.valueOf(s))).append("welcome.png").toString());
        if(!file1.exists())
        {
            try
            {
                file1.createNewFile();
            }
            catch(IOException ioexception10)
            {
                ioexception10.printStackTrace();
            }
        } else
        {
            file1.delete();
            try
            {
                file1.createNewFile();
            }
            catch(IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        }
        fileoutputstream = null;
        fileoutputstream1 = new FileOutputStream(file1);
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, fileoutputstream1);
        fileoutputstream1.close();
        AndroidUtil.writeImgState(this, true);
        FileNotFoundException filenotfoundexception;
        Exception exception;
        IOException ioexception5;
        IOException ioexception1;
        IOException ioexception2;
        IOException ioexception3;
        IOException ioexception4;
        IOException ioexception6;
        IOException ioexception7;
        if(inputstream != null)
            try
            {
                inputstream.close();
            }
            catch(IOException ioexception9)
            {
                ioexception9.printStackTrace();
            }
        if(fileoutputstream1 == null)
            break MISSING_BLOCK_LABEL_120;
        fileoutputstream1.close();
_L1:
        return;
        filenotfoundexception;
_L4:
        file1.delete();
        filenotfoundexception.printStackTrace();
        if(inputstream != null)
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch(IOException ioexception4)
            {
                ioexception4.printStackTrace();
            }
        if(fileoutputstream != null)
            try
            {
                fileoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch(IOException ioexception3)
            {
                ioexception3.printStackTrace();
            }
          goto _L1
        ioexception5;
_L3:
        file1.delete();
        ioexception5.printStackTrace();
        if(inputstream != null)
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch(IOException ioexception7)
            {
                ioexception7.printStackTrace();
            }
        if(fileoutputstream != null)
            try
            {
                fileoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch(IOException ioexception6)
            {
                ioexception6.printStackTrace();
            }
          goto _L1
        exception;
_L2:
        if(inputstream != null)
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch(IOException ioexception2)
            {
                ioexception2.printStackTrace();
            }
        if(fileoutputstream != null)
            try
            {
                fileoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch(IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        throw exception;
        IOException ioexception8;
        ioexception8;
        ioexception8.printStackTrace();
          goto _L1
        exception;
        fileoutputstream = fileoutputstream1;
          goto _L2
        ioexception5;
        fileoutputstream = fileoutputstream1;
          goto _L3
        filenotfoundexception;
        fileoutputstream = fileoutputstream1;
          goto _L4
    }

    protected void onHandleIntent(Intent intent)
    {
        downLoadImg(intent.getStringExtra("standbyPic"));
    }

    private static final String TAG = "UpdateStartingImgService";
}
