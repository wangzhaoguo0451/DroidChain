// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.content.Context;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

public final class MMApplicationContext
{

    private MMApplicationContext()
    {
    }

    public static Context getContext()
    {
        return q;
    }

    public static String getDefaultPreferencePath()
    {
        return (new StringBuilder()).append(am).append("_preferences").toString();
    }

    public static String getPackageName()
    {
        return am;
    }

    public static void setContext(Context context)
    {
        q = context;
        am = context.getPackageName();
        Log.d("MicroMsg.MMApplicationContext", (new StringBuilder("setup application context for package: ")).append(am).toString());
    }

    private static String am = "com.tencent.mm";
    private static Context q = null;

}
