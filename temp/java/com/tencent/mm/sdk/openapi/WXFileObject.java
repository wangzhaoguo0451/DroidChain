// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;
import java.io.File;

public class WXFileObject
    implements WXMediaMessage.IMediaObject
{

    public WXFileObject()
    {
        fileData = null;
        filePath = null;
    }

    public WXFileObject(String s)
    {
        filePath = s;
    }

    public WXFileObject(byte abyte0[])
    {
        fileData = abyte0;
    }

    public boolean checkArgs()
    {
        boolean flag = false;
        if(fileData != null && fileData.length != 0 || filePath != null && filePath.length() != 0) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.SDK.WXFileObject", "checkArgs fail, both arguments is null");
_L4:
        return flag;
_L2:
        if(fileData != null && fileData.length > 0xa00000)
        {
            Log.e("MicroMsg.SDK.WXFileObject", "checkArgs fail, fileData is too large");
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
                Log.e("MicroMsg.SDK.WXFileObject", "checkArgs fail, fileSize is too large");
                continue; /* Loop/switch isn't completed */
            }
        }
        flag = true;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void serialize(Bundle bundle)
    {
        bundle.putByteArray("_wxfileobject_fileData", fileData);
        bundle.putString("_wxfileobject_filePath", filePath);
    }

    public void setFileData(byte abyte0[])
    {
        fileData = abyte0;
    }

    public void setFilePath(String s)
    {
        filePath = s;
    }

    public int type()
    {
        return 6;
    }

    public void unserialize(Bundle bundle)
    {
        fileData = bundle.getByteArray("_wxfileobject_fileData");
        filePath = bundle.getString("_wxfileobject_filePath");
    }

    public byte fileData[];
    public String filePath;
}
