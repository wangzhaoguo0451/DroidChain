// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import java.util.List;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            PhoneUtil20Impl, PhoneUtil16Impl

public final class PhoneUtil
{
    public static class MacInfo
    {

        public String dbm;
        public String mac;

        public MacInfo(String s, String s1)
        {
            mac = s;
            dbm = s1;
        }
    }

    public static class CellInfo
    {

        public static final int MAX_CID = 65535;
        public static final int MAX_LAC = 65535;
        public String cellid;
        public String dbm;
        public String lac;
        public String mcc;
        public String mnc;
        public String networkId;
        public String stationId;
        public String systemId;
        public String type;

        public CellInfo(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
                String s7, String s8)
        {
            mcc = s;
            mnc = s1;
            lac = s2;
            type = s5;
            cellid = s3;
            stationId = s6;
            networkId = s7;
            systemId = s8;
            dbm = s4;
        }
    }


    private PhoneUtil()
    {
    }

    public static List getCellInfoList(Context context)
    {
        List list;
        if(android.os.Build.VERSION.SDK_INT >= 5)
            list = (new PhoneUtil20Impl()).getCellInfoList(context);
        else
            list = (new PhoneUtil16Impl()).getCellInfoList(context);
        return list;
    }

    public static String getCellXml(List list)
    {
        String s;
        if(list == null || list.size() <= 0)
        {
            s = "";
        } else
        {
            s = "";
            int i = 0;
            while(i < list.size()) 
            {
                String s1 = (new StringBuilder()).append(s).append("<cell ").toString();
                String s2 = (new StringBuilder()).append(s1).append("mcc=\"").append(((CellInfo)list.get(i)).mcc).append("\" ").toString();
                String s3 = (new StringBuilder()).append(s2).append("mnc=\"").append(((CellInfo)list.get(i)).mnc).append("\" ").toString();
                String s4 = (new StringBuilder()).append(s3).append("lac=\"").append(((CellInfo)list.get(i)).lac).append("\" ").toString();
                String s5 = (new StringBuilder()).append(s4).append("type=\"").append(((CellInfo)list.get(i)).type).append("\" ").toString();
                String s6 = (new StringBuilder()).append(s5).append("stationId=\"").append(((CellInfo)list.get(i)).stationId).append("\" ").toString();
                String s7 = (new StringBuilder()).append(s6).append("networkId=\"").append(((CellInfo)list.get(i)).networkId).append("\" ").toString();
                String s8 = (new StringBuilder()).append(s7).append("systemId=\"").append(((CellInfo)list.get(i)).systemId).append("\" ").toString();
                String s9 = (new StringBuilder()).append(s8).append("dbm=\"").append(((CellInfo)list.get(i)).dbm).append("\" ").toString();
                String s10 = (new StringBuilder()).append(s9).append(" >").toString();
                String s11 = (new StringBuilder()).append(s10).append(((CellInfo)list.get(i)).cellid).toString();
                String s12 = (new StringBuilder()).append(s11).append("</cell>").toString();
                i++;
                s = s12;
            }
        }
        return s;
    }

    public static String getMacXml(List list)
    {
        String s = "";
        if(list == null || list.size() <= 0)
        {
            s = "";
        } else
        {
            int i = 0;
            while(i < list.size()) 
            {
                String s1;
                if(list.get(i) != null && ((MacInfo)list.get(i)).mac.length() == aI)
                {
                    String s2 = (new StringBuilder()).append(s).append("<mac ").toString();
                    String s3 = (new StringBuilder()).append(s2).append("macDbm=\"").append(((MacInfo)list.get(i)).dbm).append("\"").toString();
                    String s4 = (new StringBuilder()).append(s3).append(">").toString();
                    String s5 = (new StringBuilder()).append(s4).append(((MacInfo)list.get(i)).mac).toString();
                    s1 = (new StringBuilder()).append(s5).append("</mac>").toString();
                } else
                {
                    s1 = s;
                }
                i++;
                s = s1;
            }
        }
        return s;
    }

    public static void getSignalStrength(Context context)
    {
        if(android.os.Build.VERSION.SDK_INT >= 5)
            (new PhoneUtil20Impl()).getSignalStrength(context);
        else
            (new PhoneUtil16Impl()).getSignalStrength(context);
    }

    public static final String CELL_CDMA = "cdma";
    public static final String CELL_GSM = "gsm";
    private static final int aI = 17;

}
