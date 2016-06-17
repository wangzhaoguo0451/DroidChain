// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.baidu.location;

import android.app.*;
import android.content.*;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.location.Location;
import android.net.wifi.ScanResult;
import android.os.*;
import android.util.Log;
import java.io.*;
import java.util.*;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpParams;
import org.json.JSONObject;

// Referenced classes of package com.baidu.location:
//            j, c, e, b, 
//            a, g, k, Jni

public final class f extends Service
{
    public class a
        implements Thread.UncaughtExceptionHandler
    {

        private String a(Throwable throwable)
        {
            StringWriter stringwriter = new StringWriter();
            PrintWriter printwriter = new PrintWriter(stringwriter);
            throwable.printStackTrace(printwriter);
            printwriter.close();
            return stringwriter.toString();
        }

        public void a()
        {
            String s1 = null;
            File file;
            String s2 = (new StringBuilder()).append(Environment.getExternalStorageDirectory().getPath()).append("/traces").toString();
            file = new File((new StringBuilder()).append(s2).append("/error_fs.dat").toString());
            if(!file.exists()) goto _L2; else goto _L1
_L1:
            RandomAccessFile randomaccessfile;
            randomaccessfile = new RandomAccessFile(file, "rw");
            randomaccessfile.seek(280L);
            if(1326 != randomaccessfile.readInt()) goto _L4; else goto _L3
_L3:
            String s3;
            randomaccessfile.seek(308L);
            int i1 = randomaccessfile.readInt();
            if(i1 <= 0 || i1 >= 2048)
                break MISSING_BLOCK_LABEL_322;
            com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("A").append(i1).toString());
            byte abyte1[] = new byte[i1];
            randomaccessfile.read(abyte1, 0, i1);
            s3 = new String(abyte1, 0, i1);
_L6:
            randomaccessfile.seek(600L);
            int j1 = randomaccessfile.readInt();
            if(j1 > 0 && j1 < 2048)
            {
                com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("A").append(j1).toString());
                byte abyte0[] = new byte[j1];
                randomaccessfile.read(abyte0, 0, j1);
                s1 = new String(abyte0, 0, j1);
            }
            com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append(s3).append(s1).toString());
            if(a(s3, s1))
            {
                randomaccessfile.seek(280L);
                randomaccessfile.writeInt(12346);
            }
_L4:
            randomaccessfile.close();
_L2:
            return;
            Exception exception;
            exception;
            if(true) goto _L2; else goto _L5
