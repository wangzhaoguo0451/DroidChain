// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import com.google.ads.util.a;
import java.lang.ref.WeakReference;

public final class x
    implements Runnable
{

    public x(d d1)
    {
        a = new WeakReference(d1);
    }

    public final void run()
    {
        d d1 = (d)a.get();
        if(d1 == null)
            com.google.ads.util.a.a("The ad must be gone, so cancelling the refresh timer.");
        else
            d1.w();
    }

    private WeakReference a;
}
