// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;


// Referenced classes of package com.tencent.mm.sdk.openapi:
//            BaseReq, BaseResp

public interface IWXAPIEventHandler
{

    public abstract void onReq(BaseReq basereq);

    public abstract void onResp(BaseResp baseresp);
}
