// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;

import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;

// Referenced classes of package com.baidu.location:
//            f, j

class h
{
    private static class a
    {

        static double a(a a1, double d)
        {
            a1._fldnew = d;
            return d;
        }

        static float a(a a1)
        {
            return a1._fldfor;
        }

        static float a(a a1, float f1)
        {
            a1._fldfor = f1;
            return f1;
        }

        static int _mthdo(a a1)
        {
            return a1._flddo;
        }

        static int _mthfor(a a1)
        {
            return a1._fldif;
        }

        static double _mthif(a a1)
        {
            return a1._fldnew;
        }

        static double _mthif(a a1, double d)
        {
            a1._fldint = d;
            return d;
        }

        static double _mthint(a a1)
        {
            return a1._fldint;
        }

        static int _mthnew(a a1)
        {
            return a1.a;
        }

        static int _mthtry(a a1)
        {
            return a1._fldtry;
        }

        public boolean a(int i, int k, int l)
        {
            boolean flag;
            if(a == i && _flddo == k && _fldtry == l)
                flag = true;
            else
                flag = false;
            return flag;
        }

        private int a;
        private int _flddo;
        private float _fldfor;
        private int _fldif;
        private double _fldint;
        private double _fldnew;
        private int _fldtry;

        public a(int i, int k, int l, int i1, double d, double d1, float f1)
        {
            _flddo = 0;
            _fldtry = 0;
            _fldif = 0;
            a = 0;
            _fldnew = 0.0D;
            _fldint = 0.0D;
            _fldfor = 0.0F;
            _flddo = i;
            _fldtry = k;
            _fldif = l;
            a = i1;
            _fldnew = d;
            _fldint = d1;
            _fldfor = f1;
        }
    }


    h()
    {
    }

    public static String a(int i, int k, int l)
    {
        a a1 = _mthif(i, k, l);
        String s;
        if(a1 != null)
        {
            String s1 = (new StringBuilder()).append("{\"result\":{\"time\":\"").append(j._mthfor()).append("\",\"error\":\"65\"},\"content\":{\"point\":{\"x\":").append("\"%f\",\"y\":\"%f\"},\"radius\":\"%d\"}}").toString();
            Object aobj[] = new Object[3];
            aobj[0] = Double.valueOf(a._mthif(a1));
            aobj[1] = Double.valueOf(a._mthint(a1));
            aobj[2] = Integer.valueOf((int)a.a(a1));
            s = String.format(s1, aobj);
        } else
        {
            s = null;
        }
        return s;
    }

