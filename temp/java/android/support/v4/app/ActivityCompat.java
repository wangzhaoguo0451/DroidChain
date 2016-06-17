// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package android.support.v4.app;

import android.app.Activity;
import android.support.v4.content.ContextCompat;

// Referenced classes of package android.support.v4.app:
//            ActivityCompatHoneycomb

public class ActivityCompat extends ContextCompat
{

    public ActivityCompat()
    {
    }

    public static boolean invalidateOptionsMenu(Activity activity)
    {
        boolean flag;
        if(android.os.Build.VERSION.SDK_INT >= 11)
        {
            ActivityCompatHoneycomb.invalidateOptionsMenu(activity);
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }
}
