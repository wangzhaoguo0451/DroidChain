// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;
import java.io.ByteArrayOutputStream;

public final class WXMediaMessage
{
    public static class Builder
    {

        public static WXMediaMessage fromBundle(Bundle bundle)
        {
            WXMediaMessage wxmediamessage;
            String s;
            wxmediamessage = new WXMediaMessage();
            wxmediamessage.sdkVer = bundle.getInt("_wxobject_sdkVer");
            wxmediamessage.title = bundle.getString("_wxobject_title");
            wxmediamessage.description = bundle.getString("_wxobject_description");
            wxmediamessage.thumbData = bundle.getByteArray("_wxobject_thumbdata");
            s = bundle.getString("_wxobject_identifier_");
            if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
            WXMediaMessage wxmediamessage1 = wxmediamessage;
_L4:
            return wxmediamessage1;
_L2:
            wxmediamessage.mediaObject = (IMediaObject)Class.forName(s).newInstance();
            wxmediamessage.mediaObject.unserialize(bundle);
            wxmediamessage1 = wxmediamessage;
            continue; /* Loop/switch isn't completed */
            Exception exception;
            exception;
            exception.printStackTrace();
            Log.e("MicroMsg.SDK.WXMediaMessage", (new StringBuilder("get media object from bundle failed: unknown ident ")).append(s).toString());
            wxmediamessage1 = wxmediamessage;
            if(true) goto _L4; else goto _L3
_L3:
        }

        public static Bundle toBundle(WXMediaMessage wxmediamessage)
        {
            Bundle bundle = new Bundle();
            bundle.putInt("_wxobject_sdkVer", wxmediamessage.sdkVer);
            bundle.putString("_wxobject_title", wxmediamessage.title);
            bundle.putString("_wxobject_description", wxmediamessage.description);
            bundle.putByteArray("_wxobject_thumbdata", wxmediamessage.thumbData);
            if(wxmediamessage.mediaObject != null)
            {
                bundle.putString("_wxobject_identifier_", wxmediamessage.mediaObject.getClass().getName());
                wxmediamessage.mediaObject.serialize(bundle);
            }
            return bundle;
        }

        public static final String KEY_IDENTIFIER = "_wxobject_identifier_";

        public Builder()
        {
        }
    }

    public static interface IMediaObject
    {

        public abstract boolean checkArgs();

        public abstract void serialize(Bundle bundle);

        public abstract int type();

        public abstract void unserialize(Bundle bundle);

        public static final int TYPE_APPDATA = 7;
        public static final int TYPE_EMOJI = 8;
        public static final int TYPE_FILE = 6;
        public static final int TYPE_IMAGE = 2;
        public static final int TYPE_MUSIC = 3;
        public static final int TYPE_TEXT = 1;
        public static final int TYPE_UNKNOWN = 0;
        public static final int TYPE_URL = 5;
        public static final int TYPE_VIDEO = 4;
    }


    public WXMediaMessage()
    {
        this(null);
    }

    public WXMediaMessage(IMediaObject imediaobject)
    {
        mediaObject = imediaobject;
    }

    final boolean checkArgs()
    {
        boolean flag = false;
        if(getType() == 8 && (thumbData == null || thumbData.length == 0))
            Log.e("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, thumbData should not be null when send emoji");
        else
        if(thumbData != null && thumbData.length > 32768)
            Log.e("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, thumbData is invalid");
        else
        if(title != null && title.length() > 512)
            Log.e("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, title is invalid");
        else
        if(description != null && description.length() > 1024)
            Log.e("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, description is invalid");
        else
        if(mediaObject == null)
            Log.e("MicroMsg.SDK.WXMediaMessage", "checkArgs fail, mediaObject is null");
        else
            flag = mediaObject.checkArgs();
        return flag;
    }

    public final int getType()
    {
        int i;
        if(mediaObject == null)
            i = 0;
        else
            i = mediaObject.type();
        return i;
    }

    public final void setThumbImage(Bitmap bitmap)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 85, bytearrayoutputstream);
        thumbData = bytearrayoutputstream.toByteArray();
        bytearrayoutputstream.close();
_L1:
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        Log.e("MicroMsg.SDK.WXMediaMessage", "put thumb failed");
          goto _L1
    }

    public static final String ACTION_WXAPPMESSAGE = "com.tencent.mm.sdk.openapi.Intent.ACTION_WXAPPMESSAGE";
    public String description;
    public IMediaObject mediaObject;
    public int sdkVer;
    public byte thumbData[];
    public String title;
}
