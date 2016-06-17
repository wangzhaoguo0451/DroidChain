// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.*;
import android.os.Handler;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import org.json.JSONObject;

// Referenced classes of package com.baidu.location:
//            Jni, j, k, f, 
//            b

class g
{

    g()
    {
    }

    private static int a(Context context, NetworkInfo networkinfo)
    {
        byte byte0 = 2;
        if(networkinfo == null || networkinfo.getExtraInfo() == null) goto _L2; else goto _L1
_L1:
        String s1 = networkinfo.getExtraInfo().toLowerCase();
        if(s1 == null) goto _L2; else goto _L3
_L3:
        if(!s1.startsWith("cmwap") && !s1.startsWith("uniwap") && !s1.startsWith("3gwap")) goto _L5; else goto _L4
_L4:
        String s2 = Proxy.getDefaultHost();
        if(s2 == null || s2.equals("") || s2.equals("null"))
            s2 = "10.0.0.172";
        k = s2;
        byte0 = 1;
_L7:
        return byte0;
_L5:
        if(s1.startsWith("ctwap"))
        {
            String s3 = Proxy.getDefaultHost();
            if(s3 == null || s3.equals("") || s3.equals("null"))
                s3 = "10.0.0.200";
            k = s3;
            byte0 = 1;
            continue; /* Loop/switch isn't completed */
        }
        if(s1.startsWith("cmnet") || s1.startsWith("uninet") || s1.startsWith("ctnet") || s1.startsWith("3gnet"))
            continue; /* Loop/switch isn't completed */
_L2:
        String s = Proxy.getDefaultHost();
        if(s != null && s.length() > 0)
            if("10.0.0.172".equals(s.trim()))
            {
                k = "10.0.0.172";
                byte0 = 1;
            } else
            if("10.0.0.200".equals(s.trim()))
            {
                k = "10.0.0.200";
                byte0 = 1;
            }
        if(true) goto _L7; else goto _L6
_L6:
    }

    static Handler a(Handler handler)
    {
        m = handler;
        return handler;
    }

    static String a()
    {
        return _fldfor;
    }

    static String a(String s)
    {
        _fldlong = s;
        return s;
    }

    static ArrayList a(ArrayList arraylist)
    {
        f = arraylist;
        return arraylist;
    }

    public static void a(String s, boolean flag)
    {
        if(!_fldchar && s != null)
        {
            _fldlong = Jni._mthif(s);
            h = flag;
            _fldchar = true;
            (new _cls4()).start();
        }
    }