_L5:
            s3 = null;
              goto _L6
        }

        public void a(File file, String s1, String s2)
        {
            RandomAccessFile randomaccessfile = new RandomAccessFile(file, "rw");
            randomaccessfile.seek(280L);
            randomaccessfile.writeInt(12346);
            randomaccessfile.seek(300L);
            randomaccessfile.writeLong(System.currentTimeMillis());
            byte abyte0[] = s1.getBytes();
            randomaccessfile.writeInt(abyte0.length);
            randomaccessfile.write(abyte0, 0, abyte0.length);
            randomaccessfile.seek(600L);
            byte abyte1[] = s2.getBytes();
            randomaccessfile.writeInt(abyte1.length);
            randomaccessfile.write(abyte1, 0, abyte1.length);
            if(!a(s1, s2))
            {
                randomaccessfile.seek(280L);
                randomaccessfile.writeInt(1326);
            }
            randomaccessfile.close();
_L2:
            return;
            Exception exception;
            exception;
            if(true) goto _L2; else goto _L1
_L1:
        }

        boolean a(String s1, String s2)
        {
            boolean flag = false;
            if(com.baidu.location.g.a(_fldif)) goto _L2; else goto _L1
_L1:
            return flag;
_L2:
            HttpPost httppost = new HttpPost(j.N);
            ArrayList arraylist = new ArrayList();
            arraylist.add(new BasicNameValuePair("e0", s1));
            arraylist.add(new BasicNameValuePair("e1", s2));
            httppost.setEntity(new UrlEncodedFormEntity(arraylist, "utf-8"));
            DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
            defaulthttpclient.getParams().setParameter("http.connection.timeout", Integer.valueOf(12000));
            defaulthttpclient.getParams().setParameter("http.socket.timeout", Integer.valueOf(12000));
            com.baidu.location.j._mthif("baidu_location_service", "send begin ...");
            if(defaulthttpclient.execute(httppost).getStatusLine().getStatusCode() != 200)
                continue; /* Loop/switch isn't completed */
            com.baidu.location.j._mthif("baidu_location_service", "send ok....");
            flag = true;
            continue; /* Loop/switch isn't completed */
            Exception exception;
            exception;
            if(true) goto _L1; else goto _L3
_L3:
        }

        public void uncaughtException(Thread thread, Throwable throwable)
        {
            File file = null;
            if(j.x) goto _L2; else goto _L1
_L1:
            Process.killProcess(Process.myPid());
_L5:
            return;
_L2:
            String s5 = a(throwable);
            String s2 = s5;
            String s8;
            com.baidu.location.j._mthif("baidu_location_service", s2);
            f._mthlong(a);
            String s6 = com.baidu.location.c.a(false);
            if(f._mthnew(a) != null)
                s6 = (new StringBuilder()).append(s6).append(f._mthnew(a)._mthbyte()).toString();
            if(s6 == null)
                break MISSING_BLOCK_LABEL_310;
            s8 = Jni._mthif(s6);
            String s7 = s8;
_L9:
            String s3 = s7;
_L6:
            String s4;
            File file1;
            s4 = (new StringBuilder()).append(Environment.getExternalStorageDirectory().getPath()).append("/traces").toString();
            file1 = new File((new StringBuilder()).append(s4).append("/error_fs.dat").toString());
            if(file1.exists()) goto _L4; else goto _L3
_L3:
            File file2 = new File(s4);
            if(!file2.exists())
                file2.mkdirs();
            Exception exception;
            String s1;
            Exception exception2;
            if(file1.createNewFile())
                file = file1;
            a(file, s3, s2);
_L7:
            Process.killProcess(Process.myPid());
              goto _L5
            exception;
            s1 = null;
_L8:
            s2 = s1;
            s3 = null;
              goto _L6
_L4:
            try
            {
                RandomAccessFile randomaccessfile = new RandomAccessFile(file1, "rw");
                randomaccessfile.seek(300L);
                long l1 = randomaccessfile.readLong();
                if(System.currentTimeMillis() - l1 > 0x240c8400L)
                    a(file1, s3, s2);
            }
            catch(Exception exception1) { }
              goto _L7
            exception2;
            s1 = s2;
              goto _L8
            s7 = null;
              goto _L9
        }

        final f a;
        private Context _fldif;

        a(Context context)
        {
            a = f.this;
            super();
            _fldif = context;
            a();
        }
    }

    public class c
    {
        public class a extends BroadcastReceiver
        {

            public void onReceive(Context context, Intent intent)
            {
                String s1 = intent.getAction();
                if(!s1.equals("com.baidu.locTest.LocationServer")) goto _L2; else goto _L1
_L1:
                a.e.R.obtainMessage(101).sendToTarget();
_L4:
                return;
_L2:
                if(!s1.equals("android.intent.action.BATTERY_CHANGED")) goto _L4; else goto _L3
_L3:
                int i1;
                int j1;
                i1 = intent.getIntExtra("status", 0);
                j1 = intent.getIntExtra("plugged", 0);
                i1;
                JVM INSTR tableswitch 2 4: default 88
            //                           2 127
            //                           3 140
            //                           4 140;
                   goto _L5 _L6 _L7 _L7
_L5:
                c.a(a, null);
                  goto _L8
_L10:
                c.a(a, "6");
                  goto _L4
                Exception exception;
                exception;
                c.a(a, null);
                  goto _L4
_L6:
                c.a(a, "4");
                  goto _L8
_L7:
                c.a(a, "3");
                  goto _L8
_L11:
                c.a(a, "5");
                  goto _L4
_L8:
                j1;
                JVM INSTR tableswitch 1 2: default 192
            //                           1 100
            //                           2 153;
                   goto _L9 _L10 _L11
_L9:
                if(true) goto _L4; else goto _L12
_L12:
            }

            final c a;

            public a()
            {
                a = c.this;
                super();
            }
        }


        static String a(c c1, String s1)
        {
            c1.c = s1;
            return s1;
        }

        public void a()
        {
            int i1 = 0;
            _mthif();
            if(f._mthfor() != null)
                try
                {
                    RandomAccessFile randomaccessfile = new RandomAccessFile(f._mthfor(), "rw");
                    if(randomaccessfile.length() < 1L)
                    {
                        randomaccessfile.close();
                    } else
                    {
                        randomaccessfile.seek(0L);
                        int j1 = randomaccessfile.readInt();
                        int k1 = 4 + j1 * 200;
                        int l1 = j1 + 1;
                        randomaccessfile.seek(0L);
                        randomaccessfile.writeInt(l1);
                        randomaccessfile.seek(k1);
                        randomaccessfile.writeLong(System.currentTimeMillis());
                        randomaccessfile.writeInt(_fldbyte);
                        randomaccessfile.writeInt(0);
                        randomaccessfile.writeInt(_fldint);
                        randomaccessfile.writeInt(b._flddo);
                        randomaccessfile.writeInt(b._fldif);
                        randomaccessfile.writeInt(b._fldfor);
                        randomaccessfile.writeInt(b._fldtry);
                        byte abyte0[] = new byte[160];
                        for(; i1 < _fldint; i1++)
                        {
                            abyte0[7 + i1 * 8] = (byte)(int)a[i1];
                            abyte0[6 + i1 * 8] = (byte)(int)(a[i1] >> 8);
                            abyte0[5 + i1 * 8] = (byte)(int)(a[i1] >> 16);
                            abyte0[4 + i1 * 8] = (byte)(int)(a[i1] >> 24);
                            abyte0[3 + i1 * 8] = (byte)(int)(a[i1] >> 32);
                            abyte0[2 + i1 * 8] = (byte)(int)(a[i1] >> 40);
                            abyte0[1 + i1 * 8] = (byte)(int)(a[i1] >> 48);
                            abyte0[0 + i1 * 8] = (byte)(int)(a[i1] >> 56);
                        }

                        if(_fldint > 0)
                            randomaccessfile.write(abyte0, 0, 8 * _fldint);
                        randomaccessfile.writeInt(_fldint);
                        randomaccessfile.close();
                    }
                }
                catch(Exception exception) { }
        }

        public void _mthbyte()
        {
            int i1 = 0;
            if(!_flddo)
                break MISSING_BLOCK_LABEL_303;
            _fldbyte = 1;
            j.M = 60L * (1000L * j.ac);
            j.al = j.M >> 2;
            Calendar calendar = Calendar.getInstance();
            int j1 = calendar.get(5);
            int k1 = calendar.get(1);
            if(k1 > 2000)
                i1 = k1 - 2000;
            int l1 = 1 + calendar.get(2);
            int i2 = calendar.get(11);
            int j2 = calendar.get(12);
            String s1 = (new StringBuilder()).append(i1).append(",").append(l1).append(",").append(j1).append(",").append(i2).append(",").append(j2).append(",").append(j.ac).toString();
            RandomAccessFile randomaccessfile;
            RandomAccessFile randomaccessfile1;
            if(_fldif)
                _fldlong = (new StringBuilder()).append("&tr=").append(j._flddo).append(",").append(s1).toString();
            else
                _fldlong = (new StringBuilder()).append(_fldlong).append("|T").append(s1).toString();
            com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("trace begin:").append(_fldlong).toString());
            randomaccessfile = new RandomAccessFile(f.a(), "rw");
            randomaccessfile.seek(12L);
            randomaccessfile.writeLong(System.currentTimeMillis());
            randomaccessfile.writeInt(_fldbyte);
            randomaccessfile.close();
            randomaccessfile1 = new RandomAccessFile(f._mthfor(), "rw");
            randomaccessfile1.seek(0L);
            randomaccessfile1.writeInt(0);
            randomaccessfile1.close();
_L2:
            return;
            Exception exception;
            exception;
            if(true) goto _L2; else goto _L1
_L1:
        }

        public void _mthcase()
        {
            int i1;
            i1 = 0;
            f._mthlong();
            if(f.a() != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            RandomAccessFile randomaccessfile;
label0:
            {
                randomaccessfile = new RandomAccessFile(f.a(), "rw");
                if(randomaccessfile.length() >= 1L)
                    break label0;
                randomaccessfile.close();
            }
              goto _L1
            int j1;
            int k1;
            int i2;
            randomaccessfile.seek(0L);
            j1 = randomaccessfile.readInt();
            k1 = randomaccessfile.readInt();
            int l1 = randomaccessfile.readInt();
            if(!_flddo || !_fldif)
                break MISSING_BLOCK_LABEL_356;
            com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("trace new info:").append(j1).append(":").append(k1).append(":").append(l1).toString());
            int j2 = (k1 + 1) % 200;
            randomaccessfile.seek(4L);
            randomaccessfile.writeInt(j2);
            if(++j1 >= 200)
                j1 = 199;
            if(j2 == l1 && j1 > 0)
            {
                l1 = (l1 + 1) % 200;
                randomaccessfile.writeInt(l1);
            }
            com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("trace new info:").append(j1).append(":").append(k1).append(":").append(l1).toString());
            i2 = 24 + j2 * 800;
