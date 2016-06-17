// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;

import android.content.Context;
import android.location.*;
import android.os.*;
import java.io.*;
import java.util.*;

// Referenced classes of package com.baidu.location:
//            f, j, g, Jni

class com.baidu.location.b
{
    public static class d
    {

        private String a(int i1)
        {
            String s1 = null;
            if(com.baidu.location.b.m().exists()) goto _L2; else goto _L1
_L1:
            return s1;
_L2:
            RandomAccessFile randomaccessfile;
            int j1;
            randomaccessfile = new RandomAccessFile(com.baidu.location.b.m(), "rw");
            randomaccessfile.seek(0L);
            j1 = randomaccessfile.readInt();
            if(com.baidu.location.b.a(j1, randomaccessfile.readInt(), randomaccessfile.readInt())) goto _L4; else goto _L3
_L3:
            randomaccessfile.close();
            com.baidu.location.b._mthlong();
              goto _L1
_L5:
            randomaccessfile.close();
              goto _L1
_L6:
            String s2;
            long l1 = 12L + 0L + (long)(1024 * (i1 - 1));
            randomaccessfile.seek(l1);
            int k1 = randomaccessfile.readInt();
            byte abyte0[] = new byte[k1];
            randomaccessfile.seek(l1 + 4L);
            for(int i2 = 0; i2 < k1; i2++)
                abyte0[i2] = randomaccessfile.readByte();

            randomaccessfile.close();
            s2 = new String(abyte0);
            s1 = s2;
              goto _L1
            IOException ioexception;
            ioexception;
              goto _L1
_L4:
            if(i1 != 0 && i1 != j1 + 1) goto _L6; else goto _L5
        }

        private void a()
        {
            if(com.baidu.location.b.c() != null && com.baidu.location.b.c().length() >= 100)
                a(com.baidu.location.b.c().toString());
            com.baidu.location.b.n();
        }

        static void a(d d1)
        {
            d1.a();
        }

        private boolean a(Location location)
        {
            return a(location, j.V, j.aa);
        }

        private boolean a(Location location, int i1, int j1)
        {
            if(location != null && j._fldvoid && a && j.P) goto _L2; else goto _L1
_L1:
            boolean flag = false;
_L5:
            return flag;
_L2:
            if(j.V < 5)
                j.V = 5;
            else
            if(j.V > 1000)
                j.V = 1000;
            if(j.aa >= 5) goto _L4; else goto _L3
_L3:
            j.aa = 5;
_L6:
            double d1 = location.getLongitude();
            double d2 = location.getLatitude();
            long l1 = location.getTime() / 1000L;
            if(com.baidu.location.b._mthelse())
            {
                com.baidu.location.b._mthif(1);
                com.baidu.location.b.a(new StringBuffer(""));
                StringBuffer stringbuffer2 = com.baidu.location.b.c();
                Object aobj2[] = new Object[4];
                aobj2[0] = _fldif;
                aobj2[1] = Long.valueOf(l1);
                aobj2[2] = Double.valueOf(d1);
                aobj2[3] = Double.valueOf(d2);
                stringbuffer2.append(String.format("&nr=%s&traj=%d,%.5f,%.5f|", aobj2));
                com.baidu.location.b._mthdo(com.baidu.location.b.c().length());
                com.baidu.location.b.a(l1);
                com.baidu.location.b._mthif(d1);
                com.baidu.location.b.a(d2);
                com.baidu.location.b._mthif((long)Math.floor(0.5D + d1 * 100000D));
                com.baidu.location.b._mthdo((long)Math.floor(0.5D + d2 * 100000D));
                com.baidu.location.b._mthif(false);
                flag = true;
            } else
            {
                float af[] = new float[1];
                Location.distanceBetween(d2, d1, com.baidu.location.b.d(), com.baidu.location.b.a(), af);
                long l2 = l1 - com.baidu.location.b.g();
                if(af[0] >= (float)j.V || l2 >= (long)j.aa)
                {
                    if(com.baidu.location.b.c() == null)
                    {
                        com.baidu.location.b.i();
                        com.baidu.location.b._mthdo(0);
                        com.baidu.location.b.a(new StringBuffer(""));
                        StringBuffer stringbuffer1 = com.baidu.location.b.c();
                        Object aobj1[] = new Object[4];
                        aobj1[0] = _fldif;
                        aobj1[1] = Long.valueOf(l1);
                        aobj1[2] = Double.valueOf(d1);
                        aobj1[3] = Double.valueOf(d2);
                        stringbuffer1.append(String.format("&nr=%s&traj=%d,%.5f,%.5f|", aobj1));
                        com.baidu.location.b._mthdo(com.baidu.location.b.c().length());
                        com.baidu.location.b.a(l1);
                        com.baidu.location.b._mthif(d1);
                        com.baidu.location.b.a(d2);
                        com.baidu.location.b._mthif((long)Math.floor(0.5D + d1 * 100000D));
                        com.baidu.location.b._mthdo((long)Math.floor(0.5D + d2 * 100000D));
                    } else
                    {
                        com.baidu.location.b._mthif(d1);
                        com.baidu.location.b.a(d2);
                        long l3 = (long)Math.floor(0.5D + d1 * 100000D);
                        long l4 = (long)Math.floor(0.5D + d2 * 100000D);
                        com.baidu.location.b._mthfor((int)(l1 - com.baidu.location.b.g()));
                        com.baidu.location.b._mthnew((int)(l3 - com.baidu.location.b.o()));
                        com.baidu.location.b._mthint((int)(l4 - com.baidu.location.b.b()));
                        StringBuffer stringbuffer = com.baidu.location.b.c();
                        Object aobj[] = new Object[3];
                        aobj[0] = Integer.valueOf(com.baidu.location.b._mthif());
                        aobj[1] = Integer.valueOf(com.baidu.location.b.e());
                        aobj[2] = Integer.valueOf(com.baidu.location.b._mthdo());
                        stringbuffer.append(String.format("%d,%d,%d|", aobj));
                        com.baidu.location.b._mthdo(com.baidu.location.b.c().length());
                        com.baidu.location.b.a(l1);
                        com.baidu.location.b._mthif(l3);
                        com.baidu.location.b._mthdo(l4);
                    }
                    if(15 + com.baidu.location.b._mthbyte() > 750)
                    {
                        a(com.baidu.location.b.c().toString());
                        com.baidu.location.b.a(null);
                    }
                    if(com.baidu.location.b._mthfor() >= j.L)
                        a = false;
                    flag = true;
                } else
                {
                    flag = false;
                }
            }
            if(true) goto _L5; else goto _L4
_L4:
            if(j.aa > 3600)
                j.aa = 3600;
              goto _L6
        }

