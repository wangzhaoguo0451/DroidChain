// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.RandomAccessFile;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.UUID;

// Referenced classes of package com.baidu.location:
//            f, b, c

class j
{
    public static class a
    {

        private static String a(Context context)
        {
            return b.a(context);
        }

        public static String _mthif(Context context)
        {
            String s1 = a(context);
            String s2 = b._mthdo(context);
            if(TextUtils.isEmpty(s2))
                s2 = "0";
            String s3 = (new StringBuffer(s2)).reverse().toString();
            return (new StringBuilder()).append(s1).append("|").append(s3).toString();
        }

        private static final boolean a;
        private static final String _fldif = com/baidu/location/j$a.getSimpleName();


        public a()
        {
        }
    }

    public static class b
    {

        public static String a(Context context)
        {
            SharedPreferences sharedpreferences = context.getSharedPreferences("bids", 0);
            String s1 = sharedpreferences.getString("i", null);
            if(s1 == null)
            {
                s1 = _mthdo(context);
                android.content.SharedPreferences.Editor editor1 = sharedpreferences.edit();
                editor1.putString("i", s1);
                editor1.commit();
            }
            String s2 = sharedpreferences.getString("a", null);
            if(s2 == null)
            {
                s2 = _mthif(context);
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.putString("a", s2);
                editor.commit();
            }
            String s3 = j.a((new StringBuilder()).append("com.baidu").append(s1).append(s2).toString().getBytes(), true);
            String s4 = android.provider.Settings.System.getString(context.getContentResolver(), s3);
            String s5;
            if(TextUtils.isEmpty(s4))
            {
                String s6 = UUID.randomUUID().toString();
                s5 = j.a((new StringBuilder()).append(s1).append(s2).append(s6).toString().getBytes(), true);
                android.provider.Settings.System.putString(context.getContentResolver(), s3, s5);
                if(!s5.equals(android.provider.Settings.System.getString(context.getContentResolver(), s3)))
                    s5 = s3;
            } else
            {
                s5 = s4;
            }
            return s5;
        }

        public static String _mthdo(Context context)
        {
            TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
            String s1;
            if(telephonymanager != null)
            {
                s1 = telephonymanager.getDeviceId();
                if(TextUtils.isEmpty(s1))
                    s1 = "";
            } else
            {
                s1 = "";
            }
            return s1;
        }

        public static String _mthif(Context context)
        {
            String s1 = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
            if(TextUtils.isEmpty(s1))
                s1 = "";
            return s1;
        }

        private static final String a = "a";
        private static final String _flddo = "bids";
        private static final String _fldfor = "i";
        private static final String _fldif = "DeviceId";

        private b()
        {
        }
    }


    j()
    {
    }

    static float a(String s1, String s2, String s3)
    {
        float f1 = 1.401298E-45F;
        if(s1 != null && !s1.equals("")) goto _L2; else goto _L1
_L1:
        return f1;
_L2:
        String s4;
        int i1 = s1.indexOf(s2);
        if(i1 == -1)
            continue; /* Loop/switch isn't completed */
        int j1 = i1 + s2.length();
        int k1 = s1.indexOf(s3, j1);
        if(k1 == -1)
            continue; /* Loop/switch isn't completed */
        s4 = s1.substring(j1, k1);
        if(s4 == null || s4.equals(""))
            continue; /* Loop/switch isn't completed */
        float f2 = Float.parseFloat(s4);
        f1 = f2;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        _mthif(f, (new StringBuilder()).append("util numberFormatException, intStr : ").append(s4).toString());
        numberformatexception.printStackTrace();
        if(true) goto _L1; else goto _L3
_L3:
    }

    static String a()
    {
        Calendar calendar = Calendar.getInstance();
        int i1 = calendar.get(5);
        int j1 = calendar.get(1);
        int k1 = 1 + calendar.get(2);
        int l1 = calendar.get(11);
        int i2 = calendar.get(12);
        int j2 = calendar.get(13);
        Object aobj[] = new Object[6];
        aobj[0] = Integer.valueOf(j1);
        aobj[1] = Integer.valueOf(k1);
        aobj[2] = Integer.valueOf(i1);
        aobj[3] = Integer.valueOf(l1);
        aobj[4] = Integer.valueOf(i2);
        aobj[5] = Integer.valueOf(j2);
        return String.format("%d_%d_%d_%d_%d_%d", aobj);
    }

