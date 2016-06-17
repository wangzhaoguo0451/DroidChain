// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;

// Referenced classes of package com.tencent.mm.sdk.openapi:
//            BaseResp, BaseReq

public final class SendAuth
{
    public static class Resp extends BaseResp
    {

        final boolean checkArgs()
        {
            boolean flag;
            if(state != null && state.length() > 1024)
            {
                Log.e("MicroMsg.SDK.SendAuth.Resp", "checkArgs fail, state is invalid");
                flag = false;
            } else
            {
                flag = true;
            }
            return flag;
        }

        public void fromBundle(Bundle bundle)
        {
            super.fromBundle(bundle);
            userName = bundle.getString("_wxapi_sendauth_resp_userName");
            token = bundle.getString("_wxapi_sendauth_resp_token");
            expireDate = bundle.getInt("_wxapi_sendauth_resp_expireDate", 0);
            state = bundle.getString("_wxapi_sendauth_resp_state");
        }

        public int getType()
        {
            return 1;
        }

        public void toBundle(Bundle bundle)
        {
            super.toBundle(bundle);
            bundle.putString("_wxapi_sendauth_resp_userName", userName);
            bundle.putString("_wxapi_sendauth_resp_token", token);
            bundle.putInt("_wxapi_sendauth_resp_expireDate", expireDate);
            bundle.putString("_wxapi_sendauth_resp_state", state);
        }

        public int expireDate;
        public String resultUrl;
        public String state;
        public String token;
        public String userName;

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
            boolean flag = false;
            if(scope == null || scope.length() == 0 || scope.length() > 1024)
                Log.e("MicroMsg.SDK.SendAuth.Req", "checkArgs fail, scope is invalid");
            else
            if(state != null && state.length() > 1024)
                Log.e("MicroMsg.SDK.SendAuth.Req", "checkArgs fail, state is invalid");
            else
                flag = true;
            return flag;
        }

        public void fromBundle(Bundle bundle)
        {
            super.fromBundle(bundle);
            scope = bundle.getString("_wxapi_sendauth_req_scope");
            state = bundle.getString("_wxapi_sendauth_req_state");
        }

        public int getType()
        {
            return 1;
        }

        public void toBundle(Bundle bundle)
        {
            super.toBundle(bundle);
            bundle.putString("_wxapi_sendauth_req_scope", scope);
            bundle.putString("_wxapi_sendauth_req_state", state);
        }

        public String scope;
        public String state;

        public Req()
        {
        }

        public Req(Bundle bundle)
        {
            fromBundle(bundle);
        }
    }


    private SendAuth()
    {
    }
}
