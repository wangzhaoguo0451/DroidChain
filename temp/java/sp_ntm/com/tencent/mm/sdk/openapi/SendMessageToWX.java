// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;

// Referenced classes of package com.tencent.mm.sdk.openapi:
//            BaseResp, BaseReq, WXMediaMessage

public class SendMessageToWX
{
    public static class Resp extends BaseResp
    {

        final boolean checkArgs()
        {
            return true;
        }

        public void fromBundle(Bundle bundle)
        {
            super.fromBundle(bundle);
        }

        public int getType()
        {
            return 2;
        }

        public void toBundle(Bundle bundle)
        {
            super.toBundle(bundle);
        }

        public Resp()
        {
        }

        public Resp(Bundle bundle)
        {
            fromBundle(bundle);
        }
    }

    public static class Req extends BaseReq
    {

        final boolean checkArgs()
        {
            boolean flag;
            if(message == null)
            {
                Log.e("MicroMsg.SDK.SendMessageToWX.Req", "checkArgs fail ,message is null");
                flag = false;
            } else
            {
                flag = message.checkArgs();
            }
            return flag;
        }

        public void fromBundle(Bundle bundle)
        {
            super.fromBundle(bundle);
            message = WXMediaMessage.Builder.fromBundle(bundle);
            scene = bundle.getInt("_wxapi_sendmessagetowx_req_scene");
        }

        public int getType()
        {
            return 2;
        }

        public void toBundle(Bundle bundle)
        {
            super.toBundle(bundle);
            bundle.putAll(WXMediaMessage.Builder.toBundle(message));
            bundle.putInt("_wxapi_sendmessagetowx_req_scene", scene);
        }

        public static final int WXSceneSession = 0;
        public static final int WXSceneTimeline = 1;
        public WXMediaMessage message;
        public int scene;

        public Req()
        {
        }

        public Req(Bundle bundle)
        {
            fromBundle(bundle);
        }
    }


    private SendMessageToWX()
    {
    }
}
