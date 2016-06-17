// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.plugin;

import android.net.Uri;

// Referenced classes of package com.tencent.mm.sdk.plugin:
//            BaseProfile

public class Profile extends BaseProfile
{

    public Profile()
    {
    }

    protected com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo getDBInfo()
    {
        return bO;
    }

    public static final Uri CONTENT_URI = Uri.parse("content://com.tencent.mm.sdk.plugin.provider/profile");
    protected static com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo bO = BaseProfile.initAutoDBInfo(com/tencent/mm/sdk/plugin/Profile);
    public static String columns[];

    static 
    {
        String as[] = new String[11];
        as[0] = "username";
        as[1] = "bindqq";
        as[2] = "bindmobile";
        as[3] = "bindemail";
        as[4] = "alias";
        as[5] = "nickname";
        as[6] = "signature";
        as[7] = "province";
        as[8] = "city";
        as[9] = "weibo";
        as[10] = "avatar";
        columns = as;
    }
}
