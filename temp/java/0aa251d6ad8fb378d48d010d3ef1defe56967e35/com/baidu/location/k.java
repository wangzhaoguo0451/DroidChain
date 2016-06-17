// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;

import android.location.Location;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.baidu.location:
//            f, j, Jni, b

class k
{

    k()
    {
    }

    private static int a(List list, int i1)
    {
        if(list != null && i1 <= 256 && i1 >= 0) goto _L2; else goto _L1
_L1:
        int j1 = -1;
_L3:
        return j1;
_L2:
label0:
        {
            if(_fldelse != null)
                break label0;
            _fldelse = new File(y);
            if(_fldelse.exists())
                break label0;
            com.baidu.location.j._mthif(_flddo, "upload man readfile does not exist...");
            _fldelse = null;
            j1 = -2;
        }
          goto _L3
        RandomAccessFile randomaccessfile;
        int k1;
        int l1;
        int i2;
        int j2;
        long l2;
        randomaccessfile = new RandomAccessFile(_fldelse, "rw");
        if(randomaccessfile.length() < 1L)
        {
            randomaccessfile.close();
            j1 = -3;
        } else
        {
            randomaccessfile.seek(i1);
            k1 = randomaccessfile.readInt();
            l1 = randomaccessfile.readInt();
            i2 = randomaccessfile.readInt();
            j2 = randomaccessfile.readInt();
            l2 = randomaccessfile.readLong();
            if(a(k1, l1, i2, j2, l2) && l1 >= 1)
                break MISSING_BLOCK_LABEL_176;
            randomaccessfile.close();
            j1 = -4;
        }
          goto _L3
        byte abyte0[];
        int i3;
        int j3;
        abyte0 = new byte[o];
        int k2 = _fldbyte;
        i3 = l1;
        j3 = k2;
_L4:
        int k3;
        if(j3 > 0 && i3 > 0)
        {
            randomaccessfile.seek(l2 + (long)(j2 * ((-1 + (k1 + i3)) % i2)));
            int l3 = randomaccessfile.readInt();
            if(l3 > 0 && l3 < j2)
            {
                randomaccessfile.read(abyte0, 0, l3);
                if(abyte0[l3 - 1] == 0)
                    list.add(new String(abyte0, 0, l3 - 1));
            }
            break MISSING_BLOCK_LABEL_361;
        }
        randomaccessfile.seek(i1);
        randomaccessfile.writeInt(k1);
        randomaccessfile.writeInt(i3);
        randomaccessfile.writeInt(i2);
        randomaccessfile.writeInt(j2);
        randomaccessfile.writeLong(l2);
        randomaccessfile.close();
        k3 = _fldbyte;
        j1 = k3 - j3;
          goto _L3
        Exception exception;
        exception;
        j1 = -5;
          goto _L3
        j3--;
        i3--;
          goto _L4
    }

    public static String a(int i1)
    {
        String s1 = null;
        String s2;
        ArrayList arraylist;
        if(i1 == 1)
        {
            s2 = u;
            arraylist = x;
        } else
        if(i1 == 2)
        {
            s2 = t;
            arraylist = j;
        } else
        {
            if(i1 != 3)
                continue;
            s2 = k;
            arraylist = r;
        }
        do
        {
            if(arraylist != null)
            {
                if(arraylist.size() < 1)
                {
                    com.baidu.location.j._mthif(_flddo, (new StringBuilder()).append(s2).append(":get data from sd file...").toString());
                    a(s2, ((List) (arraylist)));
                }
                if(arraylist.size() > 0)
                {
                    s1 = (String)arraylist.get(0);
                    arraylist.remove(0);
                }
            }
            do
                return s1;
            while(i1 != 4);
            s2 = p;
            arraylist = r;
        } while(true);
    }

    public static void a()
    {
        b = 0;
        com.baidu.location.j._mthif(_flddo, "flush data...");
        a(1, false);
        a(2, false);
        a(3, false);
        b = 8;
    }

