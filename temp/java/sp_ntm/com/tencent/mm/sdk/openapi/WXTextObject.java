// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;

public class WXTextObject
    implements WXMediaMessage.IMediaObject
{

    public WXTextObject()
    {
        this(null);
    }

    public WXTextObject(String s)
    {
        text = s;
    }

    public boolean checkArgs()
    {
        boolean flag;
        if(text == null || text.length() == 0 || text.length() > 10240)
        {
            Log.e("MicroMsg.SDK.WXTextObject", "checkArgs fail, text is invalid");
            flag = false;
        } else
        {
            flag = true;
        }
        return flag;
    }

    public void serialize(Bundle bundle)
    {
        bundle.putString("_wxtextobject_text", text);
    }

    public int type()
    {
        return 1;
    }

    public void unserialize(Bundle bundle)
    {
        text = bundle.getString("_wxtextobject_text");
    }

    public String text;
}
