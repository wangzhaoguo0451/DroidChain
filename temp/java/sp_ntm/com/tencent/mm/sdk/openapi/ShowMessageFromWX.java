// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.os.Bundle;

// Referenced classes of package com.tencent.mm.sdk.openapi:
//            BaseResp, BaseReq, WXMediaMessage

public class ShowMessageFromWX
{
    public static class Resp extends BaseResp
    {

        final boolean checkArgs()
        {
            return true;
        }

        public int getType()
        {
            return 4;
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
                flag = false;
            else
                flag = message.checkArgs();
            return flag;
        }

        public void fromBundle(Bundle bundle)
        {
            super.fromBundle(bundle);
            message = WXMediaMessage.Builder.fromBundle(bundle);
        }

        public int getType()
        {
            return 4;
        }

        public void toBundle(Bundle bundle)
        {
            Bundle bundle1 = WXMediaMessage.Builder.toBundle(message);
            super.toBundle(bundle1);
            bundle.putAll(bundle1);
        }

        public WXMediaMessage message;

        public Req()
        {
        }

        public Req(Bundle bundle)
        {
            fromBundle(bundle);
        }
    }


    private ShowMessageFromWX()
    {
    }
}