    public static void a(double d1, double d2, double d3, double d4)
    {
        if(d1 <= 0.0D)
            d1 = _fldnew;
        _fldnew = d1;
        n = d2;
        if(d3 <= 20D)
            d3 = _fldvoid;
        _fldvoid = d3;
        _fldint = d4;
    }

    public static void a(int i1, int j1)
    {
    }

    public static void a(int i1, int j1, boolean flag)
    {
    }

    public static void a(int i1, boolean flag)
    {
        if(i1 != 1) goto _L2; else goto _L1
_L1:
        String s5 = u;
        if(!flag) goto _L4; else goto _L3
_L3:
        return;
_L4:
        String s2;
        ArrayList arraylist1;
        ArrayList arraylist6 = x;
        s2 = s5;
        arraylist1 = arraylist6;
_L12:
        File file;
        file = new File(s2);
        if(!file.exists())
            a(s2);
        RandomAccessFile randomaccessfile;
        int j1;
        int k1;
        int l1;
        int i2;
        int k2;
        int l2;
        randomaccessfile = new RandomAccessFile(file, "rw");
        randomaccessfile.seek(4L);
        j1 = randomaccessfile.readInt();
        k1 = randomaccessfile.readInt();
        l1 = randomaccessfile.readInt();
        i2 = randomaccessfile.readInt();
        int j2 = randomaccessfile.readInt();
        k2 = arraylist1.size();
        l2 = j2;
_L11:
        if(k2 <= b) goto _L6; else goto _L5
_L5:
        com.baidu.location.j._mthif(_flddo, "write new data...");
        if(!flag) goto _L8; else goto _L7
_L7:
        int i3 = l2 + 1;
_L18:
        if(l1 >= j1) goto _L10; else goto _L9
_L9:
        randomaccessfile.seek(128 + k1 * l1);
        byte abyte1[] = (new StringBuilder()).append((String)arraylist1.get(0)).append('\0').toString().getBytes();
        randomaccessfile.writeInt(abyte1.length);
        randomaccessfile.write(abyte1, 0, abyte1.length);
        arraylist1.remove(0);
        int j3;
        int k3;
        int i4 = l1 + 1;
        int j4 = i2;
        k3 = i4;
        j3 = j4;
_L20:
        k2--;
        l1 = k3;
        i2 = j3;
        l2 = i3;
          goto _L11
_L2:
label0:
        {
            if(i1 != 2)
                break label0;
            String s4 = t;
            if(flag)
            {
                ArrayList arraylist5 = x;
                s2 = s4;
                arraylist1 = arraylist5;
            } else
            {
                ArrayList arraylist4 = j;
                s2 = s4;
                arraylist1 = arraylist4;
            }
        }
          goto _L12
        if(i1 != 3) goto _L14; else goto _L13
_L13:
        String s3 = k;
        if(flag)
        {
            ArrayList arraylist3 = j;
            s2 = s3;
            arraylist1 = arraylist3;
        } else
        {
            ArrayList arraylist2 = r;
            s2 = s3;
            arraylist1 = arraylist2;
        }
          goto _L12
_L14:
        if(i1 != 4) goto _L3; else goto _L15
_L15:
        String s1 = p;
        if(!flag) goto _L3; else goto _L16
_L16:
        ArrayList arraylist = r;
        s2 = s1;
        arraylist1 = arraylist;
          goto _L12
_L10:
        long l3;
        if(!flag)
            break MISSING_BLOCK_LABEL_567;
        l3 = 128 + i2 * k1;
        randomaccessfile.seek(l3);
        byte abyte0[] = (new StringBuilder()).append((String)arraylist1.get(0)).append('\0').toString().getBytes();
        randomaccessfile.writeInt(abyte0.length);
        randomaccessfile.write(abyte0, 0, abyte0.length);
        arraylist1.remove(0);
        j3 = i2 + 1;
        if(j3 > l1)
            j3 = 0;
          goto _L17
_L19:
        boolean flag1;
        randomaccessfile.seek(12L);
        randomaccessfile.writeInt(l1);
        randomaccessfile.writeInt(i2);
        randomaccessfile.writeInt(l2);
        randomaccessfile.close();
        if(flag1 && i1 < 4)
            a(i1 + 1, true);
          goto _L3
        Exception exception;
        exception;
          goto _L3
_L8:
        i3 = l2;
          goto _L18
_L6:
        flag1 = false;
          goto _L19
_L17:
        k3 = l1;
          goto _L20
        flag1 = true;
        l2 = i3;
          goto _L19
    }

