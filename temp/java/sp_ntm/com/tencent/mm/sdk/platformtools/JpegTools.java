// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import java.nio.ByteBuffer;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            MBuf, Log

public class JpegTools
{

    public JpegTools(byte abyte0[])
    {
        B = null;
        C = -1;
        D = true;
        B = new MBuf();
        B.setBuffer(abyte0);
    }

    private void a(int i)
    {
        int j = B.getBuffer().position();
        B.getBuffer().position(j + i);
    }

    public static String byte2HexString(byte byte0)
    {
        String s = Integer.toHexString(byte0 & 0xff);
        if(s.length() == 1)
            s = (new StringBuilder("0")).append(s).toString();
        return (new StringBuilder()).append("").append(s.toUpperCase()).toString();
    }

    public int getOreiValue()
    {
        char c = '\uFFFF';
        if(C == c) goto _L2; else goto _L1
_L1:
        C;
        JVM INSTR tableswitch 1 8: default 60
    //                   1 82
    //                   2 60
    //                   3 68
    //                   4 60
    //                   5 60
    //                   6 62
    //                   7 60
    //                   8 75;
           goto _L2 _L3 _L2 _L4 _L2 _L2 _L5 _L2 _L6
_L2:
        return c;
_L5:
        c = 'Z';
        continue; /* Loop/switch isn't completed */
_L4:
        c = '\264';
        continue; /* Loop/switch isn't completed */
_L6:
        c = '\u010E';
        continue; /* Loop/switch isn't completed */
_L3:
        c = '\0';
        if(true) goto _L2; else goto _L7
_L7:
    }