        static boolean a(d d1, Location location)
        {
            return d1.a(location);
        }

        private boolean a(String s1)
        {
            boolean flag;
            flag = false;
            break MISSING_BLOCK_LABEL_2;
_L1:
            do
                return flag;
            while(s1 == null || !s1.startsWith("&nr") || !com.baidu.location.b.m().exists() && !com.baidu.location.b._mthlong());
            RandomAccessFile randomaccessfile;
            int i1;
            int j1;
            int k1;
label0:
            {
                randomaccessfile = new RandomAccessFile(com.baidu.location.b.m(), "rw");
                randomaccessfile.seek(0L);
                i1 = randomaccessfile.readInt();
                j1 = randomaccessfile.readInt();
                k1 = randomaccessfile.readInt();
                if(com.baidu.location.b.a(i1, j1, k1))
                    break label0;
                randomaccessfile.close();
                com.baidu.location.b._mthlong();
            }
              goto _L1
            if(!j._fldtry) goto _L3; else goto _L2
_L2:
            if(i1 == j.L) goto _L5; else goto _L4
_L4:
            if(k1 <= 1 || !s1.equals(a(k1 - 1))) goto _L3; else goto _L6
_L6:
            randomaccessfile.close();
              goto _L1
_L5:
            if(k1 != 1) goto _L8; else goto _L7
_L7:
            int i3 = j.L;
_L33:
            if(!s1.equals(a(i3))) goto _L3; else goto _L9
_L9:
            randomaccessfile.close();
              goto _L1
_L3:
            randomaccessfile.seek(0L + (long)(12 + 1024 * (k1 - 1)));
            if(s1.length() <= 750) goto _L11; else goto _L10
_L10:
            randomaccessfile.close();
              goto _L1
_L11:
            String s2;
            int l1;
            s2 = Jni._mthif(s1);
            l1 = s2.length();
            if(l1 <= 1020) goto _L13; else goto _L12
_L12:
            randomaccessfile.close();
              goto _L1
_L13:
            randomaccessfile.writeInt(l1);
            randomaccessfile.writeBytes(s2);
            if(i1 != 0) goto _L15; else goto _L14
_L14:
            randomaccessfile.seek(0L);
            randomaccessfile.writeInt(1);
            randomaccessfile.writeInt(1);
            randomaccessfile.writeInt(2);
_L18:
            randomaccessfile.close();
            flag = true;
              goto _L1
_L15:
            if(i1 >= -1 + j.L) goto _L17; else goto _L16
_L16:
            randomaccessfile.seek(0L);
            randomaccessfile.writeInt(i1 + 1);
            randomaccessfile.seek(8L);
            randomaccessfile.writeInt(i1 + 2);
              goto _L18
_L17:
            if(i1 != -1 + j.L) goto _L20; else goto _L19
_L19:
            randomaccessfile.seek(0L);
            randomaccessfile.writeInt(j.L);
            if(j1 == 0 || j1 == 1)
                randomaccessfile.writeInt(2);
            randomaccessfile.seek(8L);
            randomaccessfile.writeInt(1);
              goto _L18
_L20:
            if(k1 != j1) goto _L22; else goto _L21
_L21:
            if(k1 != j.L) goto _L24; else goto _L23
_L23:
            int k2 = 1;
_L34:
            int l2;
            if(k2 != j.L)
                break MISSING_BLOCK_LABEL_519;
            l2 = 1;
_L35:
            randomaccessfile.seek(4L);
            randomaccessfile.writeInt(l2);
            randomaccessfile.writeInt(k2);
              goto _L18
_L22:
            if(k1 != j.L) goto _L26; else goto _L25
_L25:
            int i2 = 1;
_L31:
            if(i2 != j1) goto _L28; else goto _L27
_L27:
            if(i2 != j.L) goto _L30; else goto _L29
_L29:
            int j2 = 1;
_L32:
            randomaccessfile.seek(4L);
            randomaccessfile.writeInt(j2);
_L28:
            randomaccessfile.seek(8L);
            randomaccessfile.writeInt(i2);
              goto _L18
_L26:
            i2 = k1 + 1;
              goto _L31
_L30:
            j2 = i2 + 1;
              goto _L32
            IOException ioexception;
            ioexception;
              goto _L1
_L8:
            i3 = k1 - 1;
              goto _L33
_L24:
            k2 = k1 + 1;
              goto _L34
            l2 = k2 + 1;
              goto _L35
        }

        private boolean _mthif()
        {
            if(com.baidu.location.b.m().exists())
                com.baidu.location.b.m().delete();
            com.baidu.location.b.n();
            boolean flag;
            if(!com.baidu.location.b.m().exists())
                flag = true;
            else
                flag = false;
            return flag;
        }

        private boolean a;
        private String _fldif;

        public d(String s1)
        {
            _fldif = null;
            a = true;
            if(s1 != null)
            {
                if(s1.length() > 100)
                    s1 = s1.substring(0, 100);
            } else
            {
                s1 = "";
            }
            _fldif = s1;
        }
    }

    private class c
    {
        private class a
        {

            public int a()
            {
                return a;
            }

            public int _mthdo()
            {
                return _flddo;
            }

            public int _mthif()
            {
                return _fldif;
            }

            private int a;
            private int _flddo;
            final c _fldfor;
            private int _fldif;
            private int _fldint;

            public a(int i1, int j1, int k1, int l1)
            {
                _fldfor = c.this;
                super();
                _fldint = 0;
                a = 0;
                _fldif = 0;
                _flddo = 0;
                _fldint = i1;
                a = j1;
                _fldif = k1;
                _flddo = l1;
            }
        }


        private double a()
        {
            return _fldfor;
        }

        static double a(c c1)
        {
            return c1._mthbyte();
        }

