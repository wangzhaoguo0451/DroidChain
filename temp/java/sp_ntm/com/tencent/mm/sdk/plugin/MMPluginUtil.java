// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.plugin;

import android.content.Context;

// Referenced classes of package com.tencent.mm.sdk.plugin:
//            MMPluginAPIImpl, IMMPluginAPI

public class MMPluginUtil
{

    public MMPluginUtil()
    {
    }

    public static IMMPluginAPI queryPluginMgr(Context context)
    {
        return new MMPluginAPIImpl(context);
    }
}
