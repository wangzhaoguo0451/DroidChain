// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.os.Process;
import java.io.File;
import java.util.Scanner;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

public final class TrafficStats
{

    private TrafficStats()
    {
    }

    public static long getMobileRx(long l)
    {
        if(bw > l)
            l = bw;
        return l;
    }

    public static long getMobileTx(long l)
    {
        if(bv > l)
            l = bv;
        return l;
    }

    public static long getWifiRx(long l)
    {
        if(by > l)
            l = by;
        return l;
    }

    public static long getWifiTx(long l)
    {
        if(bx > l)
            l = bx;
        return l;
    }

    public static void reset()
    {
        br = -1L;
        bs = -1L;
        bt = -1L;
        bu = -1L;
        update();
    }

    public static void update()
    {
        long l;
        long l1;
        long l2;
        long l3;
        l = 0L;
        l1 = 0L;
        l2 = 0L;
        l3 = 0L;
        Scanner scanner;
        scanner = new Scanner(new File((new StringBuilder("/proc/")).append(Process.myPid()).append("/net/dev").toString()));
        scanner.nextLine();
        scanner.nextLine();
_L2:
        String as[];
        int i;
        if(!scanner.hasNext())
            break; /* Loop/switch isn't completed */
        as = scanner.nextLine().split("[ :\t]+");
        if(as[0].length() != 0)
            break MISSING_BLOCK_LABEL_633;
        i = 1;
_L16:
        if(!as[0].equals("lo") && as[i + 0].startsWith("rmnet"))
        {
            l += Long.parseLong(as[i + 9]);
            l1 += Long.parseLong(as[i + 1]);
        }
        if(!as[i + 0].equals("lo") && !as[i + 0].startsWith("rmnet"))
        {
            l2 += Long.parseLong(as[i + 9]);
            l3 += Long.parseLong(as[i + 1]);
        }
        if(true) goto _L2; else goto _L1
_L1:
        scanner.close();
        if(br < 0L)
        {
            br = l;
            Object aobj6[] = new Object[1];
            aobj6[0] = Long.valueOf(l);
            Log.v("MicroMsg.SDK.TrafficStats", "fix loss newMobileTx %d", aobj6);
        }
        if(bs < 0L)
        {
            bs = l1;
            Object aobj5[] = new Object[1];
            aobj5[0] = Long.valueOf(l1);
            Log.v("MicroMsg.SDK.TrafficStats", "fix loss newMobileRx %d", aobj5);
        }
        if(bt < 0L)
        {
            bt = l2;
            Object aobj4[] = new Object[1];
            aobj4[0] = Long.valueOf(l2);
            Log.v("MicroMsg.SDK.TrafficStats", "fix loss newWifiTx %d", aobj4);
        }
        if(bu < 0L)
        {
            bu = l3;
            Object aobj3[] = new Object[1];
            aobj3[0] = Long.valueOf(l3);
            Log.v("MicroMsg.SDK.TrafficStats", "fix loss newWifiRx %d", aobj3);
        }
        if(l3 - bu < 0L)
        {
            Object aobj2[] = new Object[1];
            aobj2[0] = Long.valueOf(l3 - bu);
            Log.v("MicroMsg.SDK.TrafficStats", "minu %d", aobj2);
        }
        if(l2 - bt < 0L)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = Long.valueOf(l2 - bt);
            Log.v("MicroMsg.SDK.TrafficStats", "minu %d", aobj1);
        }
        if(l < br) goto _L4; else goto _L3
_L3:
        long l4 = l - br;
_L11:
        bv = l4;
        if(l1 < bs) goto _L6; else goto _L5
_L5:
        long l5 = l1 - bs;
_L12:
        bw = l5;
        if(l2 < bt) goto _L8; else goto _L7
_L7:
        long l6 = l2 - bt;
_L13:
        bx = l6;
        if(l3 < bu) goto _L10; else goto _L9
_L9:
        long l7 = l3 - bu;
_L14:
        by = l7;
        br = l;
        bs = l1;
        bt = l2;
        bu = l3;
_L15:
        Object aobj[] = new Object[4];
        aobj[0] = Long.valueOf(by);
        aobj[1] = Long.valueOf(bx);
        aobj[2] = Long.valueOf(bw);
        aobj[3] = Long.valueOf(bv);
        Log.d("MicroMsg.SDK.TrafficStats", "current system traffic: wifi rx/tx=%d/%d, mobile rx/tx=%d/%d", aobj);
        return;
_L4:
        l4 = l;
          goto _L11
_L6:
        l5 = l1;
          goto _L12
_L8:
        l6 = l2;
          goto _L13
_L10:
        l7 = l3;
          goto _L14
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L15
        i = 0;
          goto _L16
    }

    public static long updateMobileRx(long l)
    {
        update();
        return getMobileRx(l);
    }

    public static long updateMobileTx(long l)
    {
        update();
        return getMobileTx(l);
    }

    public static long updateWifiRx(long l)
    {
        update();
        return getWifiRx(l);
    }

    public static long updateWifiTx(long l)
    {
        update();
        return getWifiTx(l);
    }

    public static final String DEV_FILE = "/proc/self/net/dev";
    public static final String GPRSLINE = "rmnet0";
    public static final String WIFILINE = "tiwlan0";
    private static long br;
    private static long bs;
    private static long bt;
    private static long bu;
    private static long bv;
    private static long bw;
    private static long bx;
    private static long by;
}
