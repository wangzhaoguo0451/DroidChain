// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;


// Referenced classes of package com.baidu.location:
//            j

class Jni
{

    Jni()
    {
    }

    private static native String a(byte abyte0[], int i);

    private static native String b(double d, double d1, int i, int k);

    public static String _mthif(String s)
    {
        int i = 740;
        int k = 0;
        String s1;
        if(_fldnew)
        {
            s1 = "err!";
        } else
        {
            byte abyte0[] = s.getBytes();
            byte abyte1[] = new byte[_flddo];
            int l = abyte0.length;
            int i1;
            if(l <= i)
                i = l;
            i1 = 0;
            while(k < i) 
            {
                if(abyte0[k] != 0)
                {
                    abyte1[i1] = abyte0[k];
                    i1++;
                } else
                {
                    j._mthif("baidu_location_service", "\\0 found in string");
                }
                k++;
            }
            j._mthif("baidu_location_service", (new StringBuilder()).append("number:").append(abyte0.length).toString());
            s1 = (new StringBuilder()).append(a(abyte1, 0x20568)).append("|tp=3").toString();
        }
        return s1;
    }

    public static double[] _mthif(double d, double d1, String s)
    {
        double ad[];
        ad = new double[2];
        ad[0] = 0.0D;
        ad[1] = 0.0D;
        if(!_fldnew) goto _L2; else goto _L1
_L1:
        double ad1[] = ad;
_L5:
        return ad1;
_L2:
        int i = -1;
        if(!s.equals("bd09")) goto _L4; else goto _L3
_L3:
        i = _fldcase;
_L6:
        j._mthif("baidu_location_service", (new StringBuilder()).append("type:").append(i).toString());
        try
        {
            String as[] = b(d, d1, i, 0x20568).split(":");
            ad[0] = Double.parseDouble(as[0]);
            ad[1] = Double.parseDouble(as[1]);
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
        ad1 = ad;
        if(true) goto _L5; else goto _L4
_L4:
        if(s.equals("bd09ll"))
            i = _fldtry;
        else
        if(s.equals("gcj02"))
            i = _fldbyte;
        else
        if(s.equals("gps2gcj"))
            i = _fldfor;
        else
        if(s.equals("bd092gcj"))
            i = _fldint;
        else
        if(s.equals("bd09ll2gcj"))
            i = _fldif;
          goto _L6
    }

    private static int a;
    private static int _fldbyte;
    private static int _fldcase;
    private static int _flddo;
    private static int _fldfor;
    private static int _fldif;
    private static int _fldint;
    private static boolean _fldnew;
    private static int _fldtry;

    static 
    {
        _fldcase = 0;
        _fldtry = 1;
        _fldbyte = 2;
        _fldfor = 11;
        _fldint = 12;
        _fldif = 13;
        a = 14;
        _flddo = 1024;
        _fldnew = false;
        System.loadLibrary("locSDK3");
_L1:
        return;
        UnsatisfiedLinkError unsatisfiedlinkerror;
        unsatisfiedlinkerror;
        unsatisfiedlinkerror.printStackTrace();
        _fldnew = true;
          goto _L1
    }
}
