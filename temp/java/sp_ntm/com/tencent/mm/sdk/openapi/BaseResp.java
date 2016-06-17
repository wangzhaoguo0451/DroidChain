// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.openapi;

import android.os.Bundle;

public abstract class BaseResp
{
    public static interface ErrCode
    {

        public static final int ERR_AUTH_DENIED = -4;
        public static final int ERR_COMM = -1;
        public static final int ERR_OK = 0;
        public static final int ERR_SENT_FAILED = -3;
        public static final int ERR_UNSUPPORT = -5;
        public static final int ERR_USER_CANCEL = -2;
    }


    public BaseResp()
    {
    }

    abstract boolean checkArgs();

    public void fromBundle(Bundle bundle)
    {
        errCode = bundle.getInt("_wxapi_baseresp_errcode");
        errStr = bundle.getString("_wxapi_baseresp_errstr");
        transaction = bundle.getString("_wxapi_baseresp_transaction");
    }

    public abstract int getType();

    public void toBundle(Bundle bundle)
    {
        bundle.putInt("_wxapi_command_type", getType());
        bundle.putInt("_wxapi_baseresp_errcode", errCode);
        bundle.putString("_wxapi_baseresp_errstr", errStr);
        bundle.putString("_wxapi_baseresp_transaction", transaction);
    }

    public int errCode;
    public String errStr;
    public String transaction;
}