    public static void a(c.a a1, e.c c1, Location location, String s1)
    {
        Object obj;
        obj = null;
        break MISSING_BLOCK_LABEL_3;
        while(true) 
        {
            do
                return;
            while(!j.O || j.I == 3 && !a(location, c1) && !a(location, false));
            if(a1 != null && a1._mthdo())
            {
                if(!a(location, c1))
                    c1 = null;
                String s5 = com.baidu.location.j.a(a1, c1, location, s1, 1);
                if(s5 != null)
                {
                    _mthfor(Jni._mthif(s5));
                    q = location;
                    e = location;
                    if(c1 != null)
                        g = c1;
                }
            } else
            if(c1 != null && c1._mthif() && a(location, c1))
            {
                String s2;
                String s3;
                if(a(location))
                    obj = a1;
                s3 = com.baidu.location.j.a(((c.a) (obj)), c1, location, s1, 2);
                if(s3 != null)
                {
                    String s4 = Jni._mthif(s3);
                    com.baidu.location.j._mthif(_flddo, (new StringBuilder()).append("upload size:").append(s4.length()).toString());
                    _mthdo(s4);
                    a = location;
                    e = location;
                    if(c1 != null)
                        g = c1;
                }
            } else
            {
                if(!a(location))
                    a1 = null;
                if(a(location, c1))
                    obj = c1;
                if(a1 != null || obj != null)
                {
                    s2 = com.baidu.location.j.a(a1, ((e.c) (obj)), location, s1, 3);
                    if(s2 != null)
                    {
                        _mthint(Jni._mthif(s2));
                        e = location;
                        if(obj != null)
                            g = ((e.c) (obj));
                    }
                }
            }
        }
    }