        private int a(boolean flag, boolean flag1, boolean flag2, boolean flag3, boolean flag4)
        {
            if(_fldgoto) goto _L2; else goto _L1
_L1:
            int i1 = 0;
_L4:
            return i1;
_L2:
            if(flag && h)
            {
                a = 1;
                if(d >= j.K)
                {
                    i1 = 1;
                    continue; /* Loop/switch isn't completed */
                }
                if(d <= j.p)
                {
                    i1 = 4;
                    continue; /* Loop/switch isn't completed */
                }
            }
            if(flag1 && _fldvoid)
            {
                a = 2;
                if(_fldfor <= (double)j.am)
                {
                    i1 = 1;
                    continue; /* Loop/switch isn't completed */
                }
                if(_fldfor >= (double)j.c)
                {
                    i1 = 4;
                    continue; /* Loop/switch isn't completed */
                }
            }
            if(flag2 && _fldvoid)
            {
                a = 3;
                if(_fldbyte <= (double)j.F)
                {
                    i1 = 1;
                    continue; /* Loop/switch isn't completed */
                }
                if(_fldbyte >= (double)j.U)
                {
                    i1 = 4;
                    continue; /* Loop/switch isn't completed */
                }
            }
            if(!_fldtry)
            {
                i1 = 0;
                continue; /* Loop/switch isn't completed */
            }
            if(flag3)
            {
                a = 4;
                Iterator iterator1 = _fldelse.iterator();
                int k2 = 0;
                while(iterator1.hasNext()) 
                {
                    ArrayList arraylist;
                    ArrayList arraylist1;
                    ArrayList arraylist2;
                    int j1;
                    Iterator iterator;
                    int k1;
                    int l1;
                    double ad[];
                    double ad1[];
                    int i2;
                    double ad2[];
                    double ad3[];
                    a a1;
                    int j2;
                    int l2;
                    if(((a)iterator1.next())._mthdo() >= j._fldfor)
                        l2 = k2 + 1;
                    else
                        l2 = k2;
                    k2 = l2;
                }
                if(k2 >= j._fldint)
                {
                    i1 = 1;
                    continue; /* Loop/switch isn't completed */
                }
                if(k2 <= j.X)
                {
                    i1 = 4;
                    continue; /* Loop/switch isn't completed */
                }
            }
            if(flag4)
            {
                a = 5;
                arraylist = new ArrayList();
                arraylist1 = new ArrayList();
                arraylist2 = new ArrayList();
                for(j1 = 0; j1 < 10; j1++)
                    arraylist.add(new ArrayList());

                iterator = _fldelse.iterator();
                k1 = 0;
                while(iterator.hasNext()) 
                {
                    a1 = (a)iterator.next();
                    if(a1._mthdo() >= 10 && a1._mthif() >= 1)
                    {
                        ((List)arraylist.get((a1._mthdo() - 10) / 5)).add(a1);
                        j2 = k1 + 1;
                    } else
                    {
                        j2 = k1;
                    }
                    k1 = j2;
                }
                if(k1 >= 4)
                {
                    for(l1 = 0; l1 < arraylist.size(); l1++)
                    {
                        if(((List)arraylist.get(l1)).size() == 0)
                            continue;
                        ad3 = a((List)arraylist.get(l1));
                        if(ad3 != null)
                        {
                            arraylist1.add(ad3);
                            arraylist2.add(Integer.valueOf(l1));
                        }
                    }

                    if(arraylist1 != null && arraylist1.size() > 0)
                    {
                        ad = (double[])arraylist1.get(0);
                        ad[0] = ad[0] * (double)((Integer)arraylist2.get(0)).intValue();
                        ad[1] = ad[1] * (double)((Integer)arraylist2.get(0)).intValue();
                        if(arraylist1.size() > 1)
                        {
                            for(i2 = 1; i2 < arraylist1.size(); i2++)
                            {
                                ad2 = (double[])arraylist1.get(i2);
                                ad2[0] = ad2[0] * (double)((Integer)arraylist2.get(i2)).intValue();
                                ad2[1] = ad2[1] * (double)((Integer)arraylist2.get(i2)).intValue();
                                ad[0] = ad[0] + ad2[0];
                                ad[1] = ad[1] + ad2[1];
                            }

                            ad[0] = ad[0] / (double)arraylist1.size();
                            ad[1] = ad[1] / (double)arraylist1.size();
                        }
                        ad1 = a(ad[0], ad[1]);
                        if(ad1[0] <= (double)j.ad)
                        {
                            i1 = 1;
                            continue; /* Loop/switch isn't completed */
                        }
                        if(ad1[0] >= (double)j._fldlong)
                        {
                            i1 = 4;
                            continue; /* Loop/switch isn't completed */
                        }
                    } else
                    {
                        i1 = 4;
                        continue; /* Loop/switch isn't completed */
                    }
                } else
                {
                    i1 = 4;
                    continue; /* Loop/switch isn't completed */
                }
            }
            a = 0;
            i1 = 3;
            if(true) goto _L4; else goto _L3
_L3:
        }

        private boolean a(String s1)
        {
            boolean flag = false;
            if(s1 != null && s1.length() > 8)
            {
                int i1 = 1;
                int j1 = 0;
                for(; i1 < -3 + s1.length(); i1++)
                    j1 ^= s1.charAt(i1);

                if(Integer.toHexString(j1).equalsIgnoreCase(s1.substring(-2 + s1.length(), s1.length())))
                    flag = true;
            }
            return flag;
        }

        private double[] a(double d1, double d2)
        {
            double d3 = 0.0D;
            if(d2 != d3) goto _L2; else goto _L1
_L1:
            if(d1 <= d3) goto _L4; else goto _L3
_L3:
            d3 = 90D;
_L6:
            double ad[] = new double[2];
            ad[0] = Math.sqrt(d1 * d1 + d2 * d2);
            ad[1] = d3;
            return ad;
_L4:
            if(d1 < d3)
                d3 = 270D;
            continue; /* Loop/switch isn't completed */
_L2:
            d3 = Math.toDegrees(Math.atan(d1 / d2));
            if(true) goto _L6; else goto _L5
_L5:
        }