_L3:
            randomaccessfile.seek(i2 + 4);
            byte abyte0[];
            for(abyte0 = _fldlong.getBytes(); i1 < abyte0.length; i1++)
                abyte0[i1] = (byte)(0x5a ^ abyte0[i1]);

            randomaccessfile.write(abyte0, 0, abyte0.length);
            randomaccessfile.writeInt(abyte0.length);
            randomaccessfile.seek(i2);
            randomaccessfile.writeInt(abyte0.length);
            if(_flddo && _fldif)
            {
                randomaccessfile.seek(0L);
                randomaccessfile.writeInt(j1);
            }
            randomaccessfile.close();
              goto _L1
            Exception exception;
            exception;
              goto _L1
            i2 = 24 + k1 * 800;
              goto _L3
        }

        public void _mthdo()
        {
            int i1 = 0;
            com.baidu.location.j._mthif("baidu_location_service", "regular expire...");
            _mthnew();
            if(!_fldelse) goto _L2; else goto _L1
_L1:
            _fldelse = false;
              goto _L3
_L2:
            e.c c1;
            int j1;
            _mthbyte();
            _fldint = 0;
            b = null;
            if(f._mthgoto(e) != null)
                f._mthgoto(e)._mthnew();
            if(f._mthgoto(e) != null)
            {
                c1 = f._mthgoto(e)._mthbyte();
                if(c1 != null && c1._fldfor != null)
                {
                    j1 = c1._fldfor.size();
                    if(j1 > 20)
                        j1 = 20;
                    break MISSING_BLOCK_LABEL_246;
                }
            }
              goto _L4
_L7:
            int k1;
            if(k1 >= j1) goto _L6; else goto _L5
_L5:
            String s1 = ((ScanResult)c1._fldfor.get(k1)).BSSID.replace(":", "");
label0:
            {
                Exception exception;
                int l1;
                long al1[];
                try
                {
                    al1 = a;
                }
                catch(Exception exception1)
                {
                    l1 = i1;
                    break label0;
                }
                l1 = i1 + 1;
                try
                {
                    al1[i1] = Long.parseLong(s1, 16);
                }
                catch(Exception exception2) { }
            }
            k1++;
            i1 = l1;
              goto _L7
_L6:
            _fldint = i1;
_L4:
            if(f._mthlong(e) != null)
                b = f._mthlong(e).a();
            if(b != null)
                _mthfor();
              goto _L3
            exception;
_L3:
            return;
            k1 = 0;
              goto _L7
        }

        public void _mthfor()
        {
            _mthif();
            com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("trace1:").append(_fldlong).toString());
            if(!e._mthelse()) goto _L2; else goto _L1
_L1:
            String s1 = "y2";
_L7:
            if(_flddo) goto _L4; else goto _L3
_L3:
            RandomAccessFile randomaccessfile = new RandomAccessFile(f._mthfor(), "rw");
            if(randomaccessfile.length() >= 1L) goto _L6; else goto _L5
_L5:
            randomaccessfile.close();
_L22:
            return;
_L2:
            try
            {
                s1 = "y1";
            }
            catch(Exception exception)
            {
                s1 = "y";
            }
              goto _L7
_L6:
            int i1;
            int j1;
            i1 = randomaccessfile.readInt();
            j1 = 0;
_L23:
            if(j1 >= i1) goto _L4; else goto _L8
_L8:
            int k1;
            int i2;
            int j2;
            byte abyte0[];
            int k2;
            int i3;
            int j3;
            int k3;
            randomaccessfile.seek(4 + j1 * 200);
            randomaccessfile.readLong();
            k1 = randomaccessfile.readInt();
            i2 = randomaccessfile.readInt();
            j2 = randomaccessfile.readInt();
            abyte0 = new byte[200];
            randomaccessfile.read(abyte0, 0, 16 + j2 * 8);
            k2 = 0xff & abyte0[3] | 0xff00 & abyte0[2] << 8 | 0xff0000 & abyte0[1] << 16 | 0xff000000 & abyte0[0] << 24;
            i3 = 0xff & abyte0[7] | 0xff00 & abyte0[6] << 8 | 0xff0000 & abyte0[5] << 16 | 0xff000000 & abyte0[4] << 24;
            j3 = 0xff & abyte0[11] | 0xff00 & abyte0[10] << 8 | 0xff0000 & abyte0[9] << 16 | 0xff000000 & abyte0[8] << 24;
            k3 = 0xff & abyte0[15] | 0xff00 & abyte0[14] << 8 | 0xff0000 & abyte0[13] << 16 | 0xff000000 & abyte0[12] << 24;
            if(b._flddo != k2 || b._fldif != i3 || b._fldfor != j3 || b._fldtry != k3) goto _L10; else goto _L9
_L9:
            long al1[];
            al1 = new long[j2];
            for(int l3 = 0; l3 < j2; l3++)
                al1[l3] = (255L & (long)abyte0[16 + l3 * 8]) << 56 | (255L & (long)abyte0[1 + (16 + l3 * 8)]) << 48 | (255L & (long)abyte0[2 + (16 + l3 * 8)]) << 40 | (255L & (long)abyte0[3 + (16 + l3 * 8)]) << 32 | (255L & (long)abyte0[4 + (16 + l3 * 8)]) << 24 | (255L & (long)abyte0[5 + (16 + l3 * 8)]) << 16 | (255L & (long)abyte0[6 + (16 + l3 * 8)]) << 8 | 255L & (long)abyte0[7 + (16 + l3 * 8)];

              goto _L11
_L28:
            int j4;
            if(j4 >= _fldint) goto _L13; else goto _L12
_L12:
            int i4;
            int l4;
            int i5;
            l4 = i4;
            i5 = 0;
_L29:
            if(i5 >= j2)
                break MISSING_BLOCK_LABEL_1415;
            if(a[j4] == al1[i5])
                l4++;
              goto _L14
_L13:
            if(i4 <= 5 && i4 * 8 <= j2 + _fldint && (j2 != 0 || _fldint != 0) && (j2 != 1 || _fldint != 1 || a[0] != al1[0]) && (j2 <= 1 || _fldint <= 1 || a[0] != al1[0] || a[1] != al1[1])) goto _L10; else goto _L15
_L15:
            boolean flag;
            flag = true;
            int k4 = i2 + 1;
            randomaccessfile.seek(16 + j1 * 200);
            randomaccessfile.writeInt(k4);
            if(_fldlong != null)
            {
                _fldlong = (new StringBuilder()).append(_fldlong).append("|").append(k1).append(s1).toString();
                if(c != null)
                    _fldlong = (new StringBuilder()).append(_fldlong).append(c).toString();
            }
            com.baidu.location.j._mthif("baidu_location_service", "daily info:is same");
_L27:
            if(flag) goto _L17; else goto _L16
_L16:
            String s3;
            long l1;
            String s4;
            String s2;
            String s6;
            long l2;
            if(b._flddo == 460)
                s2 = "|x,";
            else
                s2 = "|x460,";
            s3 = (new StringBuilder()).append(s2).append(b._fldif).append(",").append(b._fldfor).append(",").append(b._fldtry).toString();
            l1 = 0L;
            if(f._mthgoto(e) == null)
                break MISSING_BLOCK_LABEL_1007;
            s6 = f._mthgoto(e)._mthchar();
            if(s6 == null)
                break MISSING_BLOCK_LABEL_1007;
            l2 = Long.parseLong(s6, 16);
            l1 = l2;
_L26:
            if(_fldint != 1) goto _L19; else goto _L18
