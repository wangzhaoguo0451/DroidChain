// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.content.Intent;

// Referenced classes of package com.tencent.mm.sdk.openapi:
//            IWXAPIEventHandler, BaseReq, BaseResp

public interface IWXAPI
{

    public abstract int getWXAppSupportAPI();

    public abstract boolean handleIntent(Intent intent, IWXAPIEventHandler iwxapieventhandler);

    public abstract boolean isWXAppInstalled();

    public abstract boolean isWXAppSupportAPI();

    public abstract boolean openWXApp();

    public abstract boolean registerApp(String s);

    public abstract boolean sendReq(BaseReq basereq);

    public abstract boolean sendResp(BaseResp baseresp);

    public abstract void unregisterApp();
}
