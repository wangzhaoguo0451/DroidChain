// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

public final class MMEntryLock
{

    private MMEntryLock()
    {
    }

    public static boolean isLocked(String s)
    {
        return an.contains(s);
    }

    public static boolean lock(String s)
    {
        boolean flag;
        if(isLocked(s))
        {
            Log.d("MicroMsg.MMEntryLock", (new StringBuilder("locked-")).append(s).toString());
            flag = false;
        } else
        {
            Log.d("MicroMsg.MMEntryLock", (new StringBuilder("lock-")).append(s).toString());
            flag = an.add(s);
        }
        return flag;
    }

    public static void unlock(String s)
    {
        an.remove(s);
        Log.d("MicroMsg.MMEntryLock", (new StringBuilder("unlock-")).append(s).toString());
    }

    private static Set an = new HashSet();

}
