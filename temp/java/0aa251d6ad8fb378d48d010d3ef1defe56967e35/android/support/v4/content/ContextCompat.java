// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

// Referenced classes of package android.support.v4.content:
//            ContextCompatJellybean, ContextCompatHoneycomb

public class ContextCompat
{

    public ContextCompat()
    {
    }

    public static boolean startActivities(Context context, Intent aintent[])
    {
        return startActivities(context, aintent, null);
    }

    public static boolean startActivities(Context context, Intent aintent[], Bundle bundle)
    {
        boolean flag = true;
        int i = android.os.Build.VERSION.SDK_INT;
        if(i >= 16)
            ContextCompatJellybean.startActivities(context, aintent, bundle);
        else
        if(i >= 11)
            ContextCompatHoneycomb.startActivities(context, aintent);
        else
            flag = false;
        return flag;
    }
}