    public int parserJpeg()
    {
        boolean flag = false;
        byte byte0;
        byte byte1;
        byte0 = B.getBuffer().get();
        byte1 = B.getBuffer().get();
        if(!byte2HexString(byte0).equals("FF") || !byte2HexString(byte1).equals("D8")) goto _L2; else goto _L1
_L1:
        boolean flag1 = true;
_L37:
        if(flag1) goto _L4; else goto _L3
_L3:
        int i;
        Log.w("MicroMsg.JpegTools", "this is not jpeg or no exif data!!!");
        i = -1;
          goto _L5
_L16:
        byte byte2;
        byte byte3;
        byte byte4;
        byte2 = B.getBuffer().get();
        byte3 = B.getBuffer().get();
        B.getBuffer().get();
        byte4 = B.getBuffer().get();
        if(byte2HexString(byte2).equals("FF")) goto _L7; else goto _L6
_L6:
        int l = -1;
_L12:
        if(l >= 0) goto _L9; else goto _L8
_L8:
        Log.w("MicroMsg.JpegTools", "datalen is error ");
        i = -1;
          goto _L5
_L7:
        if(!byte2HexString(byte2).equals("FF") || !byte2HexString(byte3).equals("E1")) goto _L11; else goto _L10
_L10:
        l = -2 + (byte4 & 0xff);
          goto _L12
_L11:
        if(!byte2HexString(byte2).equals("FF") || !byte2HexString(byte3).equals("D9")) goto _L14; else goto _L13
_L13:
        l = -1;
          goto _L12
_L14:
        int k = -2 + (byte4 + B.getOffset());
        B.getBuffer().position(k);
        int j;
        if(++j <= 100) goto _L16; else goto _L15
_L15:
        Log.e("MicroMsg.JpegTools", "error while!");
        l = -1;
          goto _L12
_L9:
        byte byte5;
        byte byte6;
        byte byte7;
        byte byte8;
        byte5 = B.getBuffer().get();
        byte6 = B.getBuffer().get();
        byte7 = B.getBuffer().get();
        byte8 = B.getBuffer().get();
        if(!(new StringBuilder()).append((char)byte5).append((char)byte6).append((char)byte7).append((char)byte8).toString().equals("Exif")) goto _L18; else goto _L17
_L17:
        boolean flag2 = true;
_L38:
        if(flag2) goto _L20; else goto _L19
_L19:
        Log.w("MicroMsg.JpegTools", "checkExifTag is error");
        i = -1;
          goto _L5
_L20:
        byte byte9;
        byte byte10;
        a(2);
        byte9 = B.getBuffer().get();
        byte10 = B.getBuffer().get();
        if((char)byte9 != 'M' || (char)byte10 != 'M') goto _L22; else goto _L21
_L21:
        String s = "MM";
_L39:
        if(s.equals("MM") || s.equals("II")) goto _L24; else goto _L23
_L23:
        Log.w("MicroMsg.JpegTools", (new StringBuilder("byteOrder  is error ")).append(s).toString());
        i = -1;
          goto _L5
_L24:
        D = s.equals("MM");
        boolean flag3 = D;
        byte byte11 = B.getBuffer().get();
        byte byte12 = B.getBuffer().get();
        boolean flag4;
        if(flag3 && byte2HexString(byte11).equals("00") && byte2HexString(byte12).equals("2A"))
            flag4 = true;
        else
        if(byte2HexString(byte11).equals("2A") && byte2HexString(byte12).equals("00"))
        {
            flag4 = true;
        } else
        {
            Log.w("MicroMsg.JpegTools", (new StringBuilder("checkTiffTag: ")).append(byte2HexString(byte11)).append(" ").append(byte2HexString(byte12)).toString());
            flag4 = false;
        }
        if(flag4) goto _L26; else goto _L25
_L25:
        Log.w("MicroMsg.JpegTools", "checkTiffTag  is error ");
        i = -1;
          goto _L5
_L26:
        int i1;
        a(4);
        byte byte13 = B.getBuffer().get();
        byte byte14 = B.getBuffer().get();
        i1 = byte13 & 0xff;
        if(D)
            i1 = byte14 & 0xff;
          goto _L27
_L36:
        int j1;
        if(j1 >= i1 || j1 >= 255) goto _L29; else goto _L28
_L28:
        byte byte15;
        byte byte16;
        byte15 = B.getBuffer().get();
        byte16 = B.getBuffer().get();
        if(!D || !byte2HexString(byte15).equals("01") || !byte2HexString(byte16).equals("12")) goto _L31; else goto _L30
_L30:
        flag = true;
_L35:
        a(2);
        a(4);
        if(!flag) goto _L33; else goto _L32
_L32:
        byte byte17;
        int k1;
        boolean flag5 = D;
        byte17 = B.getBuffer().get();
        byte byte18 = B.getBuffer().get();
        a(2);
        if(!flag5)
            break MISSING_BLOCK_LABEL_1005;
        k1 = byte18 & 0xff;
_L40:
        C = k1;
_L29:
        Log.d("MicroMsg.JpegTools", (new StringBuilder("orei ")).append(C).toString());
        i = getOreiValue();
          goto _L5
_L31:
        if(D || !byte2HexString(byte15).equals("12") || !byte2HexString(byte16).equals("01")) goto _L35; else goto _L34
_L34:
        flag = true;
          goto _L35
_L33:
        a(4);
        j1++;
          goto _L36
        Exception exception;
        exception;
        Log.e("MicroMsg.JpegTools", "parser jpeg error");
        i = -1;
_L5:
        return i;
_L2:
        flag1 = false;
          goto _L37
_L4:
        j = 0;
          goto _L16
_L18:
        flag2 = false;
          goto _L38
_L22:
        if((char)byte9 == 'I' && (char)byte10 == 'I')
            s = "II";
        else
            s = "";
          goto _L39
_L27:
        j1 = 0;
          goto _L36
        k1 = byte17 & 0xff;
          goto _L40
    }

    public static final int ORIENTATION_FLIP_HORIZONTAL = 2;
    public static final int ORIENTATION_FLIP_VERTICAL = 4;
    public static final int ORIENTATION_NORMAL = 1;
    public static final int ORIENTATION_ROTATE_180 = 3;
    public static final int ORIENTATION_ROTATE_270 = 8;
    public static final int ORIENTATION_ROTATE_90 = 6;
    public static final int ORIENTATION_TRANSPOSE = 5;
    public static final int ORIENTATION_TRANSVERSE = 7;
    public static final int ORIENTATION_UNDEFINED = 0;
    public static final String TAG = "MicroMsg.JpegTools";
    private MBuf B;
    private int C;
    private boolean D;
}
