// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;

public class WXMusicObject
    implements WXMediaMessage.IMediaObject
{

    public WXMusicObject()
    {
    }

    public boolean checkArgs()
    {
        boolean flag = false;
        if((musicUrl == null || musicUrl.length() == 0) && (musicLowBandUrl == null || musicLowBandUrl.length() == 0))
            Log.e("MicroMsg.SDK.WXMusicObject", "both arguments are null");
        else
        if(musicUrl != null && musicUrl.length() > 10240)
            Log.e("MicroMsg.SDK.WXMusicObject", "checkArgs fail, musicUrl is too long");
        else
        if(musicLowBandUrl != null && musicLowBandUrl.length() > 10240)
            Log.e("MicroMsg.SDK.WXMusicObject", "checkArgs fail, musicLowBandUrl is too long");
        else
            flag = true;
        return flag;
    }

    public void serialize(Bundle bundle)
    {
        bundle.putString("_wxmusicobject_musicUrl", musicUrl);
        bundle.putString("_wxmusicobject_musicLowBandUrl", musicLowBandUrl);
        bundle.putString("_wxmusicobject_musicDataUrl", musicDataUrl);
        bundle.putString("_wxmusicobject_musicLowBandDataUrl", musicLowBandDataUrl);
    }

    public int type()
    {
        return 3;
    }

    public void unserialize(Bundle bundle)
    {
        musicUrl = bundle.getString("_wxmusicobject_musicUrl");
        musicLowBandUrl = bundle.getString("_wxmusicobject_musicLowBandUrl");
        musicDataUrl = bundle.getString("_wxmusicobject_musicDataUrl");
        musicLowBandDataUrl = bundle.getString("_wxmusicobject_musicLowBandDataUrl");
    }

    public String musicDataUrl;
    public String musicLowBandDataUrl;
    public String musicLowBandUrl;
    public String musicUrl;
}
