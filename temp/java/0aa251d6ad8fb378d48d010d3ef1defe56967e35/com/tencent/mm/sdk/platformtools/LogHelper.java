// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.os.Build;
import com.tencent.mm.algorithm.TypeTransform;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Util

final class LogHelper
{

    private LogHelper()
    {
    }

    public static void initLogHeader(PrintStream printstream, String s, String s1, long l, int i)
    {
        if(printstream != null && !Util.isNullOrNil(s1) && l != 0L)
        {
            printstream.println((new StringBuilder("1 ")).append(s).toString());
            printstream.println((new StringBuilder("2 ")).append(s1).toString());
            printstream.println((new StringBuilder("3 ")).append(l).toString());
            printstream.println((new StringBuilder("4 ")).append(Integer.toHexString(i)).toString());
            printstream.println((new StringBuilder("5 ")).append(android.os.Build.VERSION.RELEASE).toString());
            printstream.println((new StringBuilder("6 ")).append(android.os.Build.VERSION.CODENAME).toString());
            printstream.println((new StringBuilder("7 ")).append(android.os.Build.VERSION.INCREMENTAL).toString());
            printstream.println((new StringBuilder("8 ")).append(Build.BOARD).toString());
            printstream.println((new StringBuilder("9 ")).append(Build.DEVICE).toString());
            printstream.println((new StringBuilder("10 ")).append(Build.DISPLAY).toString());
            printstream.println((new StringBuilder("11 ")).append(Build.FINGERPRINT).toString());
            printstream.println((new StringBuilder("12 ")).append(Build.HOST).toString());
            printstream.println((new StringBuilder("13 ")).append(Build.MANUFACTURER).toString());
            printstream.println((new StringBuilder("14 ")).append(Build.MODEL).toString());
            printstream.println((new StringBuilder("15 ")).append(Build.PRODUCT).toString());
            printstream.println((new StringBuilder("16 ")).append(Build.TAGS).toString());
            printstream.println((new StringBuilder("17 ")).append(Build.TYPE).toString());
            printstream.println((new StringBuilder("18 ")).append(Build.USER).toString());
            printstream.println();
            printstream.flush();
        }
    }

    public static void writeToStream(PrintStream printstream, byte abyte0[], String s, String s1)
    {
        if(printstream != null && !Util.isNullOrNil(abyte0) && !Util.isNullOrNil(s) && !Util.isNullOrNil(s1)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        printstream;
        JVM INSTR monitorenter ;
        String s2;
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(aa.format(Long.valueOf(System.currentTimeMillis())));
        stringbuffer.append(" ").append(s).append(" ").append(s1);
        s2 = stringbuffer.toString();
        DESKeySpec deskeyspec = new DESKeySpec(abyte0);
        javax.crypto.SecretKey secretkey = SecretKeyFactory.getInstance("DES").generateSecret(deskeyspec);
        Cipher cipher = Cipher.getInstance("DES");
        cipher.init(1, secretkey);
        byte abyte1[] = cipher.doFinal(s2.getBytes());
        printstream.write(TypeTransform.intToByteArrayLH(abyte1.length));
        printstream.write(abyte1);
        printstream.write(ab);
_L3:
        printstream.flush();
        printstream;
        JVM INSTR monitorexit ;
          goto _L1
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
          goto _L3
    }

    private static final SimpleDateFormat aa = new SimpleDateFormat("MM-dd HH:mm:ss SSS");
    private static final byte ab[];

    static 
    {
        byte abyte0[] = new byte[8];
        abyte0[0] = 4;
        abyte0[1] = 0;
        abyte0[2] = 0;
        abyte0[3] = 0;
        abyte0[4] = -1;
        abyte0[5] = -1;
        abyte0[6] = -1;
        abyte0[7] = 0;
        ab = abyte0;
    }
}
