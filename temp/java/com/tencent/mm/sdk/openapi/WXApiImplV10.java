// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.content.Context;
import android.content.Intent;
import android.content.pm.*;
import android.os.Bundle;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.sdk.MMSharedPreferences;
import com.tencent.mm.sdk.channel.MMessage;
import com.tencent.mm.sdk.channel.MMessageAct;
import com.tencent.mm.sdk.platformtools.Log;

// Referenced classes of package com.tencent.mm.sdk.openapi:
//            IWXAPI, IWXAPIEventHandler, BaseReq, BaseResp

final class WXApiImplV10
    implements IWXAPI
{

    protected WXApiImplV10(Context context, String s1)
    {
        this(context, s1, false);
    }

    protected WXApiImplV10(Context context, String s1, boolean flag)
    {
        s = false;
        q = context;
        r = s1;
        s = flag;
    }

    private boolean a(String s1)
    {
        if(s) goto _L2; else goto _L1
_L1:
        boolean flag;
        Log.d("MicroMsg.SDK.WXApiImplV10", "ignore wechat app signature validation");
        flag = true;
_L4:
        return flag;
_L2:
        PackageInfo packageinfo = q.getPackageManager().getPackageInfo(s1, 64);
        flag = a(packageinfo.signatures);
        continue; /* Loop/switch isn't completed */
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static boolean a(byte abyte0[], byte abyte1[])
    {
        boolean flag = false;
        if(abyte0 != null && abyte0.length != 0 && abyte1 != null && abyte1.length != 0) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.SDK.WXApiImplV10", "checkSumConsistent fail, invalid arguments");
_L4:
        return flag;
_L2:
        if(abyte0.length != abyte1.length)
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "checkSumConsistent fail, length is different");
            continue; /* Loop/switch isn't completed */
        }
        for(int i = 0; i < abyte0.length; i++)
            if(abyte0[i] != abyte1[i])
                continue; /* Loop/switch isn't completed */

        flag = true;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private boolean a(Signature asignature[])
    {
        boolean flag = true;
        if(s) goto _L2; else goto _L1
_L1:
        Log.d("MicroMsg.SDK.WXApiImplV10", "ignore wechat app signature validation");
_L4:
        return flag;
_L2:
        int i = asignature.length;
        int j = 0;
        do
        {
            if(j >= i)
                break;
            String s1 = asignature[j].toCharsString();
            Log.d("MicroMsg.SDK.WXApiImplV10", (new StringBuilder("check signature:")).append(s1).toString());
            if(s1.equals("308202eb30820254a00302010202044d36f7a4300d06092a864886f70d01010505003081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e74301e170d3131303131393134333933325a170d3431303131313134333933325a3081b9310b300906035504061302383631123010060355040813094775616e67646f6e673111300f060355040713085368656e7a68656e31353033060355040a132c54656e63656e7420546563686e6f6c6f6779285368656e7a68656e2920436f6d70616e79204c696d69746564313a3038060355040b133154656e63656e74204775616e677a686f7520526573656172636820616e6420446576656c6f706d656e742043656e7465723110300e0603550403130754656e63656e7430819f300d06092a864886f70d010101050003818d0030818902818100c05f34b231b083fb1323670bfbe7bdab40c0c0a6efc87ef2072a1ff0d60cc67c8edb0d0847f210bea6cbfaa241be70c86daf56be08b723c859e52428a064555d80db448cdcacc1aea2501eba06f8bad12a4fa49d85cacd7abeb68945a5cb5e061629b52e3254c373550ee4e40cb7c8ae6f7a8151ccd8df582d446f39ae0c5e930203010001300d06092a864886f70d0101050500038181009c8d9d7f2f908c42081b4c764c377109a8b2c70582422125ce545842d5f520aea69550b6bd8bfd94e987b75a3077eb04ad341f481aac266e89d3864456e69fba13df018acdc168b9a19dfd7ad9d9cc6f6ace57c746515f71234df3a053e33ba93ece5cd0fc15f3e389a3f365588a9fcb439e069d3629cd7732a13fff7b891499"))
            {
                Log.d("MicroMsg.SDK.WXApiImplV10", "pass");
                continue; /* Loop/switch isn't completed */
            }
            j++;
        } while(true);
        flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int getWXAppSupportAPI()
    {
        int i = 0;
        if(!isWXAppInstalled())
            Log.e("MicroMsg.SDK.WXApiImplV10", "open wx app failed, not installed or signature check failed");
        else
            i = (new MMSharedPreferences(q)).getInt("_build_info_sdk_int_", 0);
        return i;
    }

    public final boolean handleIntent(Intent intent, IWXAPIEventHandler iwxapieventhandler)
    {
        boolean flag;
        flag = false;
        boolean flag1;
        if(intent == null)
        {
            flag1 = false;
        } else
        {
            String s1 = intent.getStringExtra("wx_token_key");
            if(s1 == null || !s1.equals("com.tencent.mm.openapi.token"))
                flag1 = false;
            else
                flag1 = true;
        }
        if(flag1) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        String s2 = intent.getStringExtra("_mmessage_content");
        int i = intent.getIntExtra("_mmessage_sdkVersion", 0);
        String s3 = intent.getStringExtra("_mmessage_appPackage");
        if(s3 == null || s3.length() == 0)
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "invalid argument");
            continue; /* Loop/switch isn't completed */
        }
        byte abyte0[] = intent.getByteArrayExtra("_mmessage_checksum");
        StringBuffer stringbuffer = new StringBuffer();
        if(s2 != null)
            stringbuffer.append(s2);
        stringbuffer.append(i);
        stringbuffer.append(s3);
        stringbuffer.append("mMcShCsTr");
        if(a(abyte0, MD5.getMessageDigest(stringbuffer.toString().substring(1, 9).getBytes()).getBytes()))
            break; /* Loop/switch isn't completed */
        Log.e("MicroMsg.SDK.WXApiImplV10", "checksum fail");
        if(true) goto _L1; else goto _L3
_L3:
        switch(intent.getIntExtra("_wxapi_command_type", 0))
        {
        case 1: // '\001'
            iwxapieventhandler.onResp(new SendAuth.Resp(intent.getExtras()));
            flag = true;
            break;

        case 2: // '\002'
            iwxapieventhandler.onResp(new SendMessageToWX.Resp(intent.getExtras()));
            flag = true;
            break;

        case 3: // '\003'
            iwxapieventhandler.onReq(new GetMessageFromWX.Req(intent.getExtras()));
            flag = true;
            break;

        case 4: // '\004'
            iwxapieventhandler.onReq(new ShowMessageFromWX.Req(intent.getExtras()));
            flag = true;
            break;
        }
        if(true) goto _L1; else goto _L4
_L4:
    }

    public final boolean isWXAppInstalled()
    {
        boolean flag = false;
        boolean flag1;
        PackageInfo packageinfo = q.getPackageManager().getPackageInfo("com.tencent.mm", 64);
        if(packageinfo == null)
            break MISSING_BLOCK_LABEL_41;
        flag1 = a(packageinfo.signatures);
        flag = flag1;
        break MISSING_BLOCK_LABEL_41;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        return flag;
    }

    public final boolean isWXAppSupportAPI()
    {
        boolean flag;
        if(getWXAppSupportAPI() >= 0x21040001)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean openWXApp()
    {
        boolean flag = false;
        if(isWXAppInstalled()) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.SDK.WXApiImplV10", "open wx app failed, not installed or signature check failed");
_L4:
        return flag;
_L2:
        q.startActivity(q.getPackageManager().getLaunchIntentForPackage("com.tencent.mm"));
        flag = true;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Log.e("MicroMsg.SDK.WXApiImplV10", (new StringBuilder("startActivity fail, exception = ")).append(exception.getMessage()).toString());
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final boolean registerApp(String s1)
    {
        boolean flag;
        if(!a("com.tencent.mm"))
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "register app failed for wechat app signature check failed");
            flag = false;
        } else
        {
            if(s1 != null)
                r = s1;
            Log.d("MicroMsg.SDK.WXApiImplV10", (new StringBuilder("register app ")).append(q.getPackageName()).toString());
            MMessage.send(q, "com.tencent.mm", "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER", (new StringBuilder("weixin://registerapp?appid=")).append(r).toString());
            flag = true;
        }
        return flag;
    }

    public final boolean sendReq(BaseReq basereq)
    {
        boolean flag = false;
        if(!a("com.tencent.mm"))
            Log.e("MicroMsg.SDK.WXApiImplV10", "sendReq failed for wechat app signature check failed");
        else
        if(!basereq.checkArgs())
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "sendReq checkArgs fail");
        } else
        {
            Bundle bundle = new Bundle();
            basereq.toBundle(bundle);
            flag = MMessageAct.sendToWx(q, (new StringBuilder("weixin://sendreq?appid=")).append(r).toString(), bundle);
        }
        return flag;
    }

    public final boolean sendResp(BaseResp baseresp)
    {
        boolean flag = false;
        if(!a("com.tencent.mm"))
            Log.e("MicroMsg.SDK.WXApiImplV10", "sendResp failed for wechat app signature check failed");
        else
        if(!baseresp.checkArgs())
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "sendResp checkArgs fail");
        } else
        {
            Bundle bundle = new Bundle();
            baseresp.toBundle(bundle);
            flag = MMessageAct.sendToWx(q, (new StringBuilder("weixin://sendresp?appid=")).append(r).toString(), bundle);
        }
        return flag;
    }

    public final void unregisterApp()
    {
        if(!a("com.tencent.mm"))
            Log.e("MicroMsg.SDK.WXApiImplV10", "unregister app failed for wechat app signature check failed");
        else
        if(r == null || r.length() == 0)
        {
            Log.e("MicroMsg.SDK.WXApiImplV10", "unregisterApp fail, appId is empty");
        } else
        {
            Log.d("MicroMsg.SDK.WXApiImplV10", (new StringBuilder("unregister app ")).append(q.getPackageName()).toString());
            MMessage.send(q, "com.tencent.mm", "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_UNREGISTER", (new StringBuilder("weixin://unregisterapp?appid=")).append(r).toString());
        }
    }

    private Context q;
    private String r;
    private boolean s;
}