    public static void a(String s1)
    {
        File file = new File(s1);
        if(!file.exists())
        {
            File file1 = new File(f.ac);
            if(!file1.exists())
                file1.mkdirs();
            if(!file.createNewFile())
                file = null;
            RandomAccessFile randomaccessfile = new RandomAccessFile(file, "rw");
            randomaccessfile.seek(0L);
            randomaccessfile.writeInt(32);
            randomaccessfile.writeInt(2048);
            randomaccessfile.writeInt(1040);
            randomaccessfile.writeInt(0);
            randomaccessfile.writeInt(0);
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

    public static void a(String s1, int i1)
    {
    }

    public static void a(String s1, int i1, boolean flag)
    {
    }

    private static boolean a(int i1, int j1, int k1, int l1, long l2)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_3;
        if(i1 >= 0 && i1 < k1 && j1 >= 0 && j1 <= k1 && k1 >= 0 && k1 <= 1024 && l1 >= 128 && l1 <= 1024)
            flag = true;
        return flag;
    }

    private static boolean a(Location location)
    {
        boolean flag = true;
        if(location != null) goto _L2; else goto _L1
_L1:
        flag = false;
_L4:
        return flag;
_L2:
        if(q == null || e == null)
        {
            q = location;
        } else
        {
            double d1 = location.distanceTo(q);
            double d2 = d1 * (d1 * (double)j.u) + d1 * (double)j.s + (double)j.r;
            if((double)location.distanceTo(e) <= d2)
                flag = false;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static boolean a(Location location, e.c c1)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(location != null && c1 != null && c1._fldfor != null && !c1._fldfor.isEmpty() && !c1._mthdo(g))
            if(a == null)
            {
                a = location;
                flag = true;
            } else
            {
                flag = true;
            }
        return flag;
    }

    public static boolean a(Location location, boolean flag)
    {
        return com.baidu.location.b.a(e, location, flag);
    }

    public static boolean a(String s1, List list)
    {
        File file = new File(s1);
        if(file.exists()) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L3:
        return flag;
_L2:
        RandomAccessFile randomaccessfile;
        int i1;
        int j1;
        int k1;
        byte abyte0[];
        int l1;
        randomaccessfile = new RandomAccessFile(file, "rw");
        randomaccessfile.seek(8L);
        i1 = randomaccessfile.readInt();
        j1 = randomaccessfile.readInt();
        k1 = randomaccessfile.readInt();
        abyte0 = new byte[o];
        l1 = b;
        int j2;
        int k2;
        int i2 = l1 + 1;
        j2 = j1;
        k2 = i2;
        flag = false;
_L4:
        long l2;
        if(k2 <= 0 || j2 <= 0)
            break MISSING_BLOCK_LABEL_192;
        if(j2 < k1)
            k1 = 0;
        l2 = 128 + i1 * (j2 - 1);
        randomaccessfile.seek(l2);
        int i3 = randomaccessfile.readInt();
        if(i3 > 0 && i3 < i1)
        {
            randomaccessfile.read(abyte0, 0, i3);
            if(abyte0[i3 - 1] == 0)
            {
                list.add(new String(abyte0, 0, i3 - 1));
                flag = true;
            }
        }
        break MISSING_BLOCK_LABEL_231;
        randomaccessfile.seek(12L);
        randomaccessfile.writeInt(j2);
        randomaccessfile.writeInt(k1);
        randomaccessfile.close();
          goto _L3
        Exception exception1;
        exception1;
          goto _L3
        Exception exception;
        exception;
        flag = false;
          goto _L3
        k2--;
        j2--;
          goto _L4
    }

    public static String _mthdo()
    {
        return _mthint();
    }

    private static void _mthdo(String s1)
    {
        _mthif(s1);
    }

    public static void _mthfor()
    {
    }

    private static void _mthfor(String s1)
    {
        _mthif(s1);
    }

    public static String _mthif()
    {
        String s1;
        File file;
        s1 = null;
        file = new File(t);
        if(!file.exists()) goto _L2; else goto _L1
_L1:
        RandomAccessFile randomaccessfile2;
        int k1;
        randomaccessfile2 = new RandomAccessFile(file, "rw");
        randomaccessfile2.seek(20L);
        k1 = randomaccessfile2.readInt();
        if(k1 <= 128) goto _L2; else goto _L3
_L3:
        s1 = (new StringBuilder()).append("&p1=").append(k1).toString();
        randomaccessfile2.seek(20L);
        randomaccessfile2.writeInt(0);
        randomaccessfile2.close();
_L5:
        return s1;
        Exception exception2;
        exception2;
_L2:
        File file1 = new File(k);
        if(file1.exists())
            try
            {
                RandomAccessFile randomaccessfile1 = new RandomAccessFile(file1, "rw");
                randomaccessfile1.seek(20L);
                int j1 = randomaccessfile1.readInt();
                if(j1 > 256)
                {
                    s1 = (new StringBuilder()).append("&p2=").append(j1).toString();
                    randomaccessfile1.seek(20L);
                    randomaccessfile1.writeInt(0);
                    randomaccessfile1.close();
                    continue; /* Loop/switch isn't completed */
                }
            }
            catch(Exception exception1) { }
        File file2 = new File(p);
        if(file2.exists())
            try
            {
                RandomAccessFile randomaccessfile = new RandomAccessFile(file2, "rw");
                randomaccessfile.seek(20L);
                int i1 = randomaccessfile.readInt();
                if(i1 > 512)
                {
                    s1 = (new StringBuilder()).append("&p3=").append(i1).toString();
                    randomaccessfile.seek(20L);
                    randomaccessfile.writeInt(0);
                    randomaccessfile.close();
                }
            }
            catch(Exception exception) { }
        if(true) goto _L5; else goto _L4
_L4:
    }

    public static void _mthif(String s1)
    {
        int i1;
        ArrayList arraylist;
        i1 = j.l;
        if(i1 == 1)
        {
            arraylist = x;
        } else
        {
            if(i1 != 2)
                continue;
            arraylist = j;
        }
_L2:
        if(arraylist != null)
            break; /* Loop/switch isn't completed */
_L3:
        do
            return;
        while(i1 != 3);
        arraylist = r;
        if(true) goto _L2; else goto _L1
_L1:
        com.baidu.location.j._mthif(_flddo, "insert2HighPriorityQueue...");
        if(arraylist.size() <= _fldtry)
            arraylist.add(s1);
        if(arraylist.size() >= _fldtry)
            a(i1, false);
        while(arraylist.size() > _fldtry) 
            arraylist.remove(0);
          goto _L3
        if(true) goto _L2; else goto _L4
_L4:
    }

    public static String _mthint()
    {
        String s1;
        int i1;
        s1 = null;
        i1 = 1;
_L3:
        if(i1 >= 5)
            break MISSING_BLOCK_LABEL_26;
        s1 = a(i1);
        if(s1 == null) goto _L2; else goto _L1
_L1:
        return s1;
_L2:
        i1++;
          goto _L3
        com.baidu.location.j._mthif(_flddo, "read the old file data...");
        a(r, _fldchar);
        if(r.size() > 0)
        {
            s1 = (String)r.get(0);
            r.remove(0);
        }
        if(s1 == null)
        {
            a(r, c);
            if(r.size() > 0)
            {
                s1 = (String)r.get(0);
                r.remove(0);
            }
            if(s1 == null)
            {
                a(r, v);
                if(r.size() > 0)
                {
                    s1 = (String)r.get(0);
                    r.remove(0);
                }
            }
        }
          goto _L1
    }

    private static void _mthint(String s1)
    {
        _mthif(s1);
    }

    public static void _mthnew()
    {
    }

    private static Location a = null;
    private static int b = 0;
    private static int _fldbyte = 0;
    private static int c = 0;
    private static int _fldcase = 0;
    private static int _fldchar = 0;
    private static final int d = 1040;
    private static String _flddo = "baidu_location_service";
    private static Location e = null;
    private static File _fldelse = null;
    private static final int f = 32;
    private static final int _fldfor = 2048;
    private static e.c g = null;
    private static final int _fldgoto = 128;
    private static ArrayList h = new ArrayList();
    private static int i = 0;
    private static final int _fldif = 2048;
    private static double _fldint = 0D;
    private static ArrayList j = new ArrayList();
    private static final String k;
    private static int l = 0;
    private static ArrayList _fldlong = new ArrayList();
    private static ArrayList m = new ArrayList();
    private static double n = 0D;
    private static double _fldnew = 0D;
    private static int o = 0;
    private static final String p;
    private static Location q = null;
    private static ArrayList r = new ArrayList();
    private static final int s = 2048;
    private static final String t;
    private static int _fldtry = 16;
    private static final String u;
    private static int v = 128;
    private static double _fldvoid = 30D;
    private static int w = 512;
    private static ArrayList x = new ArrayList();
    private static String y;

    static 
    {
        y = (new StringBuilder()).append(f.ac).append("/yo.dat").toString();
        u = (new StringBuilder()).append(f.ac).append("/yoh.dat").toString();
        t = (new StringBuilder()).append(f.ac).append("/yom.dat").toString();
        k = (new StringBuilder()).append(f.ac).append("/yol.dat").toString();
        p = (new StringBuilder()).append(f.ac).append("/yor.dat").toString();
        _fldcase = 1024;
        _fldbyte = 8;
        i = 5;
        b = 8;
        o = 1024;
        l = 256;
        _fldnew = 0.0D;
        n = 0.10000000000000001D;
        _fldint = 100D;
        c = 0;
        _fldchar = 64;
    }
}
