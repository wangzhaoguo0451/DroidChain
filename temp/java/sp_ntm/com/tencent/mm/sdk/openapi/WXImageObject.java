// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;

public class WXImageObject
    implements WXMediaMessage.IMediaObject
{

    public WXImageObject()
    {
    }

    public WXImageObject(Bitmap bitmap)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 85, bytearrayoutputstream);
        imageData = bytearrayoutputstream.toByteArray();
        bytearrayoutputstream.close();
_L1:
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L1
    }

    public WXImageObject(byte abyte0[])
    {
        imageData = abyte0;
    }

    public boolean checkArgs()
    {
        boolean flag = false;
        if(imageData != null && imageData.length != 0 || imagePath != null && imagePath.length() != 0 || imageUrl != null && imageUrl.length() != 0) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.SDK.WXImageObject", "checkArgs fail, all arguments are null");
_L4:
        return flag;
_L2:
        if(imageData != null && imageData.length > 0xa00000)
        {
            Log.e("MicroMsg.SDK.WXImageObject", "checkArgs fail, content is too large");
            continue; /* Loop/switch isn't completed */
        }
        if(imagePath != null && imagePath.length() > 10240)
        {
            Log.e("MicroMsg.SDK.WXImageObject", "checkArgs fail, path is invalid");
            continue; /* Loop/switch isn't completed */
        }
        if(imagePath != null)
        {
            String s = imagePath;
            int i;
            if(s == null || s.length() == 0)
            {
                i = 0;
            } else
            {
                File file = new File(s);
                if(!file.exists())
                    i = 0;
                else
                    i = (int)file.length();
            }
            if(i > 0xa00000)
            {
                Log.e("MicroMsg.SDK.WXImageObject", "checkArgs fail, image content is too large");
                continue; /* Loop/switch isn't completed */
            }
        }
        if(imageUrl != null && imageUrl.length() > 10240)
            Log.e("MicroMsg.SDK.WXImageObject", "checkArgs fail, url is invalid");
        else
            flag = true;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void serialize(Bundle bundle)
    {
        bundle.putByteArray("_wximageobject_imageData", imageData);
        bundle.putString("_wximageobject_imagePath", imagePath);
        bundle.putString("_wximageobject_imageUrl", imageUrl);
    }

    public void setImagePath(String s)
    {
        imagePath = s;
    }

    public int type()
    {
        return 2;
    }

    public void unserialize(Bundle bundle)
    {
        imageData = bundle.getByteArray("_wximageobject_imageData");
        imagePath = bundle.getString("_wximageobject_imagePath");
        imageUrl = bundle.getString("_wximageobject_imageUrl");
    }

    public byte imageData[];
    public String imagePath;
    public String imageUrl;
}