        private double[] a(List list)
        {
            double ad[];
            if(list != null && list.size() > 0)
            {
                double ad1[] = _mthif(90 - ((a)list.get(0))._mthif(), ((a)list.get(0)).a());
                if(list.size() > 1)
                {
                    for(int i1 = 1; i1 < list.size(); i1++)
                    {
                        double ad2[] = _mthif(90 - ((a)list.get(i1))._mthif(), ((a)list.get(i1)).a());
                        ad1[0] = ad1[0] + ad2[0];
                        ad1[1] = ad1[1] + ad2[1];
                    }

                    ad1[0] = ad1[0] / (double)list.size();
                    ad1[1] = ad1[1] / (double)list.size();
                }
                ad = ad1;
            } else
            {
                ad = null;
            }
            return ad;
        }

        private double _mthbyte()
        {
            return _fldbyte;
        }

        private int _mthcase()
        {
            return a(true, true, true, true, true);
        }

        private String _mthchar()
        {
            return g;
        }

        static int _mthdo(c c1)
        {
            return c1._mthcase();
        }

        static double _mthfor(c c1)
        {
            return c1.a();
        }

        private boolean _mthfor()
        {
            return h;
        }

        private boolean _mthgoto()
        {
            return _fldvoid;
        }

        private boolean _mthif()
        {
            return _fldgoto;
        }

        static boolean _mthif(c c1)
        {
            return c1._mthif();
        }

        private double[] _mthif(double d1, double d2)
        {
            double ad[] = new double[2];
            ad[0] = d1 * Math.sin(Math.toRadians(d2));
            ad[1] = d1 * Math.cos(Math.toRadians(d2));
            return ad;
        }

        private List _mthint()
        {
            return _flddo;
        }

        private boolean _mthlong()
        {
            return _fldnew;
        }

        private boolean _mthnew()
        {
            return _fldtry;
        }

        private void _mthtry()
        {
            boolean flag = true;
            if(!a(_fldchar)) goto _L2; else goto _L1
_L1:
            String as2[] = _fldchar.split(",");
            if(as2.length == 15) goto _L4; else goto _L3
_L3:
            return;
_L4:
            if(!as2[6].equals("") && !as2[7].equals(""))
            {
                _fldlong = Integer.valueOf(as2[6]).intValue();
                d = Integer.valueOf(as2[7]).intValue();
                h = flag;
            }
_L2:
            String as1[];
            if(!a(g))
                break MISSING_BLOCK_LABEL_303;
            String s3 = g.substring(0, -3 + g.length());
            int l2 = 0;
            int i3 = 0;
            for(; l2 < s3.length(); l2++)
                if(s3.charAt(l2) == ',')
                    i3++;

            as1 = s3.split(",", i3 + 1);
            if(as1.length < 6) goto _L3; else goto _L5
_L5:
            if(!as1[2].equals("") && !as1[-3 + as1.length].equals("") && !as1[-2 + as1.length].equals("") && !as1[-1 + as1.length].equals(""))
            {
                _fldif = Integer.valueOf(as1[2]).intValue();
                _fldbyte = Double.valueOf(as1[-3 + as1.length]).doubleValue();
                _fldfor = Double.valueOf(as1[-2 + as1.length]).doubleValue();
                _fldvoid = flag;
            }
            Iterator iterator;
            if(_flddo == null || _flddo.size() <= 0)
                break MISSING_BLOCK_LABEL_680;
            iterator = _flddo.iterator();
_L11:
            if(!iterator.hasNext()) goto _L7; else goto _L6
_L6:
            String s1 = (String)iterator.next();
            if(!a(s1)) goto _L9; else goto _L8
_L8:
            String as[];
            String s2 = s1.substring(0, -3 + s1.length());
            int i1 = 0;
            int j1 = 0;
            for(; i1 < s2.length(); i1++)
                if(s2.charAt(i1) == ',')
                    j1++;

            as = s2.split(",", j1 + 1);
            boolean flag1;
            if(Integer.valueOf(as[flag]).intValue() == _flddo.size() && as.length > 8)
                flag1 = flag;
            else
                flag1 = false;
            _fldtry = flag1;
            if(_fldtry) goto _L10; else goto _L7
_L7:
            int k1;
            int l1;
            int i2;
            int j2;
            int k2;
            if(!h || !_fldvoid)
                flag = false;
            _fldgoto = flag;
              goto _L3
_L10:
            k1 = 4;
            while(k1 < as.length) 
            {
                if(!as[k1].equals("") && !as[k1 + 1].equals("") && !as[k1 + 2].equals(""))
                {
                    e = 1 + e;
                    l1 = Integer.valueOf(as[k1]).intValue();
                    i2 = Integer.valueOf(as[k1 + 1]).intValue();
                    j2 = Integer.valueOf(as[k1 + 2]).intValue();
                    if(as[k1 + 3].equals(""))
                        k2 = 0;
                    else
                        k2 = Integer.valueOf(as[k1 + 3]).intValue();
                    _fldelse.add(new a(l1, j2, i2, k2));
                }
                k1 += 4;
            }
              goto _L11
_L9:
            _fldtry = false;
              goto _L7
            _fldtry = false;
              goto _L7
        }

        private String _mthvoid()
        {
            return f;
        }

        public String _mthdo()
        {
            return _fldint;
        }

        public int _mthelse()
        {
            return _fldlong;
        }

        public int a;
        private String b;
        private double _fldbyte;
        final com.baidu.location.b c;
        private char _fldcase;
        private String _fldchar;
        private int d;
        private List _flddo;
        private int e;
        private List _fldelse;
        private String f;
        private double _fldfor;
        private String g;
        private boolean _fldgoto;
        private boolean h;
        private int _fldif;
        private String _fldint;
        private int _fldlong;
        private boolean _fldnew;
        private boolean _fldtry;
        private boolean _fldvoid;

        private c(List list, String s1, String s2, String s3)
        {
            c = com.baidu.location.b.this;
            super();
            _fldgoto = false;
            _fldchar = "";
            h = false;
            _fldint = "";
            _fldlong = 0;
            d = 0;
            f = "";
            _fldnew = false;
            b = "";
            _fldcase = 'N';
            g = "";
            _fldvoid = false;
            _fldif = 1;
            _fldbyte = 0.0D;
            _fldfor = 0.0D;
            _flddo = null;
            _fldtry = false;
            _fldelse = null;
            e = 0;
            a = 0;
            _flddo = list;
            _fldchar = s1;
            f = s2;
            g = s3;
            _fldelse = new ArrayList();
            _mthtry();
        }

    }