    public static String a(c.a a1, e.c c1, Location location, String s1, int i1)
    {
        float f1;
        int j1;
        int k1;
        int l1;
        StringBuffer stringbuffer = new StringBuffer();
        if(a1 != null)
        {
            String s7 = a1.toString();
            if(s7 != null)
                stringbuffer.append(s7);
        }
        if(c1 != null)
        {
            boolean flag;
            String s2;
            String s3;
            boolean flag1;
            String s4;
            String s6;
            if(i1 == 0)
                s6 = c1._mthchar();
            else
                s6 = c1._mthbyte();
            if(s6 != null)
                stringbuffer.append(s6);
        }
        if(location != null)
        {
            String s5;
            if(h != 0 && i1 != 0)
                s5 = com.baidu.location.b._mthif(location);
            else
                s5 = com.baidu.location.b._mthdo(location);
            if(s5 != null)
                stringbuffer.append(s5);
        }
        flag = false;
        if(i1 == 0)
            flag = true;
        s2 = com.baidu.location.c.a(flag);
        if(s2 != null)
            stringbuffer.append(s2);
        if(s1 != null)
            stringbuffer.append(s1);
        if(a1 != null)
        {
            s4 = a1._mthint();
            if(s4 != null && s4.length() + stringbuffer.length() < 750)
                stringbuffer.append(s4);
        }
        s3 = stringbuffer.toString();
        _mthif(f, (new StringBuilder()).append("util format : ").append(s3).toString());
        if(location == null || c1 == null)
            break MISSING_BLOCK_LABEL_371;
        f1 = location.getSpeed();
        j1 = h;
        k1 = c1._mthdo();
        l1 = c1._mthtry();
        flag1 = c1._mthcase();
        if(f1 >= w || j1 != 1 && j1 != 0 || k1 >= v && !flag1) goto _L2; else goto _L1
_L1:
        l = 1;
_L3:
        return s3;
_L2:
        try
        {
            if(f1 >= W || j1 != 1 && j1 != 0 && j1 != 3 || k1 >= ae && l1 <= _fldgoto)
                break MISSING_BLOCK_LABEL_364;
            l = 2;
        }
        catch(Exception exception)
        {
            l = 3;
        }
          goto _L3
        l = 3;
          goto _L3
        l = 3;
          goto _L3
    }

