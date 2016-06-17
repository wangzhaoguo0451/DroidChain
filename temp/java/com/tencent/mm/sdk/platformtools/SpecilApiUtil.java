// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.os.Build;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Util

public class SpecilApiUtil
{

    public SpecilApiUtil()
    {
    }

    public static CharSequence fixInAPI16(CharSequence charsequence)
    {
        if(charsequence != null && android.os.Build.VERSION.SDK_INT == 16 && charsequence.toString().contains("\n") && Util.nullAs(Build.MANUFACTURER, "").toLowerCase().indexOf("meizu".toLowerCase()) <= 0)
            charsequence = charsequence.toString().replace("\n", "                                                                                                                                                                                                                                                                                                                        ");
        return charsequence;
    }

    public static String killsplitAPI16(String s)
    {
        if(s != null && android.os.Build.VERSION.SDK_INT == 16 && s.toString().contains("\n") && Util.nullAs(Build.MANUFACTURER, "").toLowerCase().indexOf("meizu".toLowerCase()) <= 0)
            s = s.toString().replace("\n", " ");
        return s;
    }

    public static final String LINE_SEP = "\n";
    public static final String LINE_SEP_W = "\r\n";
    public static final String LINE_TRIM = "                                                                                                                                                                                                                                                                                                                        ";
    public static final String TAG = "MicroMsg.SpecilApiUtil";
}
