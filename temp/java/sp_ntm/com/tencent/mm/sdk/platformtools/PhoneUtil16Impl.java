// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.telephony.*;
import android.telephony.gsm.GsmCellLocation;
import java.util.*;

class PhoneUtil16Impl
{

    PhoneUtil16Impl()
    {
        aM = new _cls1();
    }

    static TelephonyManager a(PhoneUtil16Impl phoneutil16impl)
    {
        return phoneutil16impl.aL;
    }

    static PhoneStateListener b(PhoneUtil16Impl phoneutil16impl)
    {
        return phoneutil16impl.aM;
    }

    static int c(int i)
    {
        aK = i;
        return i;
    }

    public List getCellInfoList(Context context)
    {
        LinkedList linkedlist;
        TelephonyManager telephonymanager;
        String s;
        linkedlist = new LinkedList();
        telephonymanager = (TelephonyManager)context.getSystemService("phone");
        s = telephonymanager.getNetworkOperator();
        if(s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        LinkedList linkedlist1 = linkedlist;
_L11:
        return linkedlist1;
_L2:
        String s1;
        String s2;
        s1 = "460";
        s2 = "";
        String s5;
        s1 = s.substring(0, 3);
        s5 = s.substring(3);
        s2 = s5;
_L8:
        GsmCellLocation gsmcelllocation = (GsmCellLocation)telephonymanager.getCellLocation();
        if(gsmcelllocation == null) goto _L4; else goto _L3
_L3:
        int i;
        int j;
        i = gsmcelllocation.getCid();
        j = gsmcelllocation.getLac();
        if(j >= 65535 || j == -1 || i == -1) goto _L4; else goto _L5
_L5:
        if(aK != aJ) goto _L7; else goto _L6
_L6:
        String s4 = "";
_L9:
        linkedlist.add(new PhoneUtil.CellInfo(s1, s2, String.valueOf(j), String.valueOf(i), s4, "gsm", "", "", ""));
_L4:
        List list = telephonymanager.getNeighboringCellInfo();
        if(list != null && list.size() > 0)
        {
            Iterator iterator = list.iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                NeighboringCellInfo neighboringcellinfo = (NeighboringCellInfo)iterator.next();
                if(neighboringcellinfo.getCid() != -1)
                    linkedlist.add(new PhoneUtil.CellInfo(s1, s2, "", (new StringBuilder()).append(neighboringcellinfo.getCid()).toString(), "", "gsm", "", "", ""));
            } while(true);
        }
        break MISSING_BLOCK_LABEL_332;
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L8
_L7:
        String s3 = (new StringBuilder()).append(aK).toString();
        s4 = s3;
          goto _L9
        Exception exception1;
        exception1;
        exception1.printStackTrace();
          goto _L4
        linkedlist1 = linkedlist;
        if(true) goto _L11; else goto _L10
_L10:
    }

    public void getSignalStrength(Context context)
    {
        aL = (TelephonyManager)context.getSystemService("phone");
        aL.listen(aM, 256);
    }

    private static int aJ = 10000;
    private static int aK = 10000;
    private TelephonyManager aL;
    private PhoneStateListener aM;


    private class _cls1 extends PhoneStateListener
    {

        public void onSignalStrengthChanged(int i)
        {
            super.onSignalStrengthChanged(i);
            PhoneUtil16Impl.c(-113 + i * 2);
            if(PhoneUtil16Impl.a(aN) != null)
                PhoneUtil16Impl.a(aN).listen(PhoneUtil16Impl.b(aN), 0);
        }

        final PhoneUtil16Impl aN;

        _cls1()
        {
            aN = PhoneUtil16Impl.this;
            super();
        }
    }

}
