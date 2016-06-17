// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;

// Referenced classes of package com.tencent.mm.sdk.openapi:
//            BaseResp, WXMediaMessage, BaseReq

public final class GetMessageFromWX
{
    public static class Resp extends BaseResp
    {

        final boolean checkArgs()
        {
            boolean flag;
            if(message == null)
            {
                Log.e("MicroMsg.SDK.GetMessageFromWX.Resp", "checkArgs fail, message is null");
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
        }

        public int getType()
        {
            return 3;
        }

        public void toBundle(Bundle bundle)
        {
            super.toBundle(bundle);
            bundle.putAll(WXMediaMessage.Builder.toBundle(message));
        }

        public WXMediaMessage message;

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
            return true;
        }

        public void fromBundle(Bundle bundle)
        {
            super.fromBundle(bundle);
        }

        public int getType()
        {
            return 3;
        }

        public void toBundle(Bundle bundle)
        {
            super.toBundle(bundle);
        }

        public String username;

        public Req()
        {
        }

        public Req(Bundle bundle)
        {
            fromBundle(bundle);
        }
    }


    private GetMessageFromWX()
    {
    }
}