    public static boolean a(Context context)
    {
        boolean flag = false;
        if(context != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        _mthdo(context);
        if(_fldtry == 3)
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean a(String s, Handler handler)
    {
        boolean flag = true;
        if(j || s == null)
        {
            flag = false;
        } else
        {
            j = flag;
            com.baidu.location.j._mthif(_fldnew, (new StringBuilder()).append("bloc : ").append(l).toString());
            l = Jni._mthif(s);
            com.baidu.location.j._mthif(_fldnew, (new StringBuilder()).append("NUMBER_e : ").append(l.length()).toString());
            com.baidu.location.j._mthif(_fldnew, (new StringBuilder()).append("content: ").append(l).toString());
            _fldint = handler;
            if(_flddo == null)
                _flddo = com.baidu.location.k._mthdo();
            (new _cls1()).start();
        }
        return flag;
    }

    static boolean a(boolean flag)
    {
        j = flag;
        return flag;
    }

    static int b()
    {
        return a;
    }

    static boolean _mthbyte()
    {
        return h;
    }

    public static void c()
    {
        String s = (new StringBuilder()).append(f.ac).append("/config.dat").toString();
        int i1;
        int j1;
        Object aobj[];
        String s1;
        byte abyte0[];
        File file;
        Exception exception;
        File file1;
        RandomAccessFile randomaccessfile;
        RandomAccessFile randomaccessfile1;
        if(j._fldvoid)
            i1 = 1;
        else
            i1 = 0;
        if(j._fldtry)
            j1 = 1;
        else
            j1 = 0;
        aobj = new Object[35];
        aobj[0] = Integer.valueOf(j.g);
        aobj[1] = Float.valueOf(j.am);
        aobj[2] = Float.valueOf(j.c);
        aobj[3] = Float.valueOf(j.F);
        aobj[4] = Float.valueOf(j.U);
        aobj[5] = Integer.valueOf(j.p);
        aobj[6] = Integer.valueOf(j.K);
        aobj[7] = Integer.valueOf(j.X);
        aobj[8] = Integer.valueOf(j._fldint);
        aobj[9] = Integer.valueOf(j._fldfor);
        aobj[10] = Integer.valueOf(j.ad);
        aobj[11] = Integer.valueOf(j._fldlong);
        aobj[12] = Float.valueOf(j.D);
        aobj[13] = Float.valueOf(j.C);
        aobj[14] = Float.valueOf(j.ai);
        aobj[15] = Float.valueOf(j.Q);
        aobj[16] = Integer.valueOf(j.Y);
        aobj[17] = Float.valueOf(j._fldbyte);
        aobj[18] = Integer.valueOf(j.S);
        aobj[19] = Float.valueOf(j.a);
        aobj[20] = Float.valueOf(j.u);
        aobj[21] = Float.valueOf(j.s);
        aobj[22] = Integer.valueOf(j.r);
        aobj[23] = Integer.valueOf(j.q);
        aobj[24] = Integer.valueOf(i1);
        aobj[25] = Integer.valueOf(j1);
        aobj[26] = Integer.valueOf(j.V);
        aobj[27] = Integer.valueOf(j.L);
        aobj[28] = Long.valueOf(j.ac);
        aobj[29] = Integer.valueOf(j.af);
        aobj[30] = Float.valueOf(j.w);
        aobj[31] = Float.valueOf(j.W);
        aobj[32] = Integer.valueOf(j.v);
        aobj[33] = Integer.valueOf(j.ae);
        aobj[34] = Integer.valueOf(j._fldgoto);
        s1 = String.format("{\"ver\":\"%d\",\"gps\":\"%.1f|%.1f|%.1f|%.1f|%d|%d|%d|%d|%d|%d|%d\",\"up\":\"%.1f|%.1f|%.1f|%.1f\",\"wf\":\"%d|%.1f|%d|%.1f\",\"ab\":\"%.2f|%.2f|%d|%d\",\"gpc\":\"%d|%d|%d|%d|%d|%d\",\"zxd\":\"%.1f|%.1f|%d|%d|%d\"}", aobj);
        com.baidu.location.j._mthif(_fldnew, (new StringBuilder()).append("save2Config : ").append(s1).toString());
        abyte0 = s1.getBytes();
label0:
        {
            file = new File(s);
            if(!file.exists())
            {
                file1 = new File(f.ac);
                if(!file1.exists())
                    file1.mkdirs();
                if(!file.createNewFile())
                    break label0;
                com.baidu.location.j._mthif(_fldnew, "upload manager create file success");
                randomaccessfile = new RandomAccessFile(file, "rw");
                randomaccessfile.seek(0L);
                randomaccessfile.writeBoolean(false);
                randomaccessfile.writeBoolean(false);
                randomaccessfile.close();
            }
            randomaccessfile1 = new RandomAccessFile(file, "rw");
            randomaccessfile1.seek(0L);
            randomaccessfile1.writeBoolean(true);
            randomaccessfile1.seek(2L);
            randomaccessfile1.writeInt(abyte0.length);
            randomaccessfile1.write(abyte0);
            randomaccessfile1.close();
        }
_L2:
        return;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    static Handler _mthcase()
    {
        return c;
    }

    static int _mthchar()
    {
        return _fldgoto;
    }

    static ArrayList d()
    {
        return f;
    }

    public static int _mthdo(Context context)
    {
        _fldtry = _mthif(context);
        return _fldtry;
    }

    static Handler _mthdo(Handler handler)
    {
        c = handler;
        return handler;
    }

    static String _mthdo()
    {
        return _fldlong;
    }

    static String _mthdo(String s)
    {
        _flddo = s;
        return s;
    }

    static boolean _mthdo(boolean flag)
    {
        b = flag;
        return flag;
    }

    static int e()
    {
        return _fldtry;
    }

    static String _mthelse()
    {
        return l;
    }

    public static void f()
    {
        if(!b) goto _L2; else goto _L1
_L1:
        return;
_L2:
        b = true;
        if(f != null) goto _L4; else goto _L3
_L3:
        int i1;
        _fldgoto = 0;
        f = new ArrayList();
        i1 = 0;
_L13:
        String s;
        Exception exception;
        String s1;
        String s2;
        if(_fldgoto < 2)
            s = com.baidu.location.k._mthdo();
        else
            s = null;
        if(s != null || _fldgoto == 1) goto _L6; else goto _L5
_L5:
        _fldgoto = 2;
        if(j.af != 0) goto _L8; else goto _L7
_L7:
        s = com.baidu.location.f._mthnew();
        if(s != null)
            break MISSING_BLOCK_LABEL_81;
        s2 = com.baidu.location.b.j();
        s = s2;
_L11:
        if(s != null) goto _L9; else goto _L4
_L4:
        if(f == null || f.size() < 1)
        {
            f = null;
            b = false;
            com.baidu.location.j._mthif(_fldnew, "No upload data...");
        } else
        {
            com.baidu.location.j._mthif(_fldnew, "Beging upload data...");
            (new _cls3()).start();
        }
          goto _L1
_L8:
        if(j.af != 1) goto _L11; else goto _L10
_L10:
        s = com.baidu.location.b.j();
        if(s != null) goto _L11; else goto _L12
_L12:
        s1 = com.baidu.location.f._mthnew();
        s = s1;
          goto _L11
        exception;
        s = null;
          goto _L11
_L6:
        _fldgoto = 1;
          goto _L11
_L9:
        f.add(s);
        i1 += s.length();
        com.baidu.location.j._mthif(_fldnew, (new StringBuilder()).append("upload data size:").append(i1).toString());
        if(i1 < d) goto _L13; else goto _L4
    }

    public static void _mthfor()
    {
        String s = (new StringBuilder()).append(f.ac).append("/config.dat").toString();
label0:
        {
            File file = new File(s);
            if(!file.exists())
            {
                File file1 = new File(f.ac);
                if(!file1.exists())
                    file1.mkdirs();
                if(!file.createNewFile())
                    break label0;
                com.baidu.location.j._mthif(_fldnew, "upload manager create file success");
                RandomAccessFile randomaccessfile = new RandomAccessFile(file, "rw");
                randomaccessfile.seek(0L);
                randomaccessfile.writeBoolean(false);
                randomaccessfile.writeBoolean(false);
                randomaccessfile.close();
            }
            RandomAccessFile randomaccessfile1 = new RandomAccessFile(file, "rw");
            randomaccessfile1.seek(1L);
            randomaccessfile1.writeBoolean(true);
            randomaccessfile1.seek(1024L);
            randomaccessfile1.writeDouble(j._fldif);
            randomaccessfile1.writeDouble(j.o);
            randomaccessfile1.writeBoolean(j.ag);
            if(j.ag && j.j != null)
                randomaccessfile1.write(j.j);
            randomaccessfile1.close();
        }
_L2:
        return;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static void _mthfor(Handler handler)
    {
        String s = (new StringBuilder()).append(f.ac).append("/config.dat").toString();
        File file = new File(s);
        if(file.exists())
        {
            RandomAccessFile randomaccessfile = new RandomAccessFile(file, "rw");
            if(randomaccessfile.readBoolean())
            {
                randomaccessfile.seek(2L);
                int i1 = randomaccessfile.readInt();
                byte abyte0[] = new byte[i1];
                randomaccessfile.read(abyte0, 0, i1);
                _mthif(new String(abyte0));
            }
            randomaccessfile.seek(1L);
            if(randomaccessfile.readBoolean())
            {
                randomaccessfile.seek(1024L);
                j._fldif = randomaccessfile.readDouble();
                j.o = randomaccessfile.readDouble();
                j.ag = randomaccessfile.readBoolean();
                if(j.ag)
                {
                    j.j = new byte[625];
                    randomaccessfile.read(j.j, 0, 625);
                }
            }
            randomaccessfile.close();
        }
        String s1 = (new StringBuilder()).append("&ver=").append(j.g).append("&usr=").append(j._flddo).append("&app=").append(j.ak).append("&prod=").append(j.b).toString();
        com.baidu.location.j._mthif(_fldnew, s1);
        c = handler;
        a(s1, false);
_L2:
        return;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static boolean _mthfor(Context context)
    {
        int i1 = 1;
        int j1 = 0;
        if(context != null)
        {
            _mthdo(context);
            if(_fldtry != i1)
                i1 = 0;
            j1 = i1;
        }
        return j1;
    }

    static boolean _mthfor(boolean flag)
    {
        _fldchar = flag;
        return flag;
    }

    static int g()
    {
        return g;
    }

    static String _mthgoto()
    {
        return _flddo;
    }

    private static int _mthif(Context context)
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        if(connectivitymanager != null) goto _L2; else goto _L1
_L1:
        int i1 = 4;
          goto _L3
_L2:
        NetworkInfo networkinfo1 = connectivitymanager.getActiveNetworkInfo();
        if(networkinfo1 == null) goto _L5; else goto _L4
_L4:
        if(networkinfo1.isAvailable()) goto _L6; else goto _L5
_L6:
        if(networkinfo1.getType() != 1) goto _L8; else goto _L7
_L7:
        i1 = 3;
          goto _L3
_L8:
        Cursor cursor;
        _fldif = Uri.parse("content://telephony/carriers/preferapn");
        cursor = context.getContentResolver().query(_fldif, null, null, null, null);
        if(cursor == null || !cursor.moveToFirst()) goto _L10; else goto _L9
_L9:
        String s = cursor.getString(cursor.getColumnIndex("apn"));
        if(s == null || !s.toLowerCase().contains("ctwap")) goto _L12; else goto _L11
_L11:
        String s2 = Proxy.getDefaultHost();
        Exception exception;
        SecurityException securityexception;
        NetworkInfo networkinfo;
        SecurityException securityexception1;
        String s1;
        if(s2 == null || s2.equals("") || s2.equals("null"))
            s2 = "10.0.0.200";
        k = s2;
        g = 80;
        if(cursor != null)
            cursor.close();
          goto _L13
_L12:
        if(s == null || !s.toLowerCase().contains("wap")) goto _L10; else goto _L14
_L14:
        s1 = Proxy.getDefaultHost();
        if(s1 == null || s1.equals("") || s1.equals("null"))
            s1 = "10.0.0.172";
        k = s1;
        g = 80;
        if(cursor != null)
            cursor.close();
          goto _L15
_L10:
        if(cursor != null)
            cursor.close();
        i1 = 2;
          goto _L3
        securityexception;
        networkinfo = null;
_L16:
        int j1;
        try
        {
            com.baidu.location.j._mthif(_fldnew, "APN security...");
            j1 = a(context, networkinfo);
        }
        catch(Exception exception1)
        {
            i1 = 4;
            break; /* Loop/switch isn't completed */
        }
        i1 = j1;
        break; /* Loop/switch isn't completed */
        exception;
        exception.printStackTrace();
        i1 = 4;
        break; /* Loop/switch isn't completed */
        securityexception1;
        networkinfo = networkinfo1;
        if(true) goto _L16; else goto _L3
_L3:
        return i1;
_L5:
        i1 = 4;
        continue; /* Loop/switch isn't completed */
_L13:
        i1 = 1;
        continue; /* Loop/switch isn't completed */
_L15:
        i1 = 1;
        if(true) goto _L3; else goto _L17
_L17:
    }

    static Handler _mthif(Handler handler)
    {
        _fldint = handler;
        return handler;
    }

    static String _mthif()
    {
        return e;
    }

    public static boolean _mthif(String s)
    {
        boolean flag = true;
        if(s == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject;
        int i1;
        jsonobject = new JSONObject(s);
        i1 = Integer.parseInt(jsonobject.getString("ver"));
        if(i1 <= j.g) goto _L2; else goto _L3
_L3:
        j.g = i1;
        if(jsonobject.has("gps"))
        {
            com.baidu.location.j._mthif(_fldnew, "has gps...");
            String as5[] = jsonobject.getString("gps").split("\\|");
            if(as5.length > 10)
            {
                if(as5[0] != null && !as5[0].equals(""))
                    j.am = Float.parseFloat(as5[0]);
                if(as5[1] != null && !as5[1].equals(""))
                    j.c = Float.parseFloat(as5[1]);
                if(as5[2] != null && !as5[2].equals(""))
                    j.F = Float.parseFloat(as5[2]);
                if(as5[3] != null && !as5[3].equals(""))
                    j.U = Float.parseFloat(as5[3]);
                if(as5[4] != null && !as5[4].equals(""))
                    j.p = Integer.parseInt(as5[4]);
                if(as5[5] != null && !as5[5].equals(""))
                    j.K = Integer.parseInt(as5[5]);
                if(as5[6] != null && !as5[6].equals(""))
                    j.X = Integer.parseInt(as5[6]);
                if(as5[7] != null && !as5[7].equals(""))
                    j._fldint = Integer.parseInt(as5[7]);
                if(as5[8] != null && !as5[8].equals(""))
                    j._fldfor = Integer.parseInt(as5[8]);
                if(as5[9] != null && !as5[9].equals(""))
                    j.ad = Integer.parseInt(as5[9]);
                if(as5[10] != null && !as5[10].equals(""))
                    j._fldlong = Integer.parseInt(as5[10]);
            }
        }
        if(jsonobject.has("up"))
        {
            com.baidu.location.j._mthif(_fldnew, "has up...");
            String as4[] = jsonobject.getString("up").split("\\|");
            if(as4.length > 3)
            {
                if(as4[0] != null && !as4[0].equals(""))
                    j.D = Float.parseFloat(as4[0]);
                if(as4[1] != null && !as4[1].equals(""))
                    j.C = Float.parseFloat(as4[1]);
                if(as4[2] != null && !as4[2].equals(""))
                    j.ai = Float.parseFloat(as4[2]);
                if(as4[3] != null && !as4[3].equals(""))
                    j.Q = Float.parseFloat(as4[3]);
            }
        }
        if(jsonobject.has("wf"))
        {
            com.baidu.location.j._mthif(_fldnew, "has wf...");
            String as3[] = jsonobject.getString("wf").split("\\|");
            if(as3.length > 3)
            {
                if(as3[0] != null && !as3[0].equals(""))
                    j.Y = Integer.parseInt(as3[0]);
                if(as3[1] != null && !as3[1].equals(""))
                    j._fldbyte = Float.parseFloat(as3[1]);
                if(as3[2] != null && !as3[2].equals(""))
                    j.S = Integer.parseInt(as3[2]);
                if(as3[3] != null && !as3[3].equals(""))
                    j.a = Float.parseFloat(as3[3]);
            }
        }
        if(jsonobject.has("ab"))
        {
            com.baidu.location.j._mthif(_fldnew, "has ab...");
            String as2[] = jsonobject.getString("ab").split("\\|");
            if(as2.length > 3)
            {
                if(as2[0] != null && !as2[0].equals(""))
                    j.u = Float.parseFloat(as2[0]);
                if(as2[1] != null && !as2[1].equals(""))
                    j.s = Float.parseFloat(as2[1]);
                if(as2[2] != null && !as2[2].equals(""))
                    j.r = Integer.parseInt(as2[2]);
                if(as2[3] != null && !as2[3].equals(""))
                    j.q = Integer.parseInt(as2[3]);
            }
        }
        if(jsonobject.has("zxd"))
        {
            String as1[] = jsonobject.getString("zxd").split("\\|");
            if(as1.length > 4)
            {
                if(as1[0] != null && !as1[0].equals(""))
                    j.w = Float.parseFloat(as1[0]);
                if(as1[1] != null && !as1[1].equals(""))
                    j.W = Float.parseFloat(as1[1]);
                if(as1[2] != null && !as1[2].equals(""))
                    j.v = Integer.parseInt(as1[2]);
                if(as1[3] != null && !as1[3].equals(""))
                    j.ae = Integer.parseInt(as1[3]);
                if(as1[4] != null && !as1[4].equals(""))
                    j._fldgoto = Integer.parseInt(as1[4]);
            }
        }
        if(!jsonobject.has("gpc")) goto _L5; else goto _L4
_L4:
        String as[];
        com.baidu.location.j._mthif(_fldnew, "has gpc...");
        as = jsonobject.getString("gpc").split("\\|");
        if(as.length <= 5) goto _L5; else goto _L6
_L6:
        if(as[0] == null || as[0].equals("")) goto _L8; else goto _L7
_L7:
        if(Integer.parseInt(as[0]) <= 0) goto _L10; else goto _L9
_L9:
        j._fldvoid = true;
_L8:
        if(as[1] == null || as[1].equals("")) goto _L12; else goto _L11
_L11:
        if(Integer.parseInt(as[1]) <= 0) goto _L14; else goto _L13
_L13:
        j._fldtry = true;
_L12:
        if(as[2] != null && !as[2].equals(""))
            j.V = Integer.parseInt(as[2]);
        if(as[3] != null && !as[3].equals(""))
            j.L = Integer.parseInt(as[3]);
        if(as[4] == null || as[4].equals("")) goto _L16; else goto _L15
_L15:
        int j1 = Integer.parseInt(as[4]);
        if(j1 <= 0) goto _L18; else goto _L17
_L17:
        j.ac = j1;
        j.M = 60L * (1000L * j.ac);
        j.al = j.M >> 2;
_L16:
        if(as[5] != null && !as[5].equals(""))
            j.af = Integer.parseInt(as[5]);
_L5:
        try
        {
            com.baidu.location.j._mthif(_fldnew, "config change true...");
        }
        catch(Exception exception1) { }
_L19:
        return flag;
_L10:
        j._fldvoid = false;
          goto _L8
_L14:
        j._fldtry = false;
          goto _L12
_L18:
        j.G = false;
          goto _L16
_L2:
        flag = false;
          goto _L19
        Exception exception;
        exception;
        flag = false;
          goto _L19
    }

    public static boolean _mthif(String s, Handler handler)
    {
        boolean flag = true;
        if(_fldelse || s == null)
        {
            flag = false;
        } else
        {
            _fldelse = flag;
            e = Jni._mthif(s);
            com.baidu.location.j._mthif(_fldnew, (new StringBuilder()).append("bloc : ").append(e).toString());
            m = handler;
            if(_fldfor == null)
                _fldfor = com.baidu.location.k._mthdo();
            (new _cls2()).start();
        }
        return flag;
    }

    static boolean _mthif(boolean flag)
    {
        _fldelse = flag;
        return flag;
    }

    static Handler _mthint()
    {
        return m;
    }

    static String _mthlong()
    {
        return _fldnew;
    }

    static int _mthnew()
    {
        return _fldvoid;
    }

    static Handler _mthtry()
    {
        return _fldint;
    }

    static String _mthvoid()
    {
        return k;
    }

    private static int a = 0;
    private static boolean b = false;
    private static final int _fldbyte = 1;
    private static Handler c = null;
    private static final int _fldcase = 2;
    private static boolean _fldchar = false;
    private static int d = 0;
    private static String _flddo;
    private static String e;
    private static boolean _fldelse = false;
    private static ArrayList f = null;
    private static String _fldfor;
    private static int g = 0;
    private static int _fldgoto = 0;
    private static boolean h = false;
    private static final int i = 4;
    private static Uri _fldif = null;
    private static Handler _fldint = null;
    private static boolean j = false;
    private static String k = "10.0.0.172";
    private static String l;
    private static String _fldlong = null;
    private static Handler m = null;
    public static final int n = 3;
    private static String _fldnew = "baidu_location_service";
    private static int _fldtry = 4;
    private static int _fldvoid = 3;

    static 
    {
        d = 2048;
        j = false;
        _fldelse = false;
        b = false;
        _fldchar = false;
        h = false;
        a = 12000;
        g = 80;
        _fldgoto = 0;
    }

    private class _cls4 extends Thread
    {

        public void run()
        {
            boolean flag;
            int i1;
            flag = true;
            i1 = 3;
_L14:
            if(i1 <= 0) goto _L2; else goto _L1
_L1:
            HttpPost httppost;
            ArrayList arraylist;
            httppost = new HttpPost(com.baidu.location.j._mthdo());
            arraylist = new ArrayList();
            if(!g._mthbyte()) goto _L4; else goto _L3
_L3:
            arraylist.add(new BasicNameValuePair("qt", "grid"));
_L13:
            HttpResponse httpresponse;
            arraylist.add(new BasicNameValuePair("req", g._mthdo()));
            httppost.setEntity(new UrlEncodedFormEntity(arraylist, "utf-8"));
            DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
            defaulthttpclient.getParams().setParameter("http.connection.timeout", Integer.valueOf(g.b()));
            defaulthttpclient.getParams().setParameter("http.socket.timeout", Integer.valueOf(g.b()));
            com.baidu.location.j._mthif(g._mthlong(), "req config...");
            httpresponse = defaulthttpclient.execute(httppost);
            if(httpresponse.getStatusLine().getStatusCode() != 200) goto _L6; else goto _L5
_L5:
            if(!g._mthbyte()) goto _L8; else goto _L7
_L7:
            com.baidu.location.j._mthif(g._mthlong(), "req config response...");
            byte abyte0[] = EntityUtils.toByteArray(httpresponse.getEntity());
            if(abyte0 != null) goto _L10; else goto _L9
_L9:
            flag = false;
_L15:
            if(flag)
                g._mthfor();
_L2:
            com.baidu.location.j._mthif();
            if(j.t == -1) goto _L12; else goto _L11
_L11:
            int j1;
            j1 = j.t;
            com.baidu.location.j._mthif(j.t);
_L18:
            if(j1 != -1)
                com.baidu.location.j.a(j1);
            g._mthcase().obtainMessage(92).sendToTarget();
            g._mthdo(null);
_L19:
            g.a(null);
            g._mthfor(false);
            return;
_L4:
            Exception exception1;
            arraylist.add(new BasicNameValuePair("qt", "conf"));
              goto _L13
_L6:
            try
            {
                httppost.abort();
            }
            // Misplaced declaration of an exception variable
            catch(Exception exception1)
            {
                com.baidu.location.j._mthif(g._mthlong(), "Exception!!!");
            }
            i1--;
              goto _L14
_L10:
label0:
            {
                if(abyte0.length >= 640)
                    break label0;
                com.baidu.location.j._mthif(g._mthlong(), "req config response.<640.");
                j.ag = false;
                j.o = 0.025000000000000001D + j.Z;
                j._fldif = j.J - 0.025000000000000001D;
            }
              goto _L15
            j.ag = true;
            long1 = Long.valueOf((255L & (long)abyte0[7]) << 56 | (255L & (long)abyte0[6]) << 48 | (255L & (long)abyte0[5]) << 40 | (255L & (long)abyte0[4]) << 32 | (255L & (long)abyte0[3]) << 24 | (255L & (long)abyte0[2]) << 16 | (255L & (long)abyte0[1]) << 8 | 255L & (long)abyte0[0]);
            com.baidu.location.j._mthif(g._mthlong(), "req config 1...");
            j._fldif = Double.longBitsToDouble(long1.longValue());
            com.baidu.location.j._mthif(g._mthlong(), (new StringBuilder()).append("req config response:").append(Double.longBitsToDouble(long1.longValue())).toString());
            long2 = Long.valueOf((255L & (long)abyte0[15]) << 56 | (255L & (long)abyte0[14]) << 48 | (255L & (long)abyte0[13]) << 40 | (255L & (long)abyte0[12]) << 32 | (255L & (long)abyte0[11]) << 24 | (255L & (long)abyte0[10]) << 16 | (255L & (long)abyte0[9]) << 8 | 255L & (long)abyte0[8]);
            j.o = Double.longBitsToDouble(long2.longValue());
            j.j = new byte[625];
            com.baidu.location.j._mthif(g._mthlong(), (new StringBuilder()).append("req config response:").append(Double.longBitsToDouble(long2.longValue())).toString());
            k1 = 0;
_L17:
            if(k1 >= 625) goto _L15; else goto _L16
_L16:
            j.j[k1] = abyte0[k1 + 16];
            com.baidu.location.j._mthif(g._mthlong(), (new StringBuilder()).append("req config value:").append(j.j[k1]).toString());
            k1++;
              goto _L17
              goto _L15
_L8:
            s = EntityUtils.toString(httpresponse.getEntity(), "utf-8");
            com.baidu.location.j._mthif(g._mthlong(), (new StringBuilder()).append("req config value:").append(s).toString());
            Exception exception;
            try
            {
                if(g._mthif(s))
                {
                    com.baidu.location.j._mthif(g._mthlong(), "Save to config");
                    g.c();
                }
            }
            catch(Exception exception2) { }
            try
            {
                jsonobject = new JSONObject(s);
                if(jsonobject.has("ctr"))
                    j.t = Integer.parseInt(jsonobject.getString("ctr"));
            }
            // Misplaced declaration of an exception variable
            catch(Exception exception3) { }
              goto _L2
_L12:
            if(j._fldnew == -1)
                break MISSING_BLOCK_LABEL_887;
            j1 = j._fldnew;
              goto _L18
            exception;
            g._mthdo(null);
              goto _L19
            j1 = -1;
              goto _L18
            Exception exception4;
            exception4;
              goto _L2
        }

        _cls4()
        {
        }
    }


    private class _cls1 extends Thread
    {

        public void run()
        {
            int i1 = g._mthnew();
_L2:
            if(i1 <= 0)
                break MISSING_BLOCK_LABEL_411;
            HttpPost httppost;
            httppost = new HttpPost(com.baidu.location.j._mthdo());
            ArrayList arraylist = new ArrayList();
            arraylist.add(new BasicNameValuePair("bloc", g._mthelse()));
            if(g._mthgoto() != null)
                arraylist.add(new BasicNameValuePair("up", g._mthgoto()));
            httppost.setEntity(new UrlEncodedFormEntity(arraylist, "utf-8"));
            DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
            defaulthttpclient.getParams().setParameter("http.connection.timeout", Integer.valueOf(g.b()));
            defaulthttpclient.getParams().setParameter("http.socket.timeout", Integer.valueOf(g.b()));
            HttpProtocolParams.setUseExpectContinue(defaulthttpclient.getParams(), false);
            com.baidu.location.j._mthif(g._mthlong(), (new StringBuilder()).append("apn type : ").append(g.e()).toString());
            if((g.e() == 1 || g.e() == 4) && (g._mthnew() - i1) % 2 == 0)
            {
                com.baidu.location.j._mthif(g._mthlong(), (new StringBuilder()).append("apn type : ADD PROXY").append(g._mthvoid()).append(g.g()).toString());
                HttpHost httphost = new HttpHost(g._mthvoid(), g.g(), "http");
                defaulthttpclient.getParams().setParameter("http.route.default-proxy", httphost);
            }
            HttpResponse httpresponse = defaulthttpclient.execute(httppost);
            int j1 = httpresponse.getStatusLine().getStatusCode();
            com.baidu.location.j._mthif(g._mthlong(), (new StringBuilder()).append("===status error : ").append(j1).toString());
            if(j1 != 200)
                break MISSING_BLOCK_LABEL_451;
            String s = EntityUtils.toString(httpresponse.getEntity(), "utf-8");
            org.apache.http.Header header = httpresponse.getEntity().getContentType();
            com.baidu.location.j._mthif(g._mthlong(), (new StringBuilder()).append("status error : ").append(header).toString());
            Message message1 = g._mthtry().obtainMessage(21);
            message1.obj = s;
            message1.sendToTarget();
            g._mthdo(null);
            if(i1 <= 0 && g._mthtry() != null)
            {
                com.baidu.location.j._mthif(g._mthlong(), "have tried 3 times...");
                g._mthtry().obtainMessage(62).sendToTarget();
            }
            g._mthif(null);
            g.a(false);
            return;
            try
            {
                httppost.abort();
                Message message = g._mthtry().obtainMessage(63);
                message.obj = "HttpStatus error";
                message.sendToTarget();
            }
            catch(Exception exception)
            {
                exception.printStackTrace();
            }
            i1--;
            if(true) goto _L2; else goto _L1
_L1:
        }

        _cls1()
        {
        }
    }


    private class _cls3 extends Thread
    {

        public void run()
        {
            HttpPost httppost;
            ArrayList arraylist;
            httppost = new HttpPost(com.baidu.location.j._mthdo());
            arraylist = new ArrayList();
            Exception exception;
            Exception exception1;
            DefaultHttpClient defaulthttpclient;
            for(int i1 = 0; i1 < g.d().size(); i1++)
            {
                if(g._mthchar() == 1)
                    arraylist.add(new BasicNameValuePair((new StringBuilder()).append("cldc[").append(i1).append("]").toString(), (String)g.d().get(i1)));
                else
                    arraylist.add(new BasicNameValuePair((new StringBuilder()).append("cltr[").append(i1).append("]").toString(), (String)g.d().get(i1)));
                break MISSING_BLOCK_LABEL_285;
            }

              goto _L1
            exception1;
            g._mthdo(false);
_L3:
            return;
_L1:
            httppost.setEntity(new UrlEncodedFormEntity(arraylist, "utf-8"));
            defaulthttpclient = new DefaultHttpClient();
            defaulthttpclient.getParams().setParameter("http.connection.timeout", Integer.valueOf(g.b()));
            defaulthttpclient.getParams().setParameter("http.socket.timeout", Integer.valueOf(g.b()));
            if(defaulthttpclient.execute(httppost).getStatusLine().getStatusCode() != 200)
                break; /* Loop/switch isn't completed */
            com.baidu.location.j._mthif(g._mthlong(), "Status ok1...");
            g.d().clear();
            g.a(null);
_L4:
            g._mthdo(false);
            if(true) goto _L3; else goto _L2
_L2:
            com.baidu.location.j._mthif(g._mthlong(), "Status err1...");
              goto _L4
            exception;
            g._mthdo(false);
            throw exception;
        }

        _cls3()
        {
        }
    }


    private class _cls2 extends Thread
    {

        public void run()
        {
            int i1 = g._mthnew();
_L2:
            if(i1 <= 0)
                break MISSING_BLOCK_LABEL_294;
            HttpPost httppost;
            httppost = new HttpPost(com.baidu.location.j._mthdo());
            ArrayList arraylist = new ArrayList();
            arraylist.add(new BasicNameValuePair("bloc", g._mthif()));
            if(g.a() != null)
                arraylist.add(new BasicNameValuePair("up", g.a()));
            httppost.setEntity(new UrlEncodedFormEntity(arraylist, "utf-8"));
            DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
            defaulthttpclient.getParams().setParameter("http.connection.timeout", Integer.valueOf(g.b()));
            defaulthttpclient.getParams().setParameter("http.socket.timeout", Integer.valueOf(g.b()));
            HttpProtocolParams.setUseExpectContinue(defaulthttpclient.getParams(), false);
            if(g.e() == 1)
            {
                HttpHost httphost = new HttpHost(g._mthvoid(), g.g(), "http");
                defaulthttpclient.getParams().setParameter("http.route.default-proxy", httphost);
            }
            HttpResponse httpresponse = defaulthttpclient.execute(httppost);
            int j1 = httpresponse.getStatusLine().getStatusCode();
            com.baidu.location.j._mthif(g._mthlong(), (new StringBuilder()).append("===status error : ").append(j1).toString());
            if(j1 != 200)
                break MISSING_BLOCK_LABEL_334;
            String s = EntityUtils.toString(httpresponse.getEntity(), "utf-8");
            Message message1 = g._mthint().obtainMessage(26);
            message1.obj = s;
            message1.sendToTarget();
            g._mthdo(null);
            if(i1 <= 0 && g._mthint() != null)
            {
                com.baidu.location.j._mthif(g._mthlong(), "have tried 3 times...");
                g._mthint().obtainMessage(64).sendToTarget();
            }
            g.a(null);
            g._mthif(false);
            return;
            try
            {
                httppost.abort();
                Message message = g._mthint().obtainMessage(65);
                message.obj = "HttpStatus error";
                message.sendToTarget();
            }
            catch(Exception exception) { }
            i1--;
            if(true) goto _L2; else goto _L1
_L1:
        }

        _cls2()
        {
        }
    }

}
