// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.telephony.*;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import java.util.*;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

class PhoneUtil20Impl
{

    PhoneUtil20Impl()
    {
        aM = new _cls1();
    }

    static int a(PhoneUtil20Impl phoneutil20impl)
    {
        return phoneutil20impl.aO;
    }

    static TelephonyManager b(PhoneUtil20Impl phoneutil20impl)
    {
        return phoneutil20impl.aL;
    }

    static PhoneStateListener c(PhoneUtil20Impl phoneutil20impl)
    {
        return phoneutil20impl.aM;
    }

    static int d(int i)
    {
        aK = i;
        return i;
    }

    public List getCellInfoList(Context context)
    {
        TelephonyManager telephonymanager;
        LinkedList linkedlist;
        String s;
        String s1;
        telephonymanager = (TelephonyManager)context.getSystemService("phone");
        linkedlist = new LinkedList();
        s = "460";
        s1 = "";
        String s2 = telephonymanager.getNetworkOperator();
        if(s2 == null || s2.equals("")) goto _L2; else goto _L1
_L1:
        String s12;
        s = s2.substring(0, 3);
        s12 = s2.substring(3, 5);
        String s4 = s12;
_L9:
        if(telephonymanager.getPhoneType() != 2) goto _L4; else goto _L3
_L3:
        CdmaCellLocation cdmacelllocation = (CdmaCellLocation)telephonymanager.getCellLocation();
        if(cdmacelllocation == null) goto _L6; else goto _L5
_L5:
        if(aK != aJ) goto _L8; else goto _L7
_L7:
        String s10 = "";
_L11:
        if(cdmacelllocation.getBaseStationId() != -1 && cdmacelllocation.getNetworkId() != -1 && cdmacelllocation.getSystemId() != -1)
            linkedlist.add(new PhoneUtil.CellInfo(s, s4, "", "", s10, "cdma", (new StringBuilder()).append(cdmacelllocation.getBaseStationId()).toString(), (new StringBuilder()).append(cdmacelllocation.getNetworkId()).toString(), (new StringBuilder()).append(cdmacelllocation.getSystemId()).toString()));
_L6:
        LinkedList linkedlist1 = linkedlist;
_L10:
        return linkedlist1;
_L2:
        String s11;
        String s3 = telephonymanager.getSimOperator();
        if(s3 == null || s3.equals(""))
            break MISSING_BLOCK_LABEL_263;
        s = s3.substring(0, 3);
        s11 = s3.substring(3, 5);
        s1 = s11;
        s4 = s1;
          goto _L9
        Exception exception;
        exception;
        exception.printStackTrace();
        linkedlist1 = linkedlist;
          goto _L10
_L8:
        String s9 = (new StringBuilder()).append(aK).toString();
        s10 = s9;
          goto _L11
        Exception exception2;
        exception2;
        List list1;
        try
        {
            GsmCellLocation gsmcelllocation1 = (GsmCellLocation)telephonymanager.getCellLocation();
            if(gsmcelllocation1 != null)
            {
                int k = gsmcelllocation1.getCid();
                int l = gsmcelllocation1.getLac();
                if(l < 65535 && l != -1 && k != -1)
                    linkedlist.add(new PhoneUtil.CellInfo(s, s4, String.valueOf(l), String.valueOf(k), "", "gsm", "", "", ""));
            }
        }
        catch(Exception exception3)
        {
            exception3.printStackTrace();
        }
        list1 = telephonymanager.getNeighboringCellInfo();
        if(list1 != null && list1.size() > 0)
        {
            Iterator iterator1 = list1.iterator();
            while(iterator1.hasNext()) 
            {
                NeighboringCellInfo neighboringcellinfo1 = (NeighboringCellInfo)iterator1.next();
                if(neighboringcellinfo1.getCid() != -1 && neighboringcellinfo1.getLac() <= 65535 && neighboringcellinfo1.getLac() != -1)
                {
                    String s8 = (new StringBuilder()).append(-113 + 2 * neighboringcellinfo1.getRssi()).toString();
                    linkedlist.add(new PhoneUtil.CellInfo(s, s4, (new StringBuilder()).append(neighboringcellinfo1.getLac()).toString(), (new StringBuilder()).append(neighboringcellinfo1.getCid()).toString(), s8, "gsm", "", "", ""));
                }
            }
        }
          goto _L6
_L4:
        GsmCellLocation gsmcelllocation = (GsmCellLocation)telephonymanager.getCellLocation();
        if(gsmcelllocation == null) goto _L13; else goto _L12
_L12:
        int i;
        int j;
        i = gsmcelllocation.getCid();
        j = gsmcelllocation.getLac();
        if(j >= 65535 || j == -1 || i == -1) goto _L13; else goto _L14
_L14:
        if(aK != aJ) goto _L16; else goto _L15
_L15:
        String s7 = "";
_L17:
        linkedlist.add(new PhoneUtil.CellInfo(s, s4, String.valueOf(j), String.valueOf(i), s7, "gsm", "", "", ""));
_L13:
        List list = telephonymanager.getNeighboringCellInfo();
        if(list != null && list.size() > 0)
        {
            Iterator iterator = list.iterator();
            while(iterator.hasNext()) 
            {
                NeighboringCellInfo neighboringcellinfo = (NeighboringCellInfo)iterator.next();
                if(neighboringcellinfo.getCid() != -1 && neighboringcellinfo.getLac() <= 65535)
                {
                    String s5 = (new StringBuilder()).append(-113 + 2 * neighboringcellinfo.getRssi()).toString();
                    Log.v("checked", (new StringBuilder("lac:")).append(neighboringcellinfo.getLac()).append("  cid:").append(neighboringcellinfo.getCid()).append(" dbm:").append(s5).toString());
                    linkedlist.add(new PhoneUtil.CellInfo(s, s4, (new StringBuilder()).append(neighboringcellinfo.getLac()).toString(), (new StringBuilder()).append(neighboringcellinfo.getCid()).toString(), s5, "gsm", "", "", ""));
                }
            }
        }
          goto _L6
_L16:
        String s6 = (new StringBuilder()).append(aK).toString();
        s7 = s6;
          goto _L17
        Exception exception1;
        exception1;
        exception1.printStackTrace();
          goto _L13
    }

    public void getSignalStrength(Context context)
    {
        aL = (TelephonyManager)context.getSystemService("phone");
        aL.listen(aM, 256);
        aO = aL.getPhoneType();
    }

    private static int aJ = 10000;
    private static int aK = 10000;
    private TelephonyManager aL;
    private PhoneStateListener aM;
    private int aO;


    private class _cls1 extends PhoneStateListener
    {

        public void onSignalStrengthsChanged(SignalStrength signalstrength)
        {
            super.onSignalStrengthsChanged(signalstrength);
            if(PhoneUtil20Impl.a(aP) == 2)
                PhoneUtil20Impl.d(signalstrength.getCdmaDbm());
            if(PhoneUtil20Impl.a(aP) == 1)
                PhoneUtil20Impl.d(-113 + 2 * signalstrength.getGsmSignalStrength());
            if(PhoneUtil20Impl.b(aP) != null)
                PhoneUtil20Impl.b(aP).listen(PhoneUtil20Impl.c(aP), 0);
        }

        final PhoneUtil20Impl aP;

        _cls1()
        {
            aP = PhoneUtil20Impl.this;
            super();
        }
    }

}
