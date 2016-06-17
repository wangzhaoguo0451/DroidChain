// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.os.SystemClock;
import com.google.ads.util.a;
import java.util.LinkedList;

public final class f
{

    f()
    {
        h = false;
        i = false;
        b = new LinkedList();
        e = new LinkedList();
        a();
    }

    static long i()
    {
        return f;
    }

    final void a()
    {
        b.clear();
        c = 0L;
        d = 0L;
        e.clear();
        g = null;
        h = false;
        i = false;
    }

    public final void a(String s)
    {
        com.google.ads.util.a.d((new StringBuilder()).append("Prior ad identifier = ").append(s).toString());
        g = s;
    }

    final void b()
    {
        com.google.ads.util.a.d("Ad clicked.");
        b.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    public final void b(String s)
    {
        com.google.ads.util.a.d((new StringBuilder()).append("Prior impression ticket = ").append(s).toString());
        a = s;
    }

    final void c()
    {
        com.google.ads.util.a.d("Ad request loaded.");
        c = SystemClock.elapsedRealtime();
    }

    final void d()
    {
        com.google.ads.util.a.d("Ad request started.");
        d = SystemClock.elapsedRealtime();
        f = 1L + f;
    }

    final long e()
    {
        long l1;
        if(b.size() != e.size())
            l1 = -1L;
        else
            l1 = b.size();
        return l1;
    }

    final String f()
    {
        String s;
        if(b.isEmpty() || b.size() != e.size())
        {
            s = null;
        } else
        {
            StringBuilder stringbuilder = new StringBuilder();
            for(int i1 = 0; i1 < b.size(); i1++)
            {
                if(i1 != 0)
                    stringbuilder.append(",");
                stringbuilder.append(Long.toString(((Long)e.get(i1)).longValue() - ((Long)b.get(i1)).longValue()));
            }

            s = stringbuilder.toString();
        }
        return s;
    }

    final String g()
    {
        String s;
        if(b.isEmpty())
        {
            s = null;
        } else
        {
            StringBuilder stringbuilder = new StringBuilder();
            for(int i1 = 0; i1 < b.size(); i1++)
            {
                if(i1 != 0)
                    stringbuilder.append(",");
                stringbuilder.append(Long.toString(((Long)b.get(i1)).longValue() - c));
            }

            s = stringbuilder.toString();
        }
        return s;
    }

    final long h()
    {
        return c - d;
    }

    final String j()
    {
        return g;
    }

    final boolean k()
    {
        return h;
    }

    final void l()
    {
        com.google.ads.util.a.d("Interstitial network error.");
        h = true;
    }

    final boolean m()
    {
        return i;
    }

    final void n()
    {
        com.google.ads.util.a.d("Interstitial no fill.");
        i = true;
    }

    public final void o()
    {
        com.google.ads.util.a.d("Landing page dismissed.");
        e.add(Long.valueOf(SystemClock.elapsedRealtime()));
    }

    final String p()
    {
        return a;
    }

    private static long f = 0L;
    public String a;
    private LinkedList b;
    private long c;
    private long d;
    private LinkedList e;
    private String g;
    private boolean h;
    private boolean i;

}