    private class a
        implements android.location.GpsStatus.NmeaListener, android.location.GpsStatus.Listener
    {

        public void onGpsStatusChanged(int i1)
        {
            if(com.baidu.location.b._mthnew(a) != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            switch(i1)
            {
            case 2: // '\002'
                com.baidu.location.b.a(a, null);
                com.baidu.location.b._mthif(a, false);
                com.baidu.location.b.a(0);
                break;

            case 4: // '\004'
                com.baidu.location.j._mthif("baidu_location_service", "gps status change");
                Iterator iterator;
                int j1;
                if(com.baidu.location.b._mthdo(a) == null)
                    com.baidu.location.b.a(a, com.baidu.location.b._mthnew(a).getGpsStatus(null));
                else
                    com.baidu.location.b._mthnew(a).getGpsStatus(com.baidu.location.b._mthdo(a));
                iterator = com.baidu.location.b._mthdo(a).getSatellites().iterator();
                j1 = 0;
                while(iterator.hasNext()) 
                {
                    int k1;
                    if(((GpsSatellite)iterator.next()).usedInFix())
                        k1 = j1 + 1;
                    else
                        k1 = j1;
                    j1 = k1;
                }
                com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("gps nunmber in count:").append(j1).toString());
                if(com.baidu.location.b._mthvoid() >= 3 && j1 < 3)
                    com.baidu.location.b._mthdo(a, System.currentTimeMillis());
                if(j1 < 3)
                    com.baidu.location.b._mthif(a, false);
                if(com.baidu.location.b._mthvoid() <= 3 && j1 > 3)
                    com.baidu.location.b._mthif(a, true);
                com.baidu.location.b.a(j1);
                break;
            }
            if(true) goto _L1; else goto _L3
_L3:
        }

        public void onNmeaReceived(long l1, String s1)
        {
            if(j.m) goto _L2; else goto _L1
_L1:
            j.h = 0;
_L4:
            return;
_L2:
            if(s1 == null || s1.equals("") || s1.length() < 9 || s1.length() > 150 || !a._mthnew()) goto _L4; else goto _L3
_L3:
            long l2;
            l2 = System.currentTimeMillis();
            com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("gps manager onNmeaReceived : ").append(l2).append(" ").append(s1).toString());
            if(l2 - com.baidu.location.b.a(a) <= 400L || !com.baidu.location.b._mthint(a) || com.baidu.location.b._mthcase(a).size() <= 0) goto _L6; else goto _L5
_L5:
            c c1 = a. new c(com.baidu.location.b._mthcase(a), com.baidu.location.b._mthif(a), com.baidu.location.b._mthfor(a), com.baidu.location.b._mthbyte(a));
            if(!c._mthif(c1))
                break MISSING_BLOCK_LABEL_337;
            j.h = c._mthdo(c1);
            if(j.h > 0)
            {
                Object aobj[] = new Object[3];
                aobj[0] = Double.valueOf(c._mthfor(c1));
                aobj[1] = Double.valueOf(c.a(c1));
                aobj[2] = Integer.valueOf(j.h);
                com.baidu.location.b.a(String.format("&nmea=%.1f|%.1f&g_tp=%d", aobj));
            }
_L7:
            com.baidu.location.b._mthcase(a).clear();
            com.baidu.location.b._mthif(a, com.baidu.location.b._mthdo(a, com.baidu.location.b.a(a, null)));
            com.baidu.location.b._mthdo(a, false);
_L6:
            Exception exception;
            if(s1.startsWith("$GPGGA"))
            {
                com.baidu.location.b._mthdo(a, true);
                com.baidu.location.b._mthif(a, s1.trim());
            } else
            if(s1.startsWith("$GPGSV"))
                com.baidu.location.b._mthcase(a).add(s1.trim());
            else
            if(s1.startsWith("$GPGSA"))
                com.baidu.location.b.a(a, s1.trim());
            com.baidu.location.b.a(a, System.currentTimeMillis());
              goto _L4
            try
            {
                j.h = 0;
                com.baidu.location.j._mthif("baidu_location_service", "nmea invalid");
            }
            // Misplaced declaration of an exception variable
            catch(Exception exception)
            {
                j.h = 0;
            }
              goto _L7
        }

        final com.baidu.location.b a;

