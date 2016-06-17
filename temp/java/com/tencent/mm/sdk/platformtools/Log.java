// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.os.Build;
import com.tencent.mm.algorithm.MD5;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            LogHelper, MMHandlerThread, Util

public class Log
{

    protected Log()
    {
    }

    public static void d(String s, String s1)
    {
        d(s, s1, null);
    }

    public static transient void d(String s, String s1, Object aobj[])
    {
        if(level <= 1)
        {
            if(aobj != null)
                s1 = String.format(s1, aobj);
            android.util.Log.d(s, s1);
            LogHelper.writeToStream(W, X, (new StringBuilder("D/")).append(s).toString(), s1);
        }
    }

    public static void e(String s, String s1)
    {
        e(s, s1, null);
    }

    public static transient void e(String s, String s1, Object aobj[])
    {
        if(level <= 4)
        {
            if(aobj != null)
                s1 = String.format(s1, aobj);
            android.util.Log.e(s, s1);
            LogHelper.writeToStream(W, X, (new StringBuilder("E/")).append(s).toString(), s1);
        }
    }

    public static void f(String s, String s1)
    {
        f(s, s1, null);
    }

    public static transient void f(String s, String s1, Object aobj[])
    {
        if(level <= 5)
        {
            if(aobj != null)
                s1 = String.format(s1, aobj);
            android.util.Log.e(s, s1);
            LogHelper.writeToStream(W, X, (new StringBuilder("F/")).append(s).toString(), s1);
            MMHandlerThread.postToMainThread(new _cls1(s1));
        }
    }

    public static int getLevel()
    {
        return level;
    }

    public static String getSysInfo()
    {
        return Y;
    }

    public static void i(String s, String s1)
    {
        i(s, s1, null);
    }

    public static transient void i(String s, String s1, Object aobj[])
    {
        if(level <= 2)
        {
            if(aobj != null)
                s1 = String.format(s1, aobj);
            android.util.Log.i(s, s1);
            LogHelper.writeToStream(W, X, (new StringBuilder("I/")).append(s).toString(), s1);
        }
    }

    public static void reset()
    {
        W = null;
        X = null;
    }

    public static void setLevel(int j, boolean flag)
    {
        level = j;
        android.util.Log.w("MicroMsg.SDK.Log", (new StringBuilder("new log level: ")).append(j).toString());
        if(flag)
            android.util.Log.e("MicroMsg.SDK.Log", "no jni log level support");
    }

    public static void setOutputPath(String s, String s1, String s2, int j)
    {
        if(s != null && s.length() != 0 && s2 != null && s2.length() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        File file = new File(s);
        if(!file.exists()) goto _L1; else goto _L3
_L3:
        FileInputStream fileinputstream;
        if(file.length() <= 0L)
            break MISSING_BLOCK_LABEL_101;
        fileinputstream = new FileInputStream(s);
_L4:
        setOutputStream(fileinputstream, new FileOutputStream(s, true), s1, s2, j);
        if(fileinputstream != null)
            fileinputstream.close();
          goto _L1
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L1
        fileinputstream = null;
          goto _L4
    }

    public static void setOutputStream(InputStream inputstream, OutputStream outputstream, String s, String s1, int j)
    {
        try
        {
            W = new PrintStream(new BufferedOutputStream(outputstream));
            long l;
            StringBuffer stringbuffer;
            if(inputstream != null)
            {
                BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
                String s2 = Util.nullAsNil(bufferedreader.readLine()).substring(2).trim();
                s1 = Util.nullAsNil(bufferedreader.readLine()).substring(2).trim();
                l = Util.getLong(Util.nullAsNil(bufferedreader.readLine()).trim().substring(2), 0L);
                Object aobj[] = new Object[3];
                aobj[0] = s2;
                aobj[1] = s1;
                aobj[2] = Long.valueOf(l);
                d("MicroMsg.SDK.Log", "using provided info, type=%s, user=%s, createtime=%d", aobj);
            } else
            {
                l = System.currentTimeMillis();
                LogHelper.initLogHeader(W, s, s1, l, j);
            }
            stringbuffer = new StringBuffer();
            stringbuffer.append(s1);
            stringbuffer.append(l);
            stringbuffer.append("dfdhgc");
            X = MD5.getMessageDigest(stringbuffer.toString().getBytes()).substring(7, 21).getBytes();
            android.util.Log.d("MicroMsg.SDK.Log", "set up out put stream");
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public static void v(String s, String s1)
    {
        v(s, s1, null);
    }

    public static transient void v(String s, String s1, Object aobj[])
    {
        if(level <= 0)
        {
            if(aobj != null)
                s1 = String.format(s1, aobj);
            android.util.Log.v(s, s1);
            LogHelper.writeToStream(W, X, (new StringBuilder("V/")).append(s).toString(), s1);
        }
    }

    public static void w(String s, String s1)
    {
        w(s, s1, null);
    }

    public static transient void w(String s, String s1, Object aobj[])
    {
        if(level <= 3)
        {
            if(aobj != null)
                s1 = String.format(s1, aobj);
            android.util.Log.w(s, s1);
            LogHelper.writeToStream(W, X, (new StringBuilder("W/")).append(s).toString(), s1);
        }
    }

    public static final int LEVEL_DEBUG = 1;
    public static final int LEVEL_ERROR = 4;
    public static final int LEVEL_FATAL = 5;
    public static final int LEVEL_INFO = 2;
    public static final int LEVEL_NONE = 6;
    public static final int LEVEL_VERBOSE = 0;
    public static final int LEVEL_WARNING = 3;
    private static PrintStream W;
    private static byte X[] = null;
    private static final String Y;
    private static int level = 6;

    static 
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder("VERSION.RELEASE:[")).append(android.os.Build.VERSION.RELEASE).toString());
        stringbuilder.append((new StringBuilder("] VERSION.CODENAME:[")).append(android.os.Build.VERSION.CODENAME).toString());
        stringbuilder.append((new StringBuilder("] VERSION.INCREMENTAL:[")).append(android.os.Build.VERSION.INCREMENTAL).toString());
        stringbuilder.append((new StringBuilder("] BOARD:[")).append(Build.BOARD).toString());
        stringbuilder.append((new StringBuilder("] DEVICE:[")).append(Build.DEVICE).toString());
        stringbuilder.append((new StringBuilder("] DISPLAY:[")).append(Build.DISPLAY).toString());
        stringbuilder.append((new StringBuilder("] FINGERPRINT:[")).append(Build.FINGERPRINT).toString());
        stringbuilder.append((new StringBuilder("] HOST:[")).append(Build.HOST).toString());
        stringbuilder.append((new StringBuilder("] MANUFACTURER:[")).append(Build.MANUFACTURER).toString());
        stringbuilder.append((new StringBuilder("] MODEL:[")).append(Build.MODEL).toString());
        stringbuilder.append((new StringBuilder("] PRODUCT:[")).append(Build.PRODUCT).toString());
        stringbuilder.append((new StringBuilder("] TAGS:[")).append(Build.TAGS).toString());
        stringbuilder.append((new StringBuilder("] TYPE:[")).append(Build.TYPE).toString());
        stringbuilder.append((new StringBuilder("] USER:[")).append(Build.USER).append("]").toString());
        Y = stringbuilder.toString();
    }

    private class _cls1
        implements Runnable
    {

        public final void run()
        {
            Toast.makeText(MMApplicationContext.getContext(), Z, 1).show();
        }

        final String Z;

        _cls1(String s)
        {
            Z = s;
            super();
        }
    }

}
