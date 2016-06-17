// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.ads;

import android.content.Context;
import android.location.Location;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;
import java.util.*;

public class AdRequest
{
    public static final class Gender extends Enum
    {

        public static Gender valueOf(String s)
        {
            return (Gender)Enum.valueOf(com/google/ads/AdRequest$Gender, s);
        }

        public static Gender[] values()
        {
            return (Gender[])b.clone();
        }

        public final String toString()
        {
            return a;
        }

        public static final Gender FEMALE;
        public static final Gender MALE;
        private static final Gender b[];
        private String a;

        static 
        {
            MALE = new Gender("MALE", 0, "m");
            FEMALE = new Gender("FEMALE", 1, "f");
            Gender agender[] = new Gender[2];
            agender[0] = MALE;
            agender[1] = FEMALE;
            b = agender;
        }

        private Gender(String s, int i, String s1)
        {
            super(s, i);
            a = s1;
        }
    }

    public static final class ErrorCode extends Enum
    {

        public static ErrorCode valueOf(String s)
        {
            return (ErrorCode)Enum.valueOf(com/google/ads/AdRequest$ErrorCode, s);
        }

        public static ErrorCode[] values()
        {
            return (ErrorCode[])b.clone();
        }

        public final String toString()
        {
            return a;
        }

        public static final ErrorCode INTERNAL_ERROR;
        public static final ErrorCode INVALID_REQUEST;
        public static final ErrorCode NETWORK_ERROR;
        public static final ErrorCode NO_FILL;
        private static final ErrorCode b[];
        private String a;

        static 
        {
            INVALID_REQUEST = new ErrorCode("INVALID_REQUEST", 0, "Invalid Google Ad request.");
            NO_FILL = new ErrorCode("NO_FILL", 1, "Ad request successful, but no ad returned due to lack of ad inventory.");
            NETWORK_ERROR = new ErrorCode("NETWORK_ERROR", 2, "A network error occurred.");
            INTERNAL_ERROR = new ErrorCode("INTERNAL_ERROR", 3, "There was an internal error.");
            ErrorCode aerrorcode[] = new ErrorCode[4];
            aerrorcode[0] = INVALID_REQUEST;
            aerrorcode[1] = NO_FILL;
            aerrorcode[2] = NETWORK_ERROR;
            aerrorcode[3] = INTERNAL_ERROR;
            b = aerrorcode;
        }

        private ErrorCode(String s, int i, String s1)
        {
            super(s, i);
            a = s1;
        }
    }


    public AdRequest()
    {
        a = null;
        b = null;
        c = null;
        d = null;
        e = null;
        f = false;
        g = false;
        h = null;
    }

    public void addExtra(String s, Object obj)
    {
        if(d == null)
            d = new HashMap();
        d.put(s, obj);
    }

    public void addKeyword(String s)
    {
        if(c == null)
            c = new HashSet();
        c.add(s);
    }

    public void addTestDevice(String s)
    {
        if(h == null)
            h = new HashSet();
        h.add(s);
    }

    public Map getRequestMap(Context context)
    {
        HashMap hashmap;
        hashmap = new HashMap();
        if(c != null)
            hashmap.put("kw", c);
        if(a != null)
            hashmap.put("cust_gender", a.toString());
        if(b != null)
            hashmap.put("cust_age", b);
        if(e != null)
            hashmap.put("uule", AdUtil.a(e));
        if(f)
            hashmap.put("testing", Integer.valueOf(1));
        if(!isTestDevice(context)) goto _L2; else goto _L1
_L1:
        hashmap.put("adtest", "on");
_L4:
        if(d != null)
            hashmap.put("extras", d);
        return hashmap;
_L2:
        if(!g)
        {
            String s;
            if(AdUtil.a())
                s = "AdRequest.TEST_EMULATOR";
            else
                s = (new StringBuilder()).append("\"").append(AdUtil.a(context)).append("\"").toString();
            com.google.ads.util.a.c((new StringBuilder()).append("To get test ads on this device, call adRequest.addTestDevice(").append(s).append(");").toString());
            g = true;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public boolean isTestDevice(Context context)
    {
        if(h == null) goto _L2; else goto _L1
_L1:
        String s = AdUtil.a(context);
        if(s != null) goto _L4; else goto _L3
_L3:
        boolean flag = false;
_L6:
        return flag;
_L4:
        if(h.contains(s))
        {
            flag = true;
            continue; /* Loop/switch isn't completed */
        }
_L2:
        flag = false;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public void setBirthday(String s)
    {
        b = s;
    }

    public void setExtras(Map map)
    {
        d = map;
    }

    public void setGender(Gender gender)
    {
        a = gender;
    }

    public void setKeywords(Set set)
    {
        c = set;
    }

    public void setLocation(Location location)
    {
        e = location;
    }

    public void setTestDevices(Set set)
    {
        h = set;
    }

    public void setTesting(boolean flag)
    {
        f = flag;
    }

    public static final String LOGTAG = "Ads";
    public static final String TEST_EMULATOR = AdUtil.a("emulator");
    public static final String VERSION = "4.1.0";
    private Gender a;
    private String b;
    private Set c;
    private Map d;
    private Location e;
    private boolean f;
    private boolean g;
    private Set h;

}
