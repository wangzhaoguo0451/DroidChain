// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.os.Bundle;

public abstract class BaseReq
{

    public BaseReq()
    {
    }

    abstract boolean checkArgs();

    public void fromBundle(Bundle bundle)
    {
        transaction = bundle.getString("_wxapi_basereq_transaction");
    }

    public abstract int getType();

    public void toBundle(Bundle bundle)
    {
        bundle.putInt("_wxapi_command_type", getType());
        bundle.putString("_wxapi_basereq_transaction", transaction);
    }

    public String transaction;
}