_L18:
            s3 = (new StringBuilder()).append(s3).append("w").append(Long.toHexString(a[0])).append("k").toString();
            if(a[0] != l1) goto _L21; else goto _L20
_L20:
            s4 = (new StringBuilder()).append(s3).append("k").toString();
_L25:
            _fldlong = (new StringBuilder()).append(_fldlong).append(s4).append(s1).toString();
            if(c != null)
                _fldlong = (new StringBuilder()).append(_fldlong).append(c).toString();
            a();
_L17:
            com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("trace2:").append(_fldlong).toString());
            _mthcase();
            _fldlong = null;
              goto _L22
_L10:
            j1++;
              goto _L23
_L19:
            if(_fldint <= 1) goto _L21; else goto _L24
_L24:
            String s5 = (new StringBuilder()).append(s3).append("w").append(Long.toHexString(a[0])).toString();
            if(a[0] == l1)
            {
                s5 = (new StringBuilder()).append(s5).append("k").toString();
                l1 = 0L;
            }
            if(l1 > 0L)
                s4 = (new StringBuilder()).append(s5).append(",").append(Long.toHexString(l1)).append("k").toString();
            else
                s4 = (new StringBuilder()).append(s5).append(",").append(Long.toHexString(a[1])).toString();
              goto _L25
            Exception exception1;
            exception1;
              goto _L26
            Exception exception2;
            exception2;
              goto _L22
_L21:
            s4 = s3;
              goto _L25
_L4:
            flag = false;
              goto _L27
_L11:
            i4 = 0;
            j4 = 0;
              goto _L28