        private a()
        {
            a = com.baidu.location.b.this;
            super();
        }

    }

    private class b
        implements LocationListener
    {

        public void onLocationChanged(Location location)
        {
            com.baidu.location.b.a(a, location);
            com.baidu.location.b.a(a, false);
            if(com.baidu.location.b._mthtry(a))
                com.baidu.location.b._mthif(a, true);
        }

        public void onProviderDisabled(String s1)
        {
            com.baidu.location.b.a(a, null);
            com.baidu.location.b._mthif(a, false);
        }

        public void onProviderEnabled(String s1)
        {
        }

        public void onStatusChanged(String s1, int i1, Bundle bundle)
        {
            i1;
            JVM INSTR tableswitch 0 2: default 28
        //                       0 29
        //                       1 48
        //                       2 79;
               goto _L1 _L2 _L3 _L4
_L1:
            return;
_L2:
            com.baidu.location.b.a(a, null);
            com.baidu.location.b._mthif(a, false);
            continue; /* Loop/switch isn't completed */
_L3:
            com.baidu.location.b._mthif(a, System.currentTimeMillis());
            com.baidu.location.b.a(a, true);
            com.baidu.location.b._mthif(a, false);
            continue; /* Loop/switch isn't completed */
_L4:
            com.baidu.location.b.a(a, false);
            if(true) goto _L1; else goto _L5
_L5:
        }

        final com.baidu.location.b a;

        private b()
        {
            a = com.baidu.location.b.this;
            super();
        }

    }


    public com.baidu.location.b(Context context, Handler handler)
    {
        _flddo = null;
        x = null;
        _fldnew = null;
        d = 0L;
        _fldlong = 0L;
        _fldint = false;
        H = null;
        t = false;
        D = null;
        C = false;
        E = 0L;
        w = true;
        e = false;
        u = new ArrayList();
        g = null;
        _fldtry = null;
        n = null;
        _fldfor = null;
        f = context;
        H = handler;
        try
        {
            if(j._flddo != null)
                _fldfor = new d(j._flddo);
            else
                _fldfor = new d("NULL");
        }
        catch(Exception exception)
        {
            _fldfor = null;
        }
    }

    static double a()
    {
        return o;
    }

    static double a(double d1)
    {
        m = d1;
        return d1;
    }

    static int a(int i1)
    {
        k = i1;
        return i1;
    }

    static long a(long l1)
    {
        _fldbyte = l1;
        return l1;
    }

    static long a(com.baidu.location.b b1)
    {
        return b1.E;
    }

    static long a(com.baidu.location.b b1, long l1)
    {
        b1.E = l1;
        return l1;
    }

    static GpsStatus a(com.baidu.location.b b1, GpsStatus gpsstatus)
    {
        b1.a = gpsstatus;
        return gpsstatus;
    }

    static String a(com.baidu.location.b b1, String s1)
    {
        b1.n = s1;
        return s1;
    }

    static String a(String s1)
    {
        r = s1;
        return s1;
    }

    static StringBuffer a(StringBuffer stringbuffer)
    {
        y = stringbuffer;
        return stringbuffer;
    }

    private void a(double d1, double d2, float f1)
    {
        int i1;
        i1 = 0;
        com.baidu.location.j._mthif("baidu_location_service", "check...gps ...");
        if(j.z) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(d1 >= 73.146973000000003D && d1 <= 135.25268600000001D && d2 <= 54.258806999999997D && d2 >= 14.604846999999999D && f1 <= 18F) goto _L4; else goto _L3
_L3:
        if(j.I == i1)
            continue; /* Loop/switch isn't completed */
        j.I = i1;
        Exception exception;
        if(j.I == 3)
        {
            _flddo.removeUpdates(x);
            _flddo.requestLocationUpdates("gps", 1000L, 1.0F, x);
            continue; /* Loop/switch isn't completed */
        }
        break; /* Loop/switch isn't completed */
_L4:
        com.baidu.location.j._mthif("baidu_location_service", "check...gps2 ...");
        double d3 = d1 - j._fldif;
        double d4 = j.o - d2;
        int j1 = (int)(d3 * 1000D);
        int k1 = (int)(d4 * 1000D);
        com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("check...gps ...").append(j1).append(k1).toString());
        if(j1 > 0 && j1 < 50 && k1 > 0 && k1 < 50)
        {
            com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("check...gps ...").append(j1).append(k1).toString());
            int l1 = j1 + k1 * 50;
            int i2 = l1 >> 2;
            int j2 = l1 & 3;
            if(j.ag)
            {
                i1 = 3 & j.j[i2] >> j2 * 2;
                com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("check gps scacity...").append(i1).toString());
            }
        } else
        {
            Object aobj[] = new Object[2];
            aobj[i1] = Double.valueOf(d1);
            aobj[1] = Double.valueOf(d2);
            String s1 = String.format("&ll=%.5f|%.5f", aobj);
            String s2 = (new StringBuilder()).append(s1).append("&im=").append(j._flddo).toString();
            j.J = d1;
            j.Z = d2;
            com.baidu.location.g.a(s2, true);
        }
        if(true) goto _L3; else goto _L5
_L5:
        try
        {
            _flddo.removeUpdates(x);
            _flddo.requestLocationUpdates("gps", 1000L, 5F, x);
        }
        // Misplaced declaration of an exception variable
        catch(Exception exception) { }
        if(true) goto _L1; else goto _L6
