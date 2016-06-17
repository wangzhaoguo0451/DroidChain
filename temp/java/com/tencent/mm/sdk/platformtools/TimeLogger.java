// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.os.SystemClock;
import java.util.ArrayList;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

public class TimeLogger
{

    public TimeLogger(String s, String s1)
    {
        reset(s, s1);
    }

    public void addSplit(String s)
    {
        if(!bo)
        {
            long l = SystemClock.elapsedRealtime();
            bp.add(Long.valueOf(l));
            bq.add(s);
        }
    }

    public void dumpToLog()
    {
        if(!bo)
        {
            Log.d(bm, (new StringBuilder()).append(bn).append(": begin").toString());
            long l = ((Long)bp.get(0)).longValue();
            int i = 1;
            long l1;
            long l2;
            for(l1 = l; i < bp.size(); l1 = l2)
            {
                l2 = ((Long)bp.get(i)).longValue();
                String s = (String)bq.get(i);
                long l3 = ((Long)bp.get(i - 1)).longValue();
                Log.d(bm, (new StringBuilder()).append(bn).append(":      ").append(l2 - l3).append(" ms, ").append(s).toString());
                i++;
            }

            Log.d(bm, (new StringBuilder()).append(bn).append(": end, ").append(l1 - l).append(" ms").toString());
        }
    }

    public void reset()
    {
        bo = false;
        if(!bo)
        {
            if(bp == null)
            {
                bp = new ArrayList();
                bq = new ArrayList();
            } else
            {
                bp.clear();
                bq.clear();
            }
            addSplit(null);
        }
    }

    public void reset(String s, String s1)
    {
        bm = s;
        bn = s1;
        reset();
    }

    private String bm;
    private String bn;
    private boolean bo;
    ArrayList bp;
    ArrayList bq;
}
