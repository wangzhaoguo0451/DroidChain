// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.mm.sdk.plugin.IMMPluginAPI;
import com.tencent.mm.sdk.plugin.MMPluginUtil;

// Referenced classes of package com.tencent.mm.sdk:
//            MMSharedPreferences

public final class MMAppMgr
{

    private MMAppMgr()
    {
    }

    public static void activate(boolean flag)
    {
    }

    public static IMMPluginAPI getPluginMgr(Context context)
    {
        return MMPluginUtil.queryPluginMgr(context);
    }

    public static SharedPreferences getSharedPreferences(Context context, int i)
    {
        return new MMSharedPreferences(context);
    }
}