_L6:
    }

    private void a(Location location)
    {
        com.baidu.location.j._mthif("baidu_location_service", "set new gpsLocation ...");
        F = location;
        if(F == null)
        {
            D = null;
        } else
        {
            long l1 = System.currentTimeMillis();
            F.setTime(l1);
            float f1 = (float)(3.6000000000000001D * (double)F.getSpeed());
            Object aobj[] = new Object[6];
            aobj[0] = Double.valueOf(F.getLongitude());
            aobj[1] = Double.valueOf(F.getLatitude());
            aobj[2] = Float.valueOf(f1);
            aobj[3] = Float.valueOf(F.getBearing());
            aobj[4] = Integer.valueOf(k);
            aobj[5] = Long.valueOf(l1);
            D = String.format("&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_n=%d&ll_t=%d", aobj);
            a(F.getLongitude(), F.getLatitude(), f1);
        }
        if(_fldfor != null)
            try
            {
                d.a(_fldfor, F);
            }
            catch(Exception exception) { }
        H.obtainMessage(51).sendToTarget();
    }

    static void a(com.baidu.location.b b1, Location location)
    {
        b1.a(location);
    }

    private void a(boolean flag)
    {
        C = flag;
        break MISSING_BLOCK_LABEL_5;
        while(true) 
        {
            do
                return;
            while(flag && !_mthnew() || j.ab == flag);
            j.ab = flag;
            if(j.H)
                H.obtainMessage(53).sendToTarget();
        }
    }

    static boolean a(int i1, int j1, int k1)
    {
        return _mthif(i1, j1, k1);
    }

    public static boolean a(Location location, Location location1, boolean flag)
    {
        boolean flag1 = true;
        if(location != location1) goto _L2; else goto _L1
_L1:
        flag1 = false;
_L4:
        return flag1;
_L2:
        if(location != null && location1 != null)
        {
            float f1 = location1.getSpeed();
            if(!flag || j.I != 3 || f1 >= 5F)
            {
                float f2 = location1.distanceTo(location);
                if(f1 > j.C)
                {
                    if(f2 <= j.Q)
                        flag1 = false;
                } else
                if(f1 > j.D)
                {
                    if(f2 <= j.ai)
                        flag1 = false;
                } else
                if(f2 <= 5F)
                    flag1 = false;
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    static boolean a(com.baidu.location.b b1, boolean flag)
    {
        b1._fldint = flag;
        return flag;
    }

    static long b()
    {
        return L;
    }

    static int _mthbyte()
    {
        return c;
    }

    static String _mthbyte(com.baidu.location.b b1)
    {
        return b1.n;
    }

    static StringBuffer c()
    {
        return y;
    }

    static List _mthcase(com.baidu.location.b b1)
    {
        return b1.u;
    }

    static double d()
    {
        return m;
    }

    static int _mthdo()
    {
        return b;
    }

    static int _mthdo(int i1)
    {
        c = i1;
        return i1;
    }

    static long _mthdo(long l1)
    {
        L = l1;
        return l1;
    }

    static long _mthdo(com.baidu.location.b b1, long l1)
    {
        b1.d = l1;
        return l1;
    }

    static GpsStatus _mthdo(com.baidu.location.b b1)
    {
        return b1.a;
    }

    public static String _mthdo(Location location)
    {
        String s1 = _mthfor(location);
        if(s1 != null)
            s1 = (new StringBuilder()).append(s1).append("&g_tp=0").toString();
        return s1;
    }

    static String _mthdo(com.baidu.location.b b1, String s1)
    {
        b1._fldtry = s1;
        return s1;
    }

    static boolean _mthdo(com.baidu.location.b b1, boolean flag)
    {
        b1.e = flag;
        return flag;
    }

    static int e()
    {
        return I;
    }

    static boolean _mthelse()
    {
        return _fldchar;
    }

    private static void f()
    {
        _fldchar = true;
        y = null;
        _fldcase = 0;
        c = 0;
        _fldbyte = 0L;
        J = 0L;
        L = 0L;
        o = 0.0D;
        m = 0.0D;
        j = 0;
        I = 0;
        b = 0;
    }

    static int _mthfor()
    {
        return _fldcase;
    }

    static int _mthfor(int i1)
    {
        j = i1;
        return i1;
    }

    public static String _mthfor(Location location)
    {
        String s1;
        if(location == null)
        {
            s1 = null;
        } else
        {
            float f1 = (float)(3.6000000000000001D * (double)location.getSpeed());
            float f2;
            int i1;
            double d1;
            Object aobj[];
            if(location.hasAccuracy())
                f2 = location.getAccuracy();
            else
                f2 = -1F;
            i1 = (int)f2;
            if(location.hasAltitude())
                d1 = location.getAltitude();
            else
                d1 = 555D;
            aobj = new Object[8];
            aobj[0] = Double.valueOf(location.getLongitude());
            aobj[1] = Double.valueOf(location.getLatitude());
            aobj[2] = Float.valueOf(f1);
            aobj[3] = Float.valueOf(location.getBearing());
            aobj[4] = Integer.valueOf(i1);
            aobj[5] = Integer.valueOf(k);
            aobj[6] = Double.valueOf(d1);
            aobj[7] = Long.valueOf(location.getTime() / 1000L);
            s1 = String.format("&ll=%.5f|%.5f&s=%.1f&d=%.1f&ll_r=%d&ll_n=%d&ll_h=%.2f&ll_t=%d", aobj);
        }
        return s1;
    }

    static String _mthfor(com.baidu.location.b b1)
    {
        return b1._fldtry;
    }

    static long g()
    {
        return _fldbyte;
    }

    private static boolean h()
    {
        boolean flag;
        flag = false;
        if(A.exists())
            A.delete();
        if(!A.getParentFile().exists())
            A.getParentFile().mkdirs();
        A.createNewFile();
        RandomAccessFile randomaccessfile = new RandomAccessFile(A, "rw");
        randomaccessfile.seek(0L);
        randomaccessfile.writeInt(0);
        randomaccessfile.writeInt(0);
        randomaccessfile.writeInt(1);
        randomaccessfile.close();
        f();
        flag = A.exists();
_L2:
        return flag;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    static int i()
    {
        int i1 = 1 + _fldcase;
        _fldcase = i1;
        return i1;
    }

    static double _mthif(double d1)
    {
        o = d1;
        return d1;
    }

    static int _mthif()
    {
        return j;
    }

    static int _mthif(int i1)
    {
        _fldcase = i1;
        return i1;
    }

    static long _mthif(long l1)
    {
        J = l1;
        return l1;
    }

    static long _mthif(com.baidu.location.b b1, long l1)
    {
        b1._fldlong = l1;
        return l1;
    }

    public static String _mthif(Location location)
    {
        String s1 = _mthfor(location);
        if(s1 != null)
            s1 = (new StringBuilder()).append(s1).append(r).toString();
        return s1;
    }

    static String _mthif(com.baidu.location.b b1)
    {
        return b1.g;
    }

    static String _mthif(com.baidu.location.b b1, String s1)
    {
        b1.g = s1;
        return s1;
    }

    static void _mthif(com.baidu.location.b b1, boolean flag)
    {
        b1.a(flag);
    }

    private static boolean _mthif(int i1, int j1, int k1)
    {
        boolean flag = true;
        if(i1 >= 0 && i1 <= j.L) goto _L2; else goto _L1
_L1:
        flag = false;
_L4:
        return flag;
_L2:
        if(j1 < 0 || j1 > i1 + 1)
            flag = false;
        else
        if(k1 < flag || k1 > i1 + 1 || k1 > j.L)
            flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    static boolean _mthif(boolean flag)
    {
        _fldchar = flag;
        return flag;
    }

    static int _mthint(int i1)
    {
        b = i1;
        return i1;
    }

    static boolean _mthint(com.baidu.location.b b1)
    {
        return b1.e;
    }

    public static String j()
    {
        com.baidu.location.j._mthif("baidu_location_service", "GPS readline...");
        if(A != null) goto _L2; else goto _L1
_L1:
        String s1 = null;
_L7:
        return s1;
_L2:
        if(!A.exists())
        {
            s1 = null;
            continue; /* Loop/switch isn't completed */
        }
        RandomAccessFile randomaccessfile;
        int i1;
        int j1;
        String s2;
        randomaccessfile = new RandomAccessFile(A, "rw");
        randomaccessfile.seek(0L);
        i1 = randomaccessfile.readInt();
        j1 = randomaccessfile.readInt();
        int k1 = randomaccessfile.readInt();
        if(!_mthif(i1, j1, k1))
        {
            randomaccessfile.close();
            h();
            s1 = null;
            continue; /* Loop/switch isn't completed */
        }
        com.baidu.location.j._mthif("baidu_location_service", "GPS readline1...");
        if(j1 == 0 || j1 == k1)
        {
            randomaccessfile.close();
            s1 = null;
            continue; /* Loop/switch isn't completed */
        }
        com.baidu.location.j._mthif("baidu_location_service", "GPS readline2...");
        long l1 = 0L + (long)(12 + 1024 * (j1 - 1));
        randomaccessfile.seek(l1);
        int i2 = randomaccessfile.readInt();
        byte abyte0[] = new byte[i2];
        randomaccessfile.seek(l1 + 4L);
        for(int j2 = 0; j2 < i2; j2++)
            abyte0[j2] = randomaccessfile.readByte();

        s2 = new String(abyte0);
        if(i1 >= j.L) goto _L4; else goto _L3
_L3:
        int l2 = j1 + 1;
_L5:
        randomaccessfile.seek(4L);
        randomaccessfile.writeInt(l2);
        randomaccessfile.close();
        s1 = s2;
        continue; /* Loop/switch isn't completed */
_L4:
        int k2 = j.L;
        if(j1 == k2)
            l2 = 1;
        else
            l2 = j1 + 1;
          goto _L5
        IOException ioexception;
        ioexception;
        s1 = null;
        if(true) goto _L7; else goto _L6
_L6:
    }

    static boolean _mthlong()
    {
        return h();
    }

    static File m()
    {
        return A;
    }

    static void n()
    {
        f();
    }

    static int _mthnew(int i1)
    {
        I = i1;
        return i1;
    }

    static LocationManager _mthnew(com.baidu.location.b b1)
    {
        return b1._flddo;
    }

    static long o()
    {
        return J;
    }

    static boolean _mthtry(com.baidu.location.b b1)
    {
        return b1.C;
    }

    static int _mthvoid()
    {
        return k;
    }

    public boolean _mthcase()
    {
        boolean flag;
        if(F != null && F.getLatitude() != 0.0D && F.getLongitude() != 0.0D)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public String _mthchar()
    {
        return D;
    }

    public void _mthgoto()
    {
    }

    public String _mthint()
    {
        String s1 = null;
        if(F != null)
        {
            String s2 = (new StringBuilder()).append("{\"result\":{\"time\":\"").append(com.baidu.location.j._mthfor()).append("\",\"error\":\"61\"},\"content\":{\"point\":{\"x\":").append("\"%f\",\"y\":\"%f\"},\"radius\":\"%d\",\"d\":\"%f\",").append("\"s\":\"%f\",\"n\":\"%d\"}}").toString();
            float f1;
            int i1;
            float f2;
            double ad[];
            Object aobj[];
            if(F.hasAccuracy())
                f1 = F.getAccuracy();
            else
                f1 = 10F;
            i1 = (int)f1;
            f2 = (float)(3.6000000000000001D * (double)F.getSpeed());
            ad = Jni._mthif(F.getLongitude(), F.getLatitude(), "gps2gcj");
            if(ad[0] <= 0.0D && ad[1] <= 0.0D)
            {
                ad[0] = F.getLongitude();
                ad[1] = F.getLatitude();
            }
            aobj = new Object[6];
            aobj[0] = Double.valueOf(ad[0]);
            aobj[1] = Double.valueOf(ad[1]);
            aobj[2] = Integer.valueOf(i1);
            aobj[3] = Float.valueOf(F.getBearing());
            aobj[4] = Float.valueOf(f2);
            aobj[5] = Integer.valueOf(k);
            s1 = String.format(s2, aobj);
            com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("wgs84: ").append(F.getLongitude()).append(" ").append(F.getLatitude()).append(" gcj02: ").append(ad[0]).append(" ").append(ad[1]).toString());
        } else
        {
            com.baidu.location.j._mthif("baidu_location_service", "gps man getGpsJson but gpslocation is null");
        }
        return s1;
    }

    public void k()
    {
        if(!t)
            try
            {
                _flddo = (LocationManager)f.getSystemService("location");
                x = new b();
                _fldnew = new a();
                _flddo.requestLocationUpdates("gps", 1000L, 5F, x);
                _flddo.addGpsStatusListener(_fldnew);
                _flddo.addNmeaListener(_fldnew);
                t = true;
            }
            catch(Exception exception) { }
    }

    public void l()
    {
        if(t)
        {
            if(_flddo != null)
                try
                {
                    if(x != null)
                        _flddo.removeUpdates(x);
                    if(_fldnew != null)
                    {
                        _flddo.removeGpsStatusListener(_fldnew);
                        _flddo.removeNmeaListener(_fldnew);
                    }
                    if(_fldfor != null)
                        d.a(_fldfor);
                }
                catch(Exception exception) { }
            x = null;
            _fldnew = null;
            _flddo = null;
            t = false;
            a(false);
        }
    }

    public boolean _mthnew()
    {
        boolean flag = false;
        if(_mthcase()) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        long l1 = System.currentTimeMillis();
        if(!_fldint || l1 - _fldlong <= 3000L)
            if(k >= 3)
                flag = true;
            else
            if(l1 - d < 3000L)
                flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public Location _mthtry()
    {
        return F;
    }

    private static File A;
    private static final int B = 750;
    private static final int G = 5;
    private static int I = 0;
    private static long J = 0L;
    private static long L = 0L;
    private static final int M = 5;
    private static String N;
    private static int b = 0;
    private static long _fldbyte = 0L;
    private static int c = 0;
    private static int _fldcase = 0;
    private static boolean _fldchar = false;
    private static final double _fldelse = 1.0000000000000001E-05D;
    private static final int _fldgoto = 3000;
    private static final int h = 1024;
    private static final int i = 1000;
    private static final String _fldif = "baidu_location_service";
    private static int j = 0;
    private static int k = 0;
    private static final int l = 12;
    private static double m = 0D;
    private static double o = 0D;
    private static final int p = 1;
    private static String r = null;
    private static final int s = 3;
    private static final int v = 100;
    private static final int _fldvoid = 3600;
    private static StringBuffer y = null;
    private static final int z = 5;
    private boolean C;
    private String D;
    private long E;
    private Location F;
    private Handler H;
    private final int K = 400;
    private GpsStatus a;
    private long d;
    private LocationManager _flddo;
    private boolean e;
    private Context f;
    private d _fldfor;
    private String g;
    private boolean _fldint;
    private long _fldlong;
    private String n;
    private a _fldnew;
    private final long q = 1000L;
    private boolean t;
    private String _fldtry;
    private List u;
    private boolean w;
    private b x;

    static 
    {
        k = 0;
        N = "Temp_in.dat";
        A = new File(f.ac, N);
        _fldchar = true;
        _fldcase = 0;
        c = 0;
        _fldbyte = 0L;
        J = 0L;
        L = 0L;
        o = 0.0D;
        m = 0.0D;
        j = 0;
        I = 0;
        b = 0;
    }
}
