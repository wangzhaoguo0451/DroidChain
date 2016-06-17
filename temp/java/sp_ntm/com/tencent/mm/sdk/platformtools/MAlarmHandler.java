// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Util, Log

public class MAlarmHandler
{
    public static interface IBumper
    {

        public abstract void cancel();

        public abstract void prepare();
    }

    public static interface CallBack
    {

        public abstract boolean onTimerExpired();
    }


    public MAlarmHandler(CallBack callback, boolean flag)
    {
        af = 0L;
        ag = 0L;
        Assert.assertTrue("bumper not initialized", ak);
        ai = callback;
        ae = flag;
        if(ac >= 8192)
            ac = 0;
        int i = 1 + ac;
        ac = i;
        ad = i;
    }

    public static long fire()
    {
        LinkedList linkedlist;
        Iterator iterator;
        long l;
        linkedlist = new LinkedList();
        HashSet hashset = new HashSet();
        hashset.addAll(ah.keySet());
        iterator = hashset.iterator();
        l = 0x7fffffffffffffffL;
_L2:
        long l1;
        if(!iterator.hasNext())
            break; /* Loop/switch isn't completed */
        Integer integer = (Integer)iterator.next();
        MAlarmHandler malarmhandler = (MAlarmHandler)ah.get(integer);
        if(malarmhandler == null)
            break MISSING_BLOCK_LABEL_266;
        long l2 = Util.ticksToNow(malarmhandler.af);
        if(l2 < 0L)
            l2 = 0L;
        if(l2 > malarmhandler.ag)
        {
            if(!malarmhandler.ai.onTimerExpired() || !malarmhandler.ae)
                linkedlist.add(integer);
            else
                l = malarmhandler.ag;
            malarmhandler.af = Util.currentTicks();
            continue; /* Loop/switch isn't completed */
        }
        if(malarmhandler.ag - l2 >= l)
            break MISSING_BLOCK_LABEL_266;
        l1 = malarmhandler.ag - l2;
_L3:
        l = l1;
        if(true) goto _L2; else goto _L1
_L1:
        for(int i = 0; i < linkedlist.size(); i++)
            ah.remove(linkedlist.get(i));

        if(l == 0x7fffffffffffffffL && aj != null)
        {
            aj.cancel();
            Log.v("MicroMsg.MAlarmHandler", "cancel bumper for no more handler");
        }
        return l;
        l1 = l;
          goto _L3
    }

    public static void initAlarmBumper(IBumper ibumper)
    {
        ak = true;
        aj = ibumper;
    }

    protected void finalize()
    {
        stopTimer();
        super.finalize();
    }

    public void startTimer(long l)
    {
        long l1;
        Iterator iterator;
        long l2;
        ag = l;
        af = Util.currentTicks();
        l1 = ag;
        Log.d("MicroMsg.MAlarmHandler", (new StringBuilder("check need prepare: check=")).append(l1).toString());
        iterator = ah.entrySet().iterator();
        l2 = 0x7fffffffffffffffL;
_L2:
        long l3;
        if(!iterator.hasNext())
            break; /* Loop/switch isn't completed */
        MAlarmHandler malarmhandler = (MAlarmHandler)((java.util.Map.Entry)iterator.next()).getValue();
        if(malarmhandler == null)
            break MISSING_BLOCK_LABEL_229;
        long l4 = Util.ticksToNow(malarmhandler.af);
        if(l4 < 0L)
            l4 = 0L;
        if(l4 > malarmhandler.ag)
        {
            l2 = malarmhandler.ag;
            continue; /* Loop/switch isn't completed */
        }
        if(malarmhandler.ag - l4 >= l2)
            break MISSING_BLOCK_LABEL_229;
        l3 = malarmhandler.ag - l4;
_L3:
        l2 = l3;
        if(true) goto _L2; else goto _L1
_L1:
        boolean flag;
        if(l2 > l1)
            flag = true;
        else
            flag = false;
        stopTimer();
        ah.put(Integer.valueOf(ad), this);
        if(aj != null && flag)
        {
            Log.v("MicroMsg.MAlarmHandler", "prepare bumper");
            aj.prepare();
        }
        return;
        l3 = l2;
          goto _L3
    }

    public void stopTimer()
    {
        ah.remove(Integer.valueOf(ad));
    }

    public boolean stopped()
    {
        boolean flag;
        if(!ah.containsKey(Integer.valueOf(ad)))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static final long NEXT_FIRE_INTERVAL = 0x7fffffffffffffffL;
    private static int ac;
    private static Map ah = new HashMap();
    private static IBumper aj;
    private static boolean ak = false;
    private final int ad;
    private final boolean ae;
    private long af;
    private long ag;
    private final CallBack ai;

}
