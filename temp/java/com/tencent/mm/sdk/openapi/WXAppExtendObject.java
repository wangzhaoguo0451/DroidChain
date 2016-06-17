// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;
import java.io.File;

public class WXAppExtendObject
    implements WXMediaMessage.IMediaObject
{

    public WXAppExtendObject()
    {
    }

    public WXAppExtendObject(String s, String s1)
    {
        extInfo = s;
        filePath = s1;
    }

    public WXAppExtendObject(String s, byte abyte0[])
    {
        extInfo = s;
        fileData = abyte0;
    }

    public boolean checkArgs()
    {
        boolean flag = false;
        if(extInfo != null && extInfo.length() != 0 || filePath != null && filePath.length() != 0 || fileData != null && fileData.length != 0) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.SDK.WXAppExtendObject", "checkArgs fail, all arguments is null");
_L4:
        return flag;
_L2:
        if(extInfo != null && extInfo.length() > 2048)
        {
            Log.e("MicroMsg.SDK.WXAppExtendObject", "checkArgs fail, extInfo is invalid");
            continue; /* Loop/switch isn't completed */
        }
        if(filePath != null && filePath.length() > 10240)
        {
            Log.e("MicroMsg.SDK.WXAppExtendObject", "checkArgs fail, filePath is invalid");
            continue; /* Loop/switch isn't completed */
        }
        if(filePath != null)
        {
            String s = filePath;
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
                Log.e("MicroMsg.SDK.WXAppExtendObject", "checkArgs fail, fileSize is too large");
                continue; /* Loop/switch isn't completed */
            }
        }
        if(fileData != null && fileData.length > 0xa00000)
            Log.e("MicroMsg.SDK.WXAppExtendObject", "checkArgs fail, fileData is too large");
        else
            flag = true;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void serialize(Bundle bundle)
    {
        bundle.putString("_wxappextendobject_extInfo", extInfo);
        bundle.putByteArray("_wxappextendobject_fileData", fileData);
        bundle.putString("_wxappextendobject_filePath", filePath);
    }

    public int type()
    {
        return 7;
    }

    public void unserialize(Bundle bundle)
    {
        extInfo = bundle.getString("_wxappextendobject_extInfo");
        fileData = bundle.getByteArray("_wxappextendobject_fileData");
        filePath = bundle.getString("_wxappextendobject_filePath");
    }

    public String extInfo;
    public byte fileData[];
    public String filePath;
}