    static String a(String s1, String s2, String s3, double d1)
    {
        String s4 = null;
        if(s1 != null && !s1.equals("")) goto _L2; else goto _L1
_L1:
        return s4;
_L2:
        int i1 = s1.indexOf(s2);
        if(i1 != -1)
        {
            int j1 = i1 + s2.length();
            int k1 = s1.indexOf(s3, j1);
            if(k1 != -1)
            {
                String s5 = s1.substring(0, j1);
                String s6 = s1.substring(k1);
                Object aobj[] = new Object[1];
                aobj[0] = Double.valueOf(d1);
                String s7 = String.format("%.7f", aobj);
                s4 = (new StringBuilder()).append(s5).append(s7).append(s6).toString();
                _mthif(f, (new StringBuilder()).append("NEW:").append(s4).toString());
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static String a(byte abyte0[], String s1, boolean flag)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i1 = abyte0.length;
        for(int j1 = 0; j1 < i1; j1++)
        {
            String s2 = Integer.toHexString(0xff & abyte0[j1]);
            if(flag)
                s2 = s2.toUpperCase();
            if(s2.length() == 1)
                stringbuilder.append("0");
            stringbuilder.append(s2).append(s1);
        }

        return stringbuilder.toString();
    }

    public static String a(byte abyte0[], boolean flag)
    {
        String s1;
        try
        {
            MessageDigest messagedigest = MessageDigest.getInstance("MD5");
            messagedigest.reset();
            messagedigest.update(abyte0);
            s1 = a(messagedigest.digest(), "", flag);
        }
        catch(NoSuchAlgorithmException nosuchalgorithmexception)
        {
            throw new RuntimeException(nosuchalgorithmexception);
        }
        return s1;
    }

    public static void a(int i1)
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        if((i1 & 1) == flag)
            flag1 = flag;
        else
            flag1 = false;
        O = flag1;
        if((i1 & 2) == 2)
            flag2 = flag;
        else
            flag2 = false;
        P = flag2;
        if((i1 & 4) == 4)
            flag3 = flag;
        else
            flag3 = false;
        n = flag3;
        if((i1 & 8) == 8)
            flag4 = flag;
        else
            flag4 = false;
        x = flag4;
        if((i1 & 0x10000) == 0x10000)
            flag5 = flag;
        else
            flag5 = false;
        z = flag5;
        if((i1 & 0x20000) != 0x20000)
            flag = false;
        m = flag;
        _mthif(f, (new StringBuilder()).append("A1~C3:").append(O).append(P).append(n).append(x).append(z).append(m).toString());
    }

    public static void a(String s1)
    {
        if(k)
            Log.d(_fldelse, s1);
    }

    public static void a(String s1, String s2)
    {
        if(E)
            Log.d(s1, s2);
    }

    static double _mthdo(String s1, String s2, String s3)
    {
        double d1 = 4.9406564584124654E-324D;
        if(s1 != null && !s1.equals("")) goto _L2; else goto _L1
_L1:
        return d1;
_L2:
        String s4;
        int i1 = s1.indexOf(s2);
        if(i1 == -1)
            continue; /* Loop/switch isn't completed */
        int j1 = i1 + s2.length();
        int k1 = s1.indexOf(s3, j1);
        if(k1 == -1)
            continue; /* Loop/switch isn't completed */
        s4 = s1.substring(j1, k1);
        if(s4 == null || s4.equals(""))
            continue; /* Loop/switch isn't completed */
        double d2 = Double.parseDouble(s4);
        d1 = d2;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        _mthif(f, (new StringBuilder()).append("util numberFormatException, doubleStr : ").append(s4).toString());
        numberformatexception.printStackTrace();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static String _mthdo()
    {
        return _fldchar;
    }

    public static boolean _mthdo(String s1)
    {
        int i1 = _mthif(s1, "error\":\"", "\"");
        boolean flag;
        if(i1 > 100 && i1 < 200)
            flag = true;
        else
            flag = false;
        return flag;
    }

    static String _mthfor()
    {
        Calendar calendar = Calendar.getInstance();
        int i1 = calendar.get(5);
        int j1 = calendar.get(1);
        int k1 = 1 + calendar.get(2);
        int l1 = calendar.get(11);
        int i2 = calendar.get(12);
        int j2 = calendar.get(13);
        Object aobj[] = new Object[6];
        aobj[0] = Integer.valueOf(j1);
        aobj[1] = Integer.valueOf(k1);
        aobj[2] = Integer.valueOf(i1);
        aobj[3] = Integer.valueOf(l1);
        aobj[4] = Integer.valueOf(i2);
        aobj[5] = Integer.valueOf(j2);
        return String.format("%d-%d-%d %d:%d:%d", aobj);
    }

    static int _mthif(String s1, String s2, String s3)
    {
        int i1 = 0x80000000;
        if(s1 != null && !s1.equals("")) goto _L2; else goto _L1
_L1:
        return i1;
_L2:
        String s4;
        int j1 = s1.indexOf(s2);
        if(j1 == -1)
            continue; /* Loop/switch isn't completed */
        int k1 = j1 + s2.length();
        int l1 = s1.indexOf(s3, k1);
        if(l1 == -1)
            continue; /* Loop/switch isn't completed */
        s4 = s1.substring(k1, l1);
        if(s4 == null || s4.equals(""))
            continue; /* Loop/switch isn't completed */
        int i2 = Integer.parseInt(s4);
        i1 = i2;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        _mthif(f, (new StringBuilder()).append("util numberFormatException, intStr : ").append(s4).toString());
        numberformatexception.printStackTrace();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static void _mthif()
    {
        int i1 = 0;
        File file = new File(i);
        if(!file.exists()) goto _L2; else goto _L1
_L1:
        RandomAccessFile randomaccessfile;
        int j1;
        int k1;
        byte abyte0[];
        randomaccessfile = new RandomAccessFile(file, "rw");
        randomaccessfile.seek(4L);
        j1 = randomaccessfile.readInt();
        k1 = randomaccessfile.readInt();
        randomaccessfile.seek(128L);
        abyte0 = new byte[j1];
_L9:
        if(i1 >= k1) goto _L4; else goto _L3
_L3:
        int l1;
        randomaccessfile.seek(128 + j1 * i1);
        l1 = randomaccessfile.readInt();
        if(l1 <= 0 || l1 >= j1) goto _L6; else goto _L5
_L5:
        randomaccessfile.read(abyte0, 0, l1);
        if(abyte0[l1 - 1] != 0) goto _L6; else goto _L7
_L7:
        String s1;
        s1 = new String(abyte0, 0, l1 - 1);
        _mthif(f, (new StringBuilder()).append("a:").append(s1).toString());
        if(!s1.equals(ak)) goto _L6; else goto _L8
_L8:
        _fldnew = randomaccessfile.readInt();
        e = i1;
        _mthif(f, (new StringBuilder()).append(s1).append(_fldnew).toString());
_L4:
        if(i1 == k1)
            e = k1;
        randomaccessfile.close();
_L2:
        return;
_L6:
        i1++;
          goto _L9
        Exception exception;
        exception;
          goto _L2
    }

    public static void _mthif(int i1)
    {
        File file;
        file = new File(i);
        if(!file.exists())
            _mthint();
        RandomAccessFile randomaccessfile = new RandomAccessFile(file, "rw");
        randomaccessfile.seek(4L);
        int j1 = randomaccessfile.readInt();
        int k1 = randomaccessfile.readInt();
        randomaccessfile.seek(128 + j1 * e);
        byte abyte0[] = (new StringBuilder()).append(ak).append('\0').toString().getBytes();
        randomaccessfile.writeInt(abyte0.length);
        randomaccessfile.write(abyte0, 0, abyte0.length);
        randomaccessfile.writeInt(i1);
        if(k1 == e)
        {
            randomaccessfile.seek(8L);
            randomaccessfile.writeInt(k1 + 1);
        }
        randomaccessfile.close();
_L2:
        return;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static void _mthif(String s1)
    {
        if(E && s1 != null)
            _fldchar = s1;
    }

    public static void _mthif(String s1, String s2)
    {
    }

    public static void _mthint()
    {
        File file = new File(i);
        if(!file.exists())
        {
            File file1 = new File(f.ac);
            if(!file1.exists())
                file1.mkdirs();
            if(!file.createNewFile())
                file = null;
            RandomAccessFile randomaccessfile = new RandomAccessFile(file, "rw");
            randomaccessfile.seek(0L);
            randomaccessfile.writeInt(0);
            randomaccessfile.writeInt(128);
            randomaccessfile.writeInt(0);
            randomaccessfile.close();
        }
_L2:
        return;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static void _mthnew()
    {
        if(aj == null)
            break MISSING_BLOCK_LABEL_21;
        _mthif(f, "logcat stop...");
        aj.destroy();
_L1:
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L1
    }

    public static void _mthtry()
    {
        if(E) goto _L2; else goto _L1
_L1:
        return;
_L2:
        File file;
        if(aj != null)
        {
            aj.destroy();
            aj = null;
        }
        file = new File(f.ac);
        if(!file.exists())
            break MISSING_BLOCK_LABEL_70;
        _mthif("sdkdemo_applocation", "directory already exists...");
_L3:
        _mthif(f, "logcat start ...");
          goto _L1
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L1
        file.mkdirs();
        _mthif("sdkdemo_applocation", "directory not exists, make dirs...");
          goto _L3
    }

    public static String A = "no";
    public static final boolean B = false;
    public static float C = 0F;
    public static float D = 0F;
    private static boolean E = false;
    public static float F = 0F;
    public static boolean G = false;
    public static boolean H = false;
    public static int I = 0;
    public static double J = 0D;
    public static int K = 0;
    public static int L = 0;
    public static long M = 0L;
    public static String N = "http://loc.map.baidu.com/sdk_ep.php";
    public static boolean O = false;
    public static boolean P = false;
    public static float Q = 0F;
    public static boolean R = false;
    public static int S = 0;
    private static final int T = 128;
    public static float U = 3.8F;
    public static int V = 20;
    public static float W = 10F;
    public static int X = 2;
    public static int Y = 16;
    public static double Z = 0.0D;
    public static float a = 0.5F;
    public static int aa = 300;
    public static boolean ab = false;
    public static long ac = 20L;
    public static int ad = 70;
    public static int ae = 70;
    public static int af = 0;
    public static boolean ag = false;
    public static String ah = "gcj02";
    public static float ai = 50F;
    private static Process aj = null;
    public static String ak = null;
    public static long al = 0x493e0L;
    public static float am = 1.1F;
    public static String b = null;
    public static float _fldbyte = 0.9F;
    public static float c = 2.2F;
    public static final boolean _fldcase;
    private static String _fldchar = "http://loc.map.baidu.com/sdk.php";
    public static boolean d = false;
    public static String _flddo = null;
    public static int e = 0;
    private static String _fldelse = "[baidu_location_service]";
    private static String f = "baidu_location_service";
    public static int _fldfor = 20;
    public static int g = 0;
    public static int _fldgoto = 6;
    public static int h = 0;
    private static final String i;
    public static double _fldif = 0.0D;
    public static int _fldint = 7;
    public static byte j[] = null;
    private static boolean k = true;
    public static int l = 3;
    public static int _fldlong = 120;
    public static boolean m = true;
    public static boolean n = false;
    public static int _fldnew = -1;
    public static double o = 0.0D;
    public static int p = 3;
    public static int q = 100;
    public static int r = 30;
    public static float s = 0.1F;
    public static int t = -1;
    public static boolean _fldtry = true;
    public static float u = 0.0F;
    public static int v = 60;
    public static boolean _fldvoid = true;
    public static float w = 6F;
    public static boolean x = true;
    public static final boolean y;
    public static boolean z = true;

    static 
    {
        H = false;
        E = false;
        R = true;
        G = true;
        J = 0.0D;
        I = 0;
        F = 2.3F;
        K = 10;
        D = 2.0F;
        C = 10F;
        Q = 200F;
        S = 5000;
        L = 1000;
        M = 0x124f80L;
        O = true;
        P = true;
        i = (new StringBuilder()).append(f.ac).append("/con.dat").toString();
    }
}