    private static void a()
    {
        File file = new File(_flddo);
        try
        {
            if(!file.exists())
            {
                j._mthif(_fldif, "locCache file does not exists...");
            } else
            {
                if(_fldint != null)
                {
                    _fldint.clear();
                    _fldint = null;
                }
                _fldint = new ArrayList();
                RandomAccessFile randomaccessfile = new RandomAccessFile(file, "rw");
                randomaccessfile.seek(0L);
                int i = randomaccessfile.readInt();
                j._mthif(_fldif, (new StringBuilder()).append("size of loc cache is ").append(i).toString());
                for(int k = 0; k < i; k++)
                {
                    randomaccessfile.seek(_fldtry + (long)(k * _fldnew));
                    float f1 = randomaccessfile.readFloat();
                    int l = randomaccessfile.readInt();
                    double d = randomaccessfile.readDouble();
                    int i1 = randomaccessfile.readInt();
                    double d1 = randomaccessfile.readDouble();
                    a a1 = new a(randomaccessfile.readInt(), randomaccessfile.readInt(), l, i1, d, d1, f1);
                    _fldint.add(a1);
                }

                randomaccessfile.close();
            }
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public static void a(c.a a1, double d, double d1, float f1)
    {
        if(a1 != null)
        {
            float f2;
            a a2;
            if(f1 < _fldfor)
                f2 = _fldfor;
            else
                f2 = f1;
            a2 = _mthif(a1._fldif, a1._fldfor, a1._fldtry);
            if(a2 == null)
            {
                if(_fldint == null)
                    _fldint = new ArrayList();
                a a3 = new a(a1._fldfor, a1._fldtry, a1._flddo, a1._fldif, d, d1, f2);
                _fldint.add(a3);
                if(_fldint.size() > a)
                    _fldint.remove(0);
                j._mthif(_fldif, "locCache add new cell info into loc cache ...");
            } else
            {
                a.a(a2, d);
                a._mthif(a2, d1);
                a.a(a2, f2);
                j._mthif(_fldif, "locCache update loc cache ...");
            }
        }
    }

    private static void _mthdo()
    {
        if(_fldint != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        File file = new File(_flddo);
        if(file.exists()) goto _L4; else goto _L3
_L3:
        File file1 = new File(f.ac);
        if(!file1.exists())
        {
            boolean flag = file1.mkdirs();
            j._mthif(_fldif, (new StringBuilder()).append("locCache make dirs ").append(flag).toString());
        }
        if(!file.createNewFile()) goto _L6; else goto _L5
_L5:
        j._mthif(_fldif, "locCache create loc cache file success ...");
_L4:
        RandomAccessFile randomaccessfile;
        int i;
        int k;
        randomaccessfile = new RandomAccessFile(file, "rw");
        if(randomaccessfile.length() < 1L)
            randomaccessfile.writeInt(0);
        i = -1 + _fldint.size();
        k = 0;
_L10:
        if(i < 0) goto _L8; else goto _L7
_L7:
        a a1;
        a1 = (a)_fldint.get(i);
        if(a1 == null)
            break MISSING_BLOCK_LABEL_285;
          goto _L9
_L6:
        j._mthif(_fldif, "locCache create loc cache file failure ...");
          goto _L1
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L1
_L9:
        randomaccessfile.seek(_fldtry + (long)(_fldnew * (i % a)));
        randomaccessfile.writeFloat(a.a(a1));
        randomaccessfile.writeInt(a._mthfor(a1));
        randomaccessfile.writeDouble(a._mthif(a1));
        randomaccessfile.writeInt(a._mthnew(a1));
        randomaccessfile.writeDouble(a._mthint(a1));
        randomaccessfile.writeInt(a._mthdo(a1));
        randomaccessfile.writeInt(a._mthtry(a1));
        j._mthif(_fldif, "add a new cell loc into file ...");
        break MISSING_BLOCK_LABEL_285;
_L8:
        randomaccessfile.seek(0L);
        randomaccessfile.writeInt(k);
        randomaccessfile.close();
          goto _L1
        i--;
        k++;
          goto _L10
    }

    private static a _mthif(int i, int k, int l)
    {
        int i1;
        if(_fldint == null || _fldint.size() < 1)
            a();
        if(_fldint == null || _fldint.size() < 1)
            break MISSING_BLOCK_LABEL_104;
        i1 = -1 + _fldint.size();
_L1:
        a a1;
        boolean flag;
        if(i1 < 0)
            break MISSING_BLOCK_LABEL_98;
        a1 = (a)_fldint.get(i1);
        if(a1 == null)
            break MISSING_BLOCK_LABEL_87;
        flag = a1.a(i, k, l);
        if(flag)
            break MISSING_BLOCK_LABEL_107;
        i1--;
          goto _L1
        Exception exception;
        exception;
        exception.printStackTrace();
        a1 = null;
        break MISSING_BLOCK_LABEL_107;
        a1 = null;
        return a1;
    }

    public static void _mthif()
    {
        _mthdo();
    }

    private static int a = 100;
    private static String _flddo;
    private static float _fldfor = 299F;
    private static String _fldif = "baidu_location_service";
    private static ArrayList _fldint = null;
    private static int _fldnew = 64;
    private static long _fldtry = 64L;

    static 
    {
        _flddo = (new StringBuilder()).append(f.ac).append("/juz.dat").toString();
    }
}