_L14:
            i5++;
              goto _L29
            j4++;
            i4 = l4;
              goto _L28
        }

        public void _mthif()
        {
            try
            {
                if(f._mthbyte(e) != null)
                {
                    f.a(new File(f._mthbyte(e)));
                    if(!f._mthfor().exists())
                    {
                        File file = new File(f.ac);
                        if(!file.exists())
                            file.mkdirs();
                        f._mthfor().createNewFile();
                        RandomAccessFile randomaccessfile = new RandomAccessFile(f._mthfor(), "rw");
                        randomaccessfile.seek(0L);
                        randomaccessfile.writeInt(0);
                        randomaccessfile.close();
                    }
                } else
                {
                    f.a(null);
                }
            }
            catch(Exception exception)
            {
                f.a(null);
            }
        }

        public void _mthint()
        {
        }

        public void _mthnew()
        {
            int i1;
            RandomAccessFile randomaccessfile;
            long l1;
            int i2;
            int j2;
            i1 = 0;
            _flddo = false;
            _fldif = false;
            _mthif();
            f._mthlong();
            try
            {
                randomaccessfile = new RandomAccessFile(f.a(), "rw");
                randomaccessfile.seek(0L);
                int j1 = randomaccessfile.readInt();
                int k1 = randomaccessfile.readInt();
                randomaccessfile.readInt();
                l1 = randomaccessfile.readLong();
                i2 = randomaccessfile.readInt();
                if(j1 < 0)
                {
                    _flddo = true;
                    _fldif = true;
                    randomaccessfile.close();
                    break MISSING_BLOCK_LABEL_485;
                }
                randomaccessfile.seek(24 + k1 * 800);
                j2 = randomaccessfile.readInt();
                if(j2 > 680)
                {
                    _flddo = true;
                    _fldif = true;
                    randomaccessfile.close();
                    break MISSING_BLOCK_LABEL_485;
                }
            }
            catch(Exception exception)
            {
                com.baidu.location.j._mthif("baidu_location_service", "exception!!!");
                _flddo = true;
                _fldif = true;
                break MISSING_BLOCK_LABEL_485;
            }
            byte abyte0[] = new byte[800];
            randomaccessfile.read(abyte0, 0, j2);
            if(j2 != randomaccessfile.readInt())
            {
                com.baidu.location.j._mthif("baidu_location_service", "trace true check fail");
                _flddo = true;
                _fldif = true;
                randomaccessfile.close();
                break MISSING_BLOCK_LABEL_485;
            }
            for(; i1 < abyte0.length; i1++)
                abyte0[i1] = (byte)(0x5a ^ abyte0[i1]);

            _fldlong = new String(abyte0, 0, j2);
            if(!_fldlong.contains("&tr="))
            {
                _flddo = true;
                _fldif = true;
                randomaccessfile.close();
                break MISSING_BLOCK_LABEL_485;
            }
            long l2 = System.currentTimeMillis();
            long l3 = l2 - l1;
            RandomAccessFile randomaccessfile1;
            if(l3 > 3L * j.M - j.al)
                _flddo = true;
            else
            if(l3 > 2L * j.M - j.al)
            {
                _fldlong = (new StringBuilder()).append(_fldlong).append("|").append(i2).toString();
                _fldbyte = i2 + 2;
            } else
            {
                if(l3 <= j.M - j.al)
                    break MISSING_BLOCK_LABEL_468;
                _fldbyte = i2 + 1;
            }
            randomaccessfile.seek(12L);
            randomaccessfile.writeLong(l2);
            randomaccessfile.writeInt(_fldbyte);
            randomaccessfile.close();
            randomaccessfile1 = new RandomAccessFile(f._mthfor(), "rw");
            randomaccessfile1.seek(0L);
            if(randomaccessfile1.readInt() == 0)
            {
                _flddo = true;
                randomaccessfile1.close();
                com.baidu.location.j._mthif("baidu_location_service", "Day file number 0");
            } else
            {
                randomaccessfile1.close();
            }
            break MISSING_BLOCK_LABEL_485;
            _fldelse = true;
            randomaccessfile.close();
        }

        public void _mthtry()
        {
            _fldgoto.unregisterReceiver(_fldcase);
            _fldtry.cancel(d);
            f.a(null);
        }

        public static final String _fldfor = "com.baidu.locTest.LocationServer";
        private long a[];
        private c.a b;
        private int _fldbyte;
        private String c;
        private a _fldcase;
        private final int _fldchar = 200;
        private PendingIntent d;
        private boolean _flddo;
        final f e;
        private boolean _fldelse;
        private Context _fldgoto;
        private boolean _fldif;
        private int _fldint;
        private String _fldlong;
        private final long _fldnew = 0x521c820L;
        private AlarmManager _fldtry;
        private long _fldvoid;

        public c(Context context)
        {
            e = f.this;
            super();
            _fldtry = null;
            _fldcase = null;
            d = null;
            _fldgoto = null;
            _fldvoid = 0L;
            a = new long[20];
            _fldint = 0;
            b = null;
            _fldlong = null;
            _fldbyte = 1;
            _flddo = false;
            _fldif = false;
            _fldelse = false;
            c = null;
            _fldgoto = context;
            _fldvoid = System.currentTimeMillis();
            _fldtry = (AlarmManager)context.getSystemService("alarm");
            _fldcase = new a();
            context.registerReceiver(_fldcase, new IntentFilter("com.baidu.locTest.LocationServer"));
            d = PendingIntent.getBroadcast(context, 0, new Intent("com.baidu.locTest.LocationServer"), 0x8000000);
            _fldtry.setRepeating(2, j.M, j.M, d);
            registerReceiver(_fldcase, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        }
    }

    public class d extends Handler
    {

        public void handleMessage(Message message)
        {
            if(!f._mthif(a)) goto _L2; else goto _L1
_L1:
            message.what;
            JVM INSTR lookupswitch 22: default 200
        //                       11: 206
        //                       12: 217
        //                       15: 228
        //                       21: 239
        //                       22: 306
        //                       25: 328
        //                       26: 252
        //                       28: 317
        //                       31: 265
        //                       41: 339
        //                       51: 275
        //                       52: 296
        //                       53: 369
        //                       57: 285
        //                       62: 379
        //                       63: 379
        //                       64: 391
        //                       65: 391
        //                       81: 349
        //                       91: 359
        //                       92: 426
        //                       101: 403;
               goto _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L17 _L18 _L18 _L19 _L20 _L21 _L22
_L2:
            super.handleMessage(message);
            return;
_L3:
            f._mthdo(a, message);
            continue; /* Loop/switch isn't completed */
_L4:
            f.a(a, message);
            continue; /* Loop/switch isn't completed */
_L5:
            f._mthnew(a, message);
            continue; /* Loop/switch isn't completed */
_L6:
            f.a(a, message, 21);
            continue; /* Loop/switch isn't completed */
_L9:
            f.a(a, message, 26);
            continue; /* Loop/switch isn't completed */
_L11:
            f._mthfor(a);
            continue; /* Loop/switch isn't completed */
_L13:
            f._mthchar(a);
            continue; /* Loop/switch isn't completed */
_L16:
            f._mthint(a, message);
            continue; /* Loop/switch isn't completed */
_L14:
            f.c(a);
            continue; /* Loop/switch isn't completed */
_L7:
            f._mthfor(a, message);
            continue; /* Loop/switch isn't completed */
_L10:
            f._mthif(a, message);
            continue; /* Loop/switch isn't completed */
_L8:
            f._mthtry(a, message);
            continue; /* Loop/switch isn't completed */
_L12:
            f._mthcase(a);
            continue; /* Loop/switch isn't completed */
_L19:
            f.a(a);
            continue; /* Loop/switch isn't completed */
_L20:
            f._mthtry(a);
            continue; /* Loop/switch isn't completed */
_L15:
            f.b(a);
            continue; /* Loop/switch isn't completed */
_L17:
            f.a(a, 21);
            continue; /* Loop/switch isn't completed */
_L18:
            f.a(a, 26);
            continue; /* Loop/switch isn't completed */
_L22:
            if(f._mthdo(a) != null)
                f._mthdo(a)._mthdo();
            continue; /* Loop/switch isn't completed */
_L21:
            f._mthvoid(a);
            if(true) goto _L2; else goto _L23
_L23:
        }

        final f a;

        public d()
        {
            a = f.this;
            super();
        }
    }

    private class b
        implements Runnable
    {

        public void run()
        {
            if(f._mthint(a))
            {
                f.a(a, false);
                f._mthelse(a);
            }
        }

        final f a;

        private b()
        {
            a = f.this;
            super();
        }

    }


    public f()
    {
        m = (new StringBuilder()).append(ac).append("/vm.dat").toString();
        an = new Messenger(R);
        r = null;
        ab = null;
        F = null;
        au = null;
        C = null;
        _fldchar = null;
        ae = null;
        _fldtry = null;
        al = null;
        u = null;
        f = null;
        h = null;
        _fldnew = null;
        H = null;
        ad = false;
        Y = true;
        O = false;
        aj = false;
        P = 0L;
        d = 0L;
        N = true;
        y = null;
        T = null;
        _fldif = "bdcltb09";
        A = null;
        as = null;
        Q = false;
        _fldgoto = false;
        X = null;
        Z = 0;
        J = true;
        o = 0.0D;
        n = 0.0D;
        q = 0.0D;
        E = 0L;
        am = false;
    }

    static File a()
    {
        return k;
    }

    static File a(File file)
    {
        j = file;
        return file;
    }

    private String a(String s1)
    {
        String s2 = null;
        com.baidu.location.j._mthif("baidu_location_service", "generate locdata ...");
        if((_fldtry == null || !_fldtry._mthdo()) && r != null)
            _fldtry = r.a();
        A = _fldtry.a();
        String s3;
        String s4;
        if(_fldtry != null)
            com.baidu.location.j.a("baidu_location_service", _fldtry._mthif());
        else
            com.baidu.location.j.a("baidu_location_service", "cellInfo null...");
        if((C == null || !C._mthfor()) && F != null)
            C = F._mthbyte();
        if(C != null)
            com.baidu.location.j.a("baidu_location_service", C._mthelse());
        else
            com.baidu.location.j.a("baidu_location_service", "wifi list null");
        if(ab != null && ab._mthnew())
            f = ab._mthtry();
        else
            f = null;
        if(au != null)
            s2 = au._mthbyte();
        if(3 == com.baidu.location.g._mthdo(this))
        {
            s3 = "&cn=32";
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(r._mthnew());
            s3 = String.format("&cn=%d", aobj);
        }
        if(Y)
        {
            String s5 = com.baidu.location.k._mthif();
            if(s5 != null)
                s3 = (new StringBuilder()).append(s3).append(s5).toString();
        }
        s4 = (new StringBuilder()).append(s3).append(s2).toString();
        if(s1 != null)
            s4 = (new StringBuilder()).append(s1).append(s4).toString();
        return com.baidu.location.j.a(_fldtry, C, f, s4, 0);
    }

    private String a(boolean flag)
    {
        if((_fldtry == null || !_fldtry._mthdo()) && r != null)
            _fldtry = r.a();
        _mthdo(_fldtry.a());
        return _mthif(flag);
    }

    private void a(int i1)
    {
        com.baidu.location.j._mthif("baidu_location_service", "on network exception");
        com.baidu.location.j.a("baidu_location_service", "on network exception");
        _fldnew = null;
        _fldchar = null;
        if(au != null)
            au.a(a(false), i1);
        if(i1 == 21)
            _mthcase();
    }

    private void a(Message message)
    {
        if(message != null && message.obj != null) goto _L2; else goto _L1
_L1:
        com.baidu.location.j._mthif("baidu_location_service", "Gps updateloation is null");
_L4:
        return;
_L2:
        Location location = (Location)message.obj;
        if(location != null)
        {
            com.baidu.location.j._mthif("baidu_location_service", "on update gps...");
            if(!com.baidu.location.k.a(location, true) || r == null || F == null || au == null);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void a(Message message, int i1)
    {
        com.baidu.location.j._mthif("baidu_location_service", "on network success");
        com.baidu.location.j.a("baidu_location_service", "on network success");
        String s1 = (String)message.obj;
        com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("network:").append(s1).toString());
        if(au != null)
            au.a(s1, i1);
        int j1;
        double d1;
        int k1;
        int l1;
        float f1;
        float f2;
        float f3;
        if(com.baidu.location.j._mthdo(s1))
        {
            if(i1 == 21)
                _fldnew = s1;
            else
                H = s1;
        } else
        if(i1 == 21)
            _fldnew = null;
        else
            H = null;
        j1 = com.baidu.location.j._mthif(s1, "ssid\":\"", "\"");
        if(j1 != 0x80000000 && _fldchar != null)
            h = _fldchar._mthif(j1);
        else
            h = null;
        _mthif(s1);
        d1 = com.baidu.location.j._mthdo(s1, "a\":\"", "\"");
        if(d1 != 4.9406564584124654E-324D)
            com.baidu.location.k.a(d1, com.baidu.location.j._mthdo(s1, "b\":\"", "\""), com.baidu.location.j._mthdo(s1, "c\":\"", "\""), com.baidu.location.j._mthdo(s1, "b\":\"", "\""));
        k1 = com.baidu.location.j._mthif(s1, "rWifiN\":\"", "\"");
        if(k1 > 15)
            j.Y = k1;
        l1 = com.baidu.location.j._mthif(s1, "rWifiT\":\"", "\"");
        if(l1 > 500)
            j.S = l1;
        f1 = com.baidu.location.j.a(s1, "hSpeedDis\":\"", "\"");
        if(f1 > 5F)
            j.Q = f1;
        f2 = com.baidu.location.j.a(s1, "mSpeedDis\":\"", "\"");
        if(f2 > 5F)
            j.ai = f2;
        f3 = com.baidu.location.j.a(s1, "mWifiR\":\"", "\"");
        if(f3 < 1.0F && (double)f3 > 0.20000000000000001D)
            j._fldbyte = f3;
        if(i1 == 21)
            _mthcase();
    }

    static void a(f f1)
    {
        f1._mthtry();
    }

    static void a(f f1, int i1)
    {
        f1.a(i1);
    }

    static void a(f f1, Message message)
    {
        f1._mthnew(message);
    }

    static void a(f f1, Message message, int i1)
    {
        f1.a(message, i1);
    }

    private boolean a(c.a a1)
    {
        boolean flag;
        boolean flag1;
        flag = true;
        flag1 = false;
        if(r != null) goto _L2; else goto _L1
_L1:
        return flag1;
_L2:
        _fldtry = r.a();
        if(_fldtry != a1)
            if(_fldtry == null || a1 == null)
            {
                flag1 = flag;
            } else
            {
                if(a1.a(_fldtry))
                    flag = false;
                flag1 = flag;
            }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private boolean a(e.c c1)
    {
        boolean flag;
        boolean flag1;
        flag = true;
        flag1 = false;
        if(F != null) goto _L2; else goto _L1
_L1:
        return flag1;
_L2:
        C = F._mthbyte();
        if(c1 != C)
            if(C == null || c1 == null)
            {
                flag1 = flag;
            } else
            {
                if(c1.a(C))
                    flag = false;
                flag1 = flag;
            }
        if(true) goto _L1; else goto _L3
_L3:
    }

    static boolean a(f f1, boolean flag)
    {
        f1.aj = flag;
        return flag;
    }

    private void b()
    {
        com.baidu.location.j._mthif("baidu_location_service", "on switch gps ...");
        if(au != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(au._mthfor())
        {
            if(ab == null)
                ab = new com.baidu.location.b(this, R);
            ab.k();
        } else
        if(ab != null)
        {
            ab.l();
            ab = null;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    static void b(f f1)
    {
        f1.c();
    }

    static String _mthbyte(f f1)
    {
        return f1.m;
    }

    private void _mthbyte()
    {
        if(!O) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(System.currentTimeMillis() - P < 1000L)
        {
            com.baidu.location.j._mthif("baidu_location_service", "request too frequency ...");
            if(_fldnew != null)
            {
                au.a(_fldnew);
                _mthcase();
                continue; /* Loop/switch isn't completed */
            }
        }
        com.baidu.location.j._mthif("baidu_location_service", "start network locating ...");
        com.baidu.location.j.a("baidu_location_service", "start network locating ...");
        O = true;
        J = a(al);
        if(!a(_fldchar) && !J && _fldnew != null)
        {
            au.a(_fldnew);
            _mthcase();
        } else
        {
            String s1 = a(((String) (null)));
            if(s1 == null)
            {
                String s2 = (new StringBuilder()).append("{\"result\":{\"time\":\"").append(com.baidu.location.j._mthfor()).append("\",\"error\":\"62\"}}").toString();
                au.a(s2);
                _mthcase();
            } else
            {
                if(h != null)
                {
                    s1 = (new StringBuilder()).append(s1).append(h).toString();
                    h = null;
                }
                if(com.baidu.location.g.a(s1, R))
                {
                    al = _fldtry;
                    _fldchar = C;
                } else
                {
                    com.baidu.location.j._mthif("baidu_location_service", "request error ..");
                }
                if(Y)
                    Y = false;
                P = System.currentTimeMillis();
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private void c()
    {
        if(au != null)
            au._mthnew();
    }

    static void c(f f1)
    {
        f1.b();
    }

    private void _mthcase()
    {
        O = false;
        _mthvoid();
    }

    static void _mthcase(f f1)
    {
        f1._mthdo();
    }

    private void _mthchar()
    {
        if(j.n && j.G)
            y = new c(this);
_L2:
        return;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    static void _mthchar(f f1)
    {
        f1._mthif();
    }

    private void d()
    {
        File file = new File(ac);
        File file1 = new File((new StringBuilder()).append(ac).append("/ls.db").toString());
        if(!file.exists())
            file.mkdirs();
        if(!file1.exists())
            try
            {
                file1.createNewFile();
            }
            catch(Exception exception) { }
        if(file1.exists())
        {
            T = SQLiteDatabase.openOrCreateDatabase(file1, null);
            T.execSQL((new StringBuilder()).append("CREATE TABLE IF NOT EXISTS ").append(_fldif).append("(id CHAR(40) PRIMARY KEY,time DOUBLE,tag DOUBLE, type DOUBLE , ac INT);").toString());
        }
    }

    static c _mthdo(f f1)
    {
        return f1.y;
    }

    private void _mthdo()
    {
        com.baidu.location.j._mthif("baidu_location_service", "on new wifi ...");
        if(aj)
        {
            _mthbyte();
            aj = false;
        }
    }

    private void _mthdo(Message message)
    {
        if(System.currentTimeMillis() - d >= 3000L) goto _L2; else goto _L1
_L1:
        com.baidu.location.j._mthif("baidu_location_service", "request too frequency ...");
        if(H == null) goto _L2; else goto _L3
_L3:
        au.a(H, 26);
_L5:
        return;
_L2:
        if(au != null)
        {
            String s1 = a(au.a(message));
            if(h != null)
            {
                s1 = (new StringBuilder()).append(s1).append(h).toString();
                h = null;
            }
            com.baidu.location.g._mthdo(this);
            if(com.baidu.location.g._mthif(s1, R))
            {
                u = _fldtry;
                ae = C;
            } else
            {
                com.baidu.location.j._mthif("baidu_location_service", "request poi error ..");
            }
            d = System.currentTimeMillis();
        }
        if(true) goto _L5; else goto _L4
_L4:
    }

    static void _mthdo(f f1, Message message)
    {
        f1._mthif(message);
    }

    private void _mthdo(String s1)
    {
        if(T != null && s1 != null) goto _L2; else goto _L1
_L1:
        com.baidu.location.j._mthif("baidu_location_service", "db is null...");
        Q = false;
_L4:
        return;
_L2:
        com.baidu.location.j._mthif("baidu_location_service", "LOCATING...");
        if(System.currentTimeMillis() - E >= 1500L && !s1.equals(as))
        {
            Q = false;
            try
            {
                Cursor cursor = T.rawQuery((new StringBuilder()).append("select * from ").append(_fldif).append(" where id = \"").append(s1).append("\";").toString(), null);
                as = s1;
                E = System.currentTimeMillis();
                if(cursor != null)
                {
                    if(cursor.moveToFirst())
                    {
                        com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("lookup DB success:").append(as).toString());
                        o = cursor.getDouble(1) - 1235.4322999999999D;
                        q = cursor.getDouble(2) - 4326D;
                        n = cursor.getDouble(3) - 2367.3217D;
                        Q = true;
                        com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("lookup DB success:x").append(o).append("y").append(n).append("r").append(q).toString());
                    }
                    cursor.close();
                }
            }
            catch(Exception exception)
            {
                E = System.currentTimeMillis();
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    static void _mthelse(f f1)
    {
        f1._mthbyte();
    }

    static File _mthfor()
    {
        return j;
    }

    private void _mthfor(Message message)
    {
        if(au != null)
            au.a(a(true), message);
    }

    static void _mthfor(f f1)
    {
        f1._mthgoto();
    }

    static void _mthfor(f f1, Message message)
    {
        f1._mthint(message);
    }

    static e _mthgoto(f f1)
    {
        return f1.F;
    }

    private void _mthgoto()
    {
        com.baidu.location.j._mthif("baidu_location_service", "on new cell ...");
    }

    private String _mthif(boolean flag)
    {
        String s1;
        if(Q)
        {
            if(flag)
            {
                String s3 = (new StringBuilder()).append("{\"result\":{\"time\":\"").append(com.baidu.location.j._mthfor()).append("\",\"error\":\"66\"},\"content\":{\"point\":{\"x\":").append("\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}").toString();
                Object aobj1[] = new Object[4];
                aobj1[0] = Double.valueOf(o);
                aobj1[1] = Double.valueOf(n);
                aobj1[2] = Double.valueOf(q);
                aobj1[3] = Boolean.valueOf(true);
                s1 = String.format(s3, aobj1);
            } else
            {
                String s2 = (new StringBuilder()).append("{\"result\":{\"time\":\"").append(com.baidu.location.j._mthfor()).append("\",\"error\":\"68\"},\"content\":{\"point\":{\"x\":").append("\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}").toString();
                Object aobj[] = new Object[4];
                aobj[0] = Double.valueOf(o);
                aobj[1] = Double.valueOf(n);
                aobj[2] = Double.valueOf(q);
                aobj[3] = Boolean.valueOf(J);
                s1 = String.format(s2, aobj);
            }
        } else
        if(flag)
            s1 = (new StringBuilder()).append("{\"result\":{\"time\":\"").append(com.baidu.location.j._mthfor()).append("\",\"error\":\"67\"}}").toString();
        else
            s1 = (new StringBuilder()).append("{\"result\":{\"time\":\"").append(com.baidu.location.j._mthfor()).append("\",\"error\":\"63\"}}").toString();
        return s1;
    }

    private void _mthif()
    {
        if(ab != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        com.baidu.location.j._mthif("baidu_location_service", "on new gps...");
        Location location = ab._mthtry();
        if(ab._mthnew() && com.baidu.location.k.a(location, true) && r != null && F != null && au != null)
        {
            if(F != null)
                F.a();
            com.baidu.location.k.a(r.a(), F._mthint(), location, au._mthbyte());
        }
        if(au != null && ab._mthnew())
            au._mthif(ab._mthint());
        if(true) goto _L1; else goto _L3
_L3:
    }

    private void _mthif(Message message)
    {
        if(au != null)
            au._mthint(message);
        if(F != null)
            F._mthcase();
        if(N)
        {
            com.baidu.location.g._mthfor(R);
            N = false;
        }
    }

    static void _mthif(f f1, Message message)
    {
        f1._mthfor(message);
    }

    private void _mthif(String s1)
    {
        boolean flag = false;
        if(T != null && J) goto _L2; else goto _L1
_L1:
        return;
_L2:
        JSONObject jsonobject;
        int i1;
        com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("DB:").append(s1).toString());
        jsonobject = new JSONObject(s1);
        i1 = Integer.parseInt(jsonobject.getJSONObject("result").getString("error"));
        if(i1 != 161) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject1;
        String s2;
        jsonobject1 = jsonobject.getJSONObject("content");
        if(!jsonobject1.has("clf"))
            break MISSING_BLOCK_LABEL_488;
        s2 = jsonobject1.getString("clf");
        if(!s2.equals("0")) goto _L6; else goto _L5
_L5:
        float f1;
        double d1;
        double d2;
        JSONObject jsonobject2 = jsonobject1.getJSONObject("point");
        d1 = Double.parseDouble(jsonobject2.getString("x"));
        d2 = Double.parseDouble(jsonobject2.getString("y"));
        f1 = Float.parseFloat(jsonobject1.getString("radius"));
_L9:
        com.baidu.location.j._mthif("baidu_location_service", (new StringBuilder()).append("DB PARSE:x").append(d1).append("y").append(d2).append("R").append(f1).toString());
_L10:
        if(flag) goto _L1; else goto _L7
_L7:
        ContentValues contentvalues;
        double d3 = d1 + 1235.4322999999999D;
        double d4 = d2 + 2367.3217D;
        float f2 = 4326F + f1;
        contentvalues = new ContentValues();
        contentvalues.put("time", Double.valueOf(d3));
        contentvalues.put("tag", Float.valueOf(f2));
        contentvalues.put("type", Double.valueOf(d4));
        if(T.update(_fldif, contentvalues, (new StringBuilder()).append("id = \"").append(A).append("\"").toString(), null) > 0) goto _L1; else goto _L8
_L8:
        contentvalues.put("id", A);
        T.insert(_fldif, null, contentvalues);
        com.baidu.location.j._mthif("baidu_location_service", "insert DB success!");
          goto _L1
        Exception exception1;
        exception1;
          goto _L1
_L6:
        String as1[] = s2.split("\\|");
        d1 = Double.parseDouble(as1[0]);
        d2 = Double.parseDouble(as1[1]);
        f1 = Float.parseFloat(as1[2]);
          goto _L9
_L4:
        if(i1 != 167)
            break MISSING_BLOCK_LABEL_488;
        T.delete(_fldif, (new StringBuilder()).append("id = \"").append(A).append("\"").toString(), null);
          goto _L1
        Exception exception;
        exception;
        com.baidu.location.j._mthif("baidu_location_service", "DB PARSE:exp!");
          goto _L1
        flag = true;
        f1 = 0.0F;
        d1 = 0.0D;
        d2 = 0.0D;
          goto _L10
    }

    static boolean _mthif(f f1)
    {
        return f1.ad;
    }

    private void _mthint()
    {
        if(com.baidu.location.g.a(this))
            com.baidu.location.g.f();
    }

    private void _mthint(Message message)
    {
        com.baidu.location.j._mthif("baidu_location_service", "on request location ...");
        com.baidu.location.j.a("baidu_location_service", "on request location ...");
        if(au != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(au._mthdo(message) == 1 && ab != null && ab._mthnew())
        {
            com.baidu.location.j._mthif("baidu_location_service", "send gps location to client ...");
            au.a(ab._mthint(), message);
        } else
        if(Y)
            _mthbyte();
        else
        if(!O)
            if(F != null && F._mthnew())
            {
                aj = true;
                R.postDelayed(new b(), 2000L);
            } else
            {
                _mthbyte();
            }
        if(true) goto _L1; else goto _L3
_L3:
    }

    static void _mthint(f f1, Message message)
    {
        f1.a(message);
    }

    static boolean _mthint(f f1)
    {
        return f1.aj;
    }

    static com.baidu.location.c _mthlong(f f1)
    {
        return f1.r;
    }

    public static void _mthlong()
    {
        try
        {
            if(a != null)
            {
                k = new File(a);
                if(!k.exists())
                {
                    File file = new File(ac);
                    if(!file.exists())
                        file.mkdirs();
                    k.createNewFile();
                    RandomAccessFile randomaccessfile = new RandomAccessFile(k, "rw");
                    randomaccessfile.seek(0L);
                    randomaccessfile.writeInt(-1);
                    randomaccessfile.writeInt(-1);
                    randomaccessfile.writeInt(0);
                    randomaccessfile.writeLong(0L);
                    randomaccessfile.writeInt(0);
                    randomaccessfile.writeInt(0);
                    randomaccessfile.close();
                }
            } else
            {
                k = null;
            }
        }
        catch(Exception exception)
        {
            k = null;
        }
    }

    static com.baidu.location.a _mthnew(f f1)
    {
        return f1.au;
    }

    public static String _mthnew()
    {
        com.baidu.location.j._mthif("baidu_location_service", "read trace log1..");
        return null;
    }

    private void _mthnew(Message message)
    {
        if(au != null)
            au._mthif(message);
    }

    static void _mthnew(f f1, Message message)
    {
        f1._mthtry(message);
    }

    private void _mthtry()
    {
    }

    private void _mthtry(Message message)
    {
        if(au != null && au._mthfor(message) && F != null)
            F._mthfor();
        _fldnew = null;
    }

    static void _mthtry(f f1)
    {
        f1._mthint();
    }

    static void _mthtry(f f1, Message message)
    {
        f1._mthdo(message);
    }

    private void _mthvoid()
    {
        if(_fldnew != null && com.baidu.location.g.a(this))
            com.baidu.location.g.f();
    }

    static void _mthvoid(f f1)
    {
        f1._mthchar();
    }

    public boolean _mthelse()
    {
        return ((KeyguardManager)getSystemService("keyguard")).inKeyguardRestrictedInputMode();
    }

    public IBinder onBind(Intent intent)
    {
        return an.getBinder();
    }

    public void onCreate()
    {
        Thread.setDefaultUncaughtExceptionHandler(new a(this));
        r = new com.baidu.location.c(this, R);
        F = new e(this, R);
        au = new com.baidu.location.a(R);
        r._mthdo();
        F._mthtry();
        ad = true;
        O = false;
        aj = false;
        try
        {
            d();
        }
        catch(Exception exception) { }
        com.baidu.location.j._mthif("baidu_location_service", "OnCreate");
        Log.d("baidu_location_service", (new StringBuilder()).append("baidu location service start1 ...").append(Process.myPid()).toString());
    }

    public void onDestroy()
    {
        if(r != null)
            r._mthbyte();
        if(F != null)
            F._mthelse();
        if(ab != null)
            ab.l();
        com.baidu.location.k.a();
        O = false;
        aj = false;
        ad = false;
        if(y != null)
            y._mthtry();
        if(T != null)
            T.close();
        com.baidu.location.j._mthif("baidu_location_service", "onDestroy");
        Log.d("baidu_location_service", "baidu location service stop ...");
        Process.killProcess(Process.myPid());
    }

    public int onStartCommand(Intent intent, int i1, int j1)
    {
        com.baidu.location.j._mthif("baidu_location_service", "onStratCommandNotSticky");
        return 2;
    }

    static final int B = 92;
    static final int D = 57;
    static final int G = 52;
    static final int I = 26;
    static final int K = 64;
    static final int L = 27;
    static final int M = 62;
    static final int S = 1000;
    static final int U = 54;
    static final int V = 81;
    static final int W = 25;
    private static String a;
    static final int aa = 21;
    static String ac;
    private static final int af = 200;
    static final int ag = 43;
    static final int ah = 14;
    static final int ai = 3000;
    static final int ak = 56;
    static final int ao = 101;
    static final float ap = 3.3F;
    static final int aq = 61;
    static final int ar = 53;
    private static final int at = 800;
    static final int b = 63;
    private static final int _fldbyte = 24;
    static final int c = 12;
    static final int _fldcase = 42;
    static final int _flddo = 28;
    static final int e = 65;
    static final int _fldelse = 2000;
    static final int _fldfor = 22;
    static final int g = 15;
    static final int i = 55;
    static final int _fldint = 31;
    private static File j = null;
    private static File k = null;
    static final int l = 11;
    static final int _fldlong = 13;
    static final int p = 41;
    static final int s = 23;
    static final int t = 91;
    public static final String v = "baidu_location_service";
    static final int _fldvoid = 71;
    static final int w = 24;
    static final int x = 3000;
    static final int z = 51;
    private String A;
    private e.c C;
    private long E;
    private e F;
    private String H;
    private boolean J;
    private boolean N;
    private boolean O;
    private long P;
    private boolean Q;
    final Handler R = new d();
    private SQLiteDatabase T;
    private String X;
    private boolean Y;
    private int Z;
    private com.baidu.location.b ab;
    private boolean ad;
    private e.c ae;
    private boolean aj;
    private c.a al;
    private boolean am;
    final Messenger an;
    private String as;
    private com.baidu.location.a au;
    private e.c _fldchar;
    private long d;
    private Location f;
    private boolean _fldgoto;
    private String h;
    private String _fldif;
    private String m;
    private double n;
    private String _fldnew;
    private double o;
    private double q;
    private com.baidu.location.c r;
    private c.a _fldtry;
    private c.a u;
    private c y;

    static 
    {
        ac = (new StringBuilder()).append(Environment.getExternalStorageDirectory().getPath()).append("/baidu/tempdata").toString();
        a = (new StringBuilder()).append(ac).append("/glb.dat").toString();
    }
}
