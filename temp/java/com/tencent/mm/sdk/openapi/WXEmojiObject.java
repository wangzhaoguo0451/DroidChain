// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;
import java.io.File;

public class WXEmojiObject
    implements WXMediaMessage.IMediaObject
{

    public WXEmojiObject()
    {
        emojiData = null;
        emojiPath = null;
    }

    public WXEmojiObject(String s)
    {
        emojiPath = s;
    }

    public WXEmojiObject(byte abyte0[])
    {
        emojiData = abyte0;
    }

    public boolean checkArgs()
    {
        boolean flag = false;
        if(emojiData != null && emojiData.length != 0 || emojiPath != null && emojiPath.length() != 0) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.SDK.WXEmojiObject", "checkArgs fail, both arguments is null");
_L4:
        return flag;
_L2:
        if(emojiData != null && emojiData.length > 0xa00000)
        {
            Log.e("MicroMsg.SDK.WXEmojiObject", "checkArgs fail, emojiData is too large");
            continue; /* Loop/switch isn't completed */
        }
        if(emojiPath != null)
        {
            String s = emojiPath;
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
                Log.e("MicroMsg.SDK.WXEmojiObject", "checkArgs fail, emojiSize is too large");
                continue; /* Loop/switch isn't completed */
            }
        }
        flag = true;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void serialize(Bundle bundle)
    {
        bundle.putByteArray("_wxemojiobject_emojiData", emojiData);
        bundle.putString("_wxemojiobject_emojiPath", emojiPath);
    }

    public void setEmojiData(byte abyte0[])
    {
        emojiData = abyte0;
    }

    public void setEmojiPath(String s)
    {
        emojiPath = s;
    }

    public int type()
    {
        return 8;
    }

    public void unserialize(Bundle bundle)
    {
        emojiData = bundle.getByteArray("_wxemojiobject_emojiData");
        emojiPath = bundle.getString("_wxemojiobject_emojiPath");
    }

    public byte emojiData[];
    public String emojiPath;
}
