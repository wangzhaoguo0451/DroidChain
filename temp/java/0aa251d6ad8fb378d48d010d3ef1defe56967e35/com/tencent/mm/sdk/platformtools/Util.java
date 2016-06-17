// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.os.Vibrator;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.View;
import com.tencent.mm.algorithm.MD5;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import junit.framework.Assert;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

public final class Util
{

    private Util()
    {
    }

    public static String GetHostIp()
    {
        Enumeration enumeration = NetworkInterface.getNetworkInterfaces();
_L4:
        if(!enumeration.hasMoreElements()) goto _L2; else goto _L1
_L1:
        Enumeration enumeration1 = ((NetworkInterface)enumeration.nextElement()).getInetAddresses();
_L6:
        if(!enumeration1.hasMoreElements()) goto _L4; else goto _L3
_L3:
        InetAddress inetaddress = (InetAddress)enumeration1.nextElement();
        if(inetaddress.isLoopbackAddress()) goto _L6; else goto _L5
_L5:
        String s1 = inetaddress.getHostAddress();
        String s = s1;
_L8:
        return s;
        Exception exception;
        exception;
_L2:
        s = null;
        if(true) goto _L8; else goto _L7
_L7:
        SocketException socketexception;
        socketexception;
          goto _L2
    }

    public static int UnZipFolder(String s, String s1)
    {
        int i = 0;
        ZipInputStream zipinputstream;
        Log.v("XZip", "UnZipFolder(String, String)");
        zipinputstream = new ZipInputStream(new FileInputStream(s));
_L3:
        ZipEntry zipentry;
        String s2;
        zipentry = zipinputstream.getNextEntry();
        if(zipentry == null)
            break MISSING_BLOCK_LABEL_232;
        s2 = zipentry.getName();
        if(!zipentry.isDirectory()) goto _L2; else goto _L1
_L1:
        String s3 = s2.substring(0, -1 + s2.length());
        (new File((new StringBuilder()).append(s1).append(File.separator).append(s3).toString())).mkdirs();
          goto _L3
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        filenotfoundexception.printStackTrace();
        i = -1;
_L5:
        return i;
_L2:
        FileOutputStream fileoutputstream;
        byte abyte0[];
        File file = new File((new StringBuilder()).append(s1).append(File.separator).append(s2).toString());
        file.createNewFile();
        fileoutputstream = new FileOutputStream(file);
        abyte0 = new byte[1024];
_L4:
        int j = zipinputstream.read(abyte0);
        if(j == -1)
            break MISSING_BLOCK_LABEL_224;
        fileoutputstream.write(abyte0, 0, j);
        fileoutputstream.flush();
          goto _L4
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        i = -2;
          goto _L5
        fileoutputstream.close();
          goto _L3
        zipinputstream.close();
          goto _L5
    }

    private static int a(char ac[], int i, int j)
    {
        int k = 0;
        if(j > 0) goto _L2; else goto _L1
_L1:
        return k;
_L2:
        if(ac[i] != '#')
            break MISSING_BLOCK_LABEL_95;
        if(j <= 1 || ac[i + 1] != 'x' && ac[i + 1] != 'X')
            break MISSING_BLOCK_LABEL_68;
        int i1 = Integer.parseInt(new String(ac, i + 2, j - 2), 16);
        k = i1;
        continue; /* Loop/switch isn't completed */
        int l;
        try
        {
            l = Integer.parseInt(new String(ac, i + 1, j - 1), 10);
        }
        catch(NumberFormatException numberformatexception)
        {
            continue; /* Loop/switch isn't completed */
        }
        k = l;
        continue; /* Loop/switch isn't completed */
        new String(ac, i, j);
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception1;
        numberformatexception1;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static void a(Map map, String s, Node node, int i)
    {
        int j = 0;
        if(!node.getNodeName().equals("#text")) goto _L2; else goto _L1
_L1:
        map.put(s, node.getNodeValue());
_L4:
        return;
_L2:
        if(!node.getNodeName().equals("#cdata-section"))
            break; /* Loop/switch isn't completed */
        map.put(s, node.getNodeValue());
        if(true) goto _L4; else goto _L3
_L3:
        StringBuilder stringbuilder = (new StringBuilder()).append(s).append(".").append(node.getNodeName());
        Object obj;
        String s1;
        NamedNodeMap namednodemap;
        if(i > 0)
            obj = Integer.valueOf(i);
        else
            obj = "";
        s1 = stringbuilder.append(obj).toString();
        map.put(s1, node.getNodeValue());
        namednodemap = node.getAttributes();
        if(namednodemap != null)
        {
            for(int l = 0; l < namednodemap.getLength(); l++)
            {
                Node node2 = namednodemap.item(l);
                map.put((new StringBuilder()).append(s1).append(".$").append(node2.getNodeName()).toString(), node2.getNodeValue());
            }

        }
        HashMap hashmap = new HashMap();
        NodeList nodelist = node.getChildNodes();
        while(j < nodelist.getLength()) 
        {
            Node node1 = nodelist.item(j);
            int k = nullAsNil((Integer)hashmap.get(node1.getNodeName()));
            a(map, s1, node1, k);
            hashmap.put(node1.getNodeName(), Integer.valueOf(k + 1));
            j++;
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    public static byte[] bmpToByteArray(Bitmap bitmap, boolean flag)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, bytearrayoutputstream);
        if(flag)
            bitmap.recycle();
        byte abyte0[] = bytearrayoutputstream.toByteArray();
        try
        {
            bytearrayoutputstream.close();
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
        return abyte0;
    }

    public static boolean checkPermission(Context context, String s)
    {
        Assert.assertNotNull(context);
        String s1 = context.getPackageName();
        boolean flag;
        StringBuilder stringbuilder;
        String s2;
        if(context.getPackageManager().checkPermission(s, s1) == 0)
            flag = true;
        else
            flag = false;
        stringbuilder = (new StringBuilder()).append(s1).append(" has ");
        if(flag)
            s2 = "permission ";
        else
            s2 = "no permission ";
        Log.d("MicroMsg.Util", stringbuilder.append(s2).append(s).toString());
        return flag;
    }

    public static boolean checkSDCardFull()
    {
        boolean flag = false;
        if("mounted".equals(Environment.getExternalStorageState())) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l = statfs.getBlockCount();
        long l1 = statfs.getAvailableBlocks();
        if(l > 0L && l - l1 >= 0L)
        {
            int i = (int)((100L * (l - l1)) / l);
            long l2 = (long)statfs.getBlockSize() * (long)statfs.getFreeBlocks();
            Log.d("MicroMsg.Util", (new StringBuilder("checkSDCardFull per:")).append(i).append(" blockCount:").append(l).append(" availCount:").append(l1).append(" availSize:").append(l2).toString());
            if(95 <= i && l2 <= 0x3200000L)
                flag = true;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static String convertStreamToString(InputStream inputstream)
    {
        BufferedReader bufferedreader;
        StringBuilder stringbuilder;
        bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
        stringbuilder = new StringBuilder();
        break MISSING_BLOCK_LABEL_24;
        ioexception1;
        ioexception1.printStackTrace();
        try
        {
            inputstream.close();
        }
        catch(IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        return stringbuilder.toString();
        IOException ioexception1;
        do
        {
            String s = bufferedreader.readLine();
            if(s == null)
                break;
            stringbuilder.append((new StringBuilder()).append(s).append("\n").toString());
        } while(true);
        try
        {
            inputstream.close();
        }
        catch(IOException ioexception3)
        {
            ioexception3.printStackTrace();
        }
        if(true)
            break MISSING_BLOCK_LABEL_75;
        Exception exception;
        exception;
        try
        {
            inputstream.close();
        }
        catch(IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        throw exception;
    }

    public static long currentDayInMills()
    {
        return 0x5265c00L * (nowMilliSecond() / 0x5265c00L);
    }

    public static long currentMonthInMills()
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        GregorianCalendar gregoriancalendar1 = new GregorianCalendar(gregoriancalendar.get(1), gregoriancalendar.get(2), 1);
        gregoriancalendar1.setTimeZone(GMT);
        return gregoriancalendar1.getTimeInMillis();
    }

    public static long currentTicks()
    {
        return SystemClock.elapsedRealtime();
    }

    public static long currentWeekInMills()
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        GregorianCalendar gregoriancalendar1 = new GregorianCalendar(gregoriancalendar.get(1), gregoriancalendar.get(2), gregoriancalendar.get(5));
        gregoriancalendar1.setTimeZone(GMT);
        gregoriancalendar1.add(6, -(gregoriancalendar.get(7) - gregoriancalendar.getFirstDayOfWeek()));
        return gregoriancalendar1.getTimeInMillis();
    }

    public static long currentYearInMills()
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar((new GregorianCalendar()).get(1), 1, 1);
        gregoriancalendar.setTimeZone(GMT);
        return gregoriancalendar.getTimeInMillis();
    }

    public static byte[] decodeHexString(String s)
    {
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        byte abyte0[] = new byte[0];
_L5:
        return abyte0;
_L2:
        int i;
        abyte0 = new byte[s.length() / 2];
        i = 0;
_L3:
        if(i >= abyte0.length)
            continue; /* Loop/switch isn't completed */
        abyte0[i] = (byte)(0xff & Integer.parseInt(s.substring(i * 2, 2 + i * 2), 16));
        i++;
          goto _L3
        NumberFormatException numberformatexception;
        numberformatexception;
        numberformatexception.printStackTrace();
        abyte0 = new byte[0];
        if(true) goto _L5; else goto _L4
_L4:
    }

    public static boolean deleteFile(String s)
    {
        boolean flag = false;
        if(!isNullOrNil(s)) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        File file = new File(s);
        if(!file.exists())
            flag = true;
        else
        if(!file.isDirectory())
            flag = file.delete();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static void deleteOutOfDateFile(String s, String s1, long l)
    {
        if(!isNullOrNil(s)) goto _L2; else goto _L1
_L1:
        File file;
        return;
_L2:
        if((file = new File(s)).exists() && file.isDirectory())
        {
            File afile[] = file.listFiles();
            int i = afile.length;
            int j = 0;
            while(j < i) 
            {
                File file1 = afile[j];
                if(file1.isFile() && file1.getName().startsWith(s1) && nowMilliSecond() - file1.lastModified() - l >= 0L)
                    file1.delete();
                j++;
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static String dumpArray(Object aobj[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = aobj.length;
        for(int j = 0; j < i; j++)
        {
            stringbuilder.append(aobj[j]);
            stringbuilder.append(",");
        }

        return stringbuilder.toString();
    }

    public static String dumpHex(byte abyte0[])
    {
        int i = 0;
        String s;
        if(abyte0 == null)
        {
            s = "(null)";
        } else
        {
            char ac[] = new char[16];
            ac[0] = '0';
            ac[1] = '1';
            ac[2] = '2';
            ac[3] = '3';
            ac[4] = '4';
            ac[5] = '5';
            ac[6] = '6';
            ac[7] = '7';
            ac[8] = '8';
            ac[9] = '9';
            ac[10] = 'a';
            ac[11] = 'b';
            ac[12] = 'c';
            ac[13] = 'd';
            ac[14] = 'e';
            ac[15] = 'f';
            int j = abyte0.length;
            char ac1[] = new char[j * 3];
            int k = 0;
            for(; i < j; i++)
            {
                byte byte0 = abyte0[i];
                int l = k + 1;
                ac1[k] = ' ';
                int i1 = l + 1;
                ac1[l] = ac[0xf & byte0 >>> 4];
                k = i1 + 1;
                ac1[i1] = ac[byte0 & 0xf];
            }

            s = new String(ac1);
        }
        return s;
    }

    public static String encodeHexString(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder("");
        if(abyte0 != null)
        {
            for(int i = 0; i < abyte0.length; i++)
            {
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(0xff & abyte0[i]);
                stringbuilder.append(String.format("%02x", aobj));
            }

        }
        return stringbuilder.toString();
    }

    public static String escapeSqlValue(String s)
    {
        if(s != null)
            s = s.replace("\\[", "[[]").replace("%", "").replace("\\^", "").replace("'", "").replace("\\{", "").replace("\\}", "").replace("\"", "");
        return s;
    }

    public static String escapeStringForXml(String s)
    {
        if(s != null) goto _L2; else goto _L1
_L1:
        String s1 = "";
_L12:
        return s1;
_L2:
        StringBuffer stringbuffer;
        int i;
        int j;
        stringbuffer = new StringBuffer();
        i = s.length();
        j = 0;
_L7:
        if(j >= i) goto _L4; else goto _L3
_L3:
        char c = s.charAt(j);
        if((c >= ' ' || c == bA[0] || c == bA[1] || c == bA[2]) && c <= '\177') goto _L6; else goto _L5
_L5:
        stringbuffer.append("&#");
        stringbuffer.append(Integer.toString(c));
        stringbuffer.append(';');
_L10:
        j++;
          goto _L7
_L6:
        int k = -1 + bB.length;
_L11:
        if(k < 0)
            break MISSING_BLOCK_LABEL_183;
        if(bB[k] != c) goto _L9; else goto _L8
_L8:
        boolean flag;
        stringbuffer.append(bC[k]);
        flag = false;
_L13:
        if(flag)
            stringbuffer.append(c);
          goto _L10
_L9:
        k--;
          goto _L11
_L4:
        s1 = stringbuffer.toString();
          goto _L12
        flag = true;
          goto _L13
    }

    public static String expandEntities(String s)
    {
        int i = s.length();
        char ac[] = new char[i];
        int j = 0;
        int k = 0;
        int l = -1;
        while(j < i) 
        {
            char c = s.charAt(j);
            int i1 = k + 1;
            ac[k] = c;
            if(c == '&' && l == -1)
                l = i1;
            else
            if(l != -1 && !Character.isLetter(c) && !Character.isDigit(c) && c != '#')
                if(c == ';')
                {
                    int j1 = a(ac, l, -1 + (i1 - l));
                    if(j1 > 65535)
                    {
                        int k1 = j1 - 0x10000;
                        ac[l - 1] = (char)(55296 + (k1 >> 10));
                        ac[l] = (char)(56320 + (k1 & 0x3ff));
                        l++;
                    } else
                    if(j1 != 0)
                        ac[l - 1] = (char)j1;
                    else
                        l = i1;
                    i1 = l;
                    l = -1;
                } else
                {
                    l = -1;
                }
            j++;
            k = i1;
        }
        return new String(ac, 0, k);
    }

    public static String formatSecToMin(int i)
    {
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf((long)i / 60L);
        aobj[1] = Long.valueOf((long)i % 60L);
        return String.format("%d:%02d", aobj);
    }

    public static String formatUnixTime(long l)
    {
        return (new SimpleDateFormat("[yy-MM-dd HH:mm:ss]")).format(new Date(1000L * l));
    }

    public static void freeBitmapMap(Map map)
    {
        Iterator iterator = map.entrySet().iterator();
        do
        {
            if(!iterator.hasNext())
                break;
            Bitmap bitmap = (Bitmap)((java.util.Map.Entry)iterator.next()).getValue();
            if(bitmap != null)
                bitmap.recycle();
        } while(true);
        map.clear();
    }

    public static String getCutPasswordMD5(String s)
    {
        if(s == null)
            s = "";
        String s1;
        if(s.length() <= 16)
            s1 = getFullPasswordMD5(s);
        else
            s1 = getFullPasswordMD5(s.substring(0, 16));
        return s1;
    }

    public static String getDeviceId(Context context)
    {
        if(context != null) goto _L2; else goto _L1
_L1:
        String s = null;
_L3:
        return s;
_L2:
        String s1;
label0:
        {
            TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
            if(telephonymanager == null)
            {
                s = null;
            } else
            {
                s1 = telephonymanager.getDeviceId();
                if(s1 != null)
                    break label0;
                s = null;
            }
        }
          goto _L3
        String s2 = s1.trim();
        s = s2;
          goto _L3
        SecurityException securityexception;
        securityexception;
        Log.e("MicroMsg.Util", "getDeviceId failed, security exception");
_L4:
        s = null;
          goto _L3
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L4
    }

    public static String getFullPasswordMD5(String s)
    {
        return MD5.getMessageDigest(s.getBytes());
    }

    public static int getHex(String s, int i)
    {
        if(s != null) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        long l = Long.decode(s).longValue();
        i = (int)(l & 0xffffffffL);
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        numberformatexception.printStackTrace();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static android.graphics.BitmapFactory.Options getImageOptions(String s)
    {
        boolean flag;
        android.graphics.BitmapFactory.Options options;
        if(s != null && !s.equals(""))
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try
        {
            Bitmap bitmap = BitmapFactory.decodeFile(s, options);
            if(bitmap != null)
                bitmap.recycle();
        }
        catch(OutOfMemoryError outofmemoryerror)
        {
            Log.e("MicroMsg.Util", (new StringBuilder("decode bitmap failed: ")).append(outofmemoryerror.getMessage()).toString());
        }
        return options;
    }

    public static Intent getInstallPackIntent(String s, Context context)
    {
        boolean flag;
        Intent intent;
        if(s != null && !s.equals(""))
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(0x10000000);
        intent.setDataAndType(Uri.fromFile(new File(s)), "application/vnd.android.package-archive");
        return intent;
    }

    public static int getInt(String s, int i)
    {
        if(s != null) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        int j = Integer.parseInt(s);
        i = j;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        numberformatexception.printStackTrace();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static int getIntRandom(int i, int j)
    {
        boolean flag;
        if(i > j)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        return j + (new Random(System.currentTimeMillis())).nextInt(1 + (i - j));
    }

    public static String getLine1Number(Context context)
    {
        if(context != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        try
        {
            if((TelephonyManager)context.getSystemService("phone") == null)
                Log.e("MicroMsg.Util", "get line1 number failed, null tm");
        }
        catch(SecurityException securityexception)
        {
            Log.e("MicroMsg.Util", "getLine1Number failed, security exception");
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static long getLong(String s, long l)
    {
        if(s != null) goto _L2; else goto _L1
_L1:
        return l;
_L2:
        long l1 = Long.parseLong(s);
        l = l1;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        numberformatexception.printStackTrace();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static Element getRootElementFromXML(byte abyte0[])
    {
        Element element;
        DocumentBuilder documentbuilder;
        element = null;
        DocumentBuilderFactory documentbuilderfactory = DocumentBuilderFactory.newInstance();
        try
        {
            documentbuilder = documentbuilderfactory.newDocumentBuilder();
        }
        catch(ParserConfigurationException parserconfigurationexception)
        {
            parserconfigurationexception.printStackTrace();
            continue; /* Loop/switch isn't completed */
        }
        if(documentbuilder != null) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.Util", "new Document Builder failed");
_L4:
        return element;
_L2:
        Document document = documentbuilder.parse(new ByteArrayInputStream(abyte0));
        IOException ioexception;
        SAXException saxexception;
        if(document == null)
            Log.e("MicroMsg.Util", "new Document failed");
        else
            element = document.getDocumentElement();
        continue; /* Loop/switch isn't completed */
        saxexception;
        saxexception.printStackTrace();
        continue; /* Loop/switch isn't completed */
        ioexception;
        ioexception.printStackTrace();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static Bitmap getRoundedCornerBitmap(Bitmap bitmap, boolean flag, float f)
    {
        Assert.assertNotNull(bitmap);
        Bitmap bitmap1 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap1);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectf = new RectF(rect);
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setFilterBitmap(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(0xffc0c0c0);
        canvas.drawRoundRect(rectf, f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        if(flag)
            bitmap.recycle();
        return bitmap1;
    }

    public static int getSeconds(String s, int i)
    {
        long l = (new SimpleDateFormat("yyyy-MM-dd")).parse(s).getTime() / 1000L;
        i = (int)l;
_L2:
        return i;
        Exception exception;
        exception;
        exception.printStackTrace();
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static String getSizeKB(long l)
    {
        String s;
        if(l >> 20 > 0L)
            s = getSizeMB(l);
        else
        if(l >> 9 > 0L)
        {
            float f = (float)Math.round((10F * (float)l) / 1024F) / 10F;
            s = (new StringBuilder()).append(f).append("KB").toString();
        } else
        {
            s = (new StringBuilder()).append(l).append("B").toString();
        }
        return s;
    }

    public static String getSizeMB(long l)
    {
        float f = (float)Math.round((10F * (float)l) / 1048576F) / 10F;
        return (new StringBuilder()).append(f).append("MB").toString();
    }

    public static String getStack()
    {
        StackTraceElement astacktraceelement[] = (new Throwable()).getStackTrace();
        String s;
        if(astacktraceelement == null || astacktraceelement.length < 2)
        {
            s = "";
        } else
        {
            s = "";
            int i = 1;
            while(i < astacktraceelement.length && astacktraceelement[i].getClassName().contains("com.tencent.mm")) 
            {
                s = (new StringBuilder()).append(s).append("[").append(astacktraceelement[i].getClassName().substring(15)).append(":").append(astacktraceelement[i].getMethodName()).append("]").toString();
                i++;
            }
        }
        return s;
    }

    public static int getSystemVersion(Context context, int i)
    {
        if(context != null)
            i = android.provider.Settings.System.getInt(context.getContentResolver(), "sys.settings_system_version", i);
        return i;
    }

    public static String getTimeZone()
    {
        String s;
        int i;
        s = getTimeZoneDef();
        i = s.indexOf('+');
        if(i == -1)
            i = s.indexOf('-');
        if(i != -1) goto _L2; else goto _L1
_L1:
        String s1 = "";
_L4:
        return s1;
_L2:
        s1 = s.substring(i, i + 3);
        if(s1.charAt(1) == '0')
            s1 = (new StringBuilder()).append(s1.substring(0, 1)).append(s1.substring(2, 3)).toString();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static String getTimeZoneDef()
    {
        int i = (int)((long)TimeZone.getDefault().getRawOffset() / 60000L);
        char c = '+';
        if(i < 0)
        {
            c = '-';
            i = -i;
        }
        Object aobj[] = new Object[3];
        aobj[0] = Character.valueOf(c);
        aobj[1] = Long.valueOf((long)i / 60L);
        aobj[2] = Long.valueOf((long)i % 60L);
        return String.format("GMT%s%02d:%02d", aobj);
    }

    public static String getTimeZoneOffset()
    {
        TimeZone timezone = TimeZone.getDefault();
        int i = timezone.getRawOffset() / 1000;
        int j;
        double d;
        Object aobj[];
        if(timezone.useDaylightTime() && timezone.inDaylightTime(new java.sql.Date(System.currentTimeMillis())))
            j = 1;
        else
            j = 0;
        d = (double)i / 3600D + (double)j;
        aobj = new Object[1];
        aobj[0] = Double.valueOf(d);
        return String.format("%.2f", aobj);
    }

    public static String getTopActivityName(Context context)
    {
        String s1 = ((android.app.ActivityManager.RunningTaskInfo)((ActivityManager)context.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.getClassName();
        String s = s1;
_L2:
        return s;
        Exception exception;
        exception;
        exception.printStackTrace();
        s = "(null)";
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static byte[] getUuidRandom()
    {
        return MD5.getRawDigest(UUID.randomUUID().toString().getBytes());
    }

    public static int guessHttpContinueRecvLength(int i)
    {
        return i + (52 + 52 * (1 + (i - 1) / 1462));
    }

    public static int guessHttpRecvLength(int i)
    {
        return i + (208 + 52 * (1 + (i - 1) / 1462));
    }

    public static int guessHttpSendLength(int i)
    {
        return i + (224 + 52 * (1 + (i - 1) / 1462));
    }

    public static int guessTcpConnectLength()
    {
        return 172;
    }

    public static int guessTcpDisconnectLength()
    {
        return 156;
    }

    public static int guessTcpRecvLength(int i)
    {
        return i + (40 + 52 * (1 + (i - 1) / 1462));
    }

    public static int guessTcpSendLength(int i)
    {
        return i + (40 + 52 * (1 + (i - 1) / 1462));
    }

    public static void installPack(String s, Context context)
    {
        context.startActivity(getInstallPackIntent(s, context));
    }

    public static boolean isAlpha(char c)
    {
        boolean flag;
        if(c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z')
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean isChinese(char c)
    {
        Character.UnicodeBlock unicodeblock = Character.UnicodeBlock.of(c);
        boolean flag;
        if(unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeblock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeblock == Character.UnicodeBlock.GENERAL_PUNCTUATION || unicodeblock == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || unicodeblock == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean isDayTimeNow()
    {
        int i = (new GregorianCalendar()).get(11);
        boolean flag;
        if((long)i >= 6L && (long)i < 18L)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean isImgFile(String s)
    {
        boolean flag = false;
        if(s != null && s.length() != 0) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.Util", "isImgFile, invalid argument");
_L4:
        return flag;
_L2:
        if(s.length() >= 3 && (new File(s)).exists())
        {
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(s, options);
            if(options.outWidth > 0 && options.outHeight > 0)
                flag = true;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static boolean isIntentAvailable(Context context, Intent intent)
    {
        boolean flag;
        if(context.getPackageManager().queryIntentActivities(intent, 0x10000).size() > 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean isLockScreen(Context context)
    {
        boolean flag1 = ((KeyguardManager)context.getSystemService("keyguard")).inKeyguardRestrictedInputMode();
        boolean flag = flag1;
_L2:
        return flag;
        Exception exception;
        exception;
        exception.printStackTrace();
        flag = false;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static boolean isNightTime(int i, int j, int k)
    {
        boolean flag = false;
        if(j <= k) goto _L2; else goto _L1
_L1:
        if(i >= j || i <= k)
            flag = true;
_L4:
        return flag;
_L2:
        if(j < k)
        {
            if(i <= k && i >= j)
                flag = true;
        } else
        {
            flag = true;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static boolean isNullOrNil(String s)
    {
        boolean flag;
        if(s == null || s.length() <= 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean isNullOrNil(byte abyte0[])
    {
        boolean flag;
        if(abyte0 == null || abyte0.length <= 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean isNum(char c)
    {
        boolean flag;
        if(c >= '0' && c <= '9')
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean isProcessRunning(Context context, String s)
    {
        Iterator iterator = ((ActivityManager)context.getSystemService("activity")).getRunningAppProcesses().iterator();
_L4:
        if(!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
        if(runningappprocessinfo == null || runningappprocessinfo.processName == null || !runningappprocessinfo.processName.equals(s)) goto _L4; else goto _L3
_L3:
        boolean flag;
        Log.w("MicroMsg.Util", (new StringBuilder("process ")).append(s).append(" is running").toString());
        flag = true;
_L6:
        return flag;
_L2:
        Log.w("MicroMsg.Util", (new StringBuilder("process ")).append(s).append(" is not running").toString());
        flag = false;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static boolean isSDCardAvail()
    {
        boolean flag = false;
        boolean flag1;
        if(!Environment.getExternalStorageState().equals("mounted"))
            break MISSING_BLOCK_LABEL_37;
        flag1 = (new File(Environment.getExternalStorageDirectory().getAbsolutePath())).canWrite();
        if(flag1)
            flag = true;
_L2:
        return flag;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static boolean isSDCardHaveEnoughSpace(long l)
    {
        boolean flag = false;
        if("mounted".equals(Environment.getExternalStorageState())) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l1 = statfs.getBlockCount();
        long l2 = statfs.getAvailableBlocks();
        if(l1 > 0L && l1 - l2 >= 0L && (long)statfs.getBlockSize() * (long)statfs.getFreeBlocks() >= l)
            flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean isServiceRunning(Context context, String s)
    {
        Iterator iterator = ((ActivityManager)context.getSystemService("activity")).getRunningServices(0x7fffffff).iterator();
_L4:
        if(!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        android.app.ActivityManager.RunningServiceInfo runningserviceinfo = (android.app.ActivityManager.RunningServiceInfo)iterator.next();
        if(runningserviceinfo == null || runningserviceinfo.service == null || !runningserviceinfo.service.getClassName().toString().equals(s)) goto _L4; else goto _L3
_L3:
        boolean flag;
        Log.w("MicroMsg.Util", (new StringBuilder("service ")).append(s).append(" is running").toString());
        flag = true;
_L6:
        return flag;
_L2:
        Log.w("MicroMsg.Util", (new StringBuilder("service ")).append(s).append(" is not running").toString());
        flag = false;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static boolean isTopActivity(Context context)
    {
        String s = context.getClass().getName();
        String s1 = getTopActivityName(context);
        Log.d("MicroMsg.Util", (new StringBuilder("top activity=")).append(s1).append(", context=").append(s).toString());
        return s1.equalsIgnoreCase(s);
    }

    public static boolean isTopApplication(Context context)
    {
        boolean flag1;
        String s = ((android.app.ActivityManager.RunningTaskInfo)((ActivityManager)context.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.getClassName();
        String s1 = context.getPackageName();
        Log.d("MicroMsg.Util", (new StringBuilder("top activity=")).append(s).append(", context=").append(s1).toString());
        flag1 = s.contains(s1);
        boolean flag = flag1;
_L2:
        return flag;
        Exception exception;
        exception;
        exception.printStackTrace();
        flag = false;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static boolean isValidAccount(String s)
    {
        boolean flag = false;
        if(s != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        String s1 = s.trim();
        if(s1.length() < 6 || s1.length() > 20 || !isAlpha(s1.charAt(0)))
            continue; /* Loop/switch isn't completed */
        for(int i = 0; i < s1.length(); i++)
        {
            char c = s1.charAt(i);
            if(!isAlpha(c) && !isNum(c) && c != '-' && c != '_')
                continue; /* Loop/switch isn't completed */
        }

        flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean isValidEmail(String s)
    {
        boolean flag;
        if(s == null || s.length() <= 0)
            flag = false;
        else
            flag = s.trim().matches("^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$");
        return flag;
    }

    public static boolean isValidPassword(String s)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(s != null && s.length() >= 4)
            if(s.length() >= 9)
                flag = true;
            else
                try
                {
                    Integer.parseInt(s);
                }
                catch(NumberFormatException numberformatexception)
                {
                    flag = true;
                }
        return flag;
    }

    public static boolean isValidQQNum(String s)
    {
        boolean flag = false;
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        String s1 = s.trim();
        long l = Long.valueOf(s1).longValue();
        if(l > 0L && l <= 0xffffffffL)
            flag = true;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        numberformatexception.printStackTrace();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean jump(Context context, String s)
    {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
        boolean flag;
        if(!isIntentAvailable(context, intent))
        {
            Log.e("MicroMsg.Util", (new StringBuilder("jump to url failed, ")).append(s).toString());
            flag = false;
        } else
        {
            context.startActivity(intent);
            flag = true;
        }
        return flag;
    }

    public static String listToString(List list, String s)
    {
        String s1;
        if(list == null)
        {
            s1 = "";
        } else
        {
            StringBuilder stringbuilder = new StringBuilder("");
            int i = 0;
            while(i < list.size()) 
            {
                if(i == -1 + list.size())
                    stringbuilder.append(((String)list.get(i)).trim());
                else
                    stringbuilder.append((new StringBuilder()).append(((String)list.get(i)).trim()).append(s).toString());
                i++;
            }
            s1 = stringbuilder.toString();
        }
        return s1;
    }

    public static String mapToXml(String s, LinkedHashMap linkedhashmap)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("<key>");
        Object obj;
        for(Iterator iterator = linkedhashmap.entrySet().iterator(); iterator.hasNext(); stringbuilder.append((new StringBuilder("</")).append(obj).append(">").toString()))
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            obj = entry.getKey();
            Object obj1 = entry.getValue();
            if(obj == null)
                obj = "unknow";
            if(obj1 == null)
                obj1 = "unknow";
            stringbuilder.append((new StringBuilder("<")).append(obj).append(">").toString());
            stringbuilder.append(obj1);
        }

        stringbuilder.append("</key>");
        return stringbuilder.toString();
    }

    public static long milliSecondsToNow(long l)
    {
        return System.currentTimeMillis() - l;
    }

    public static long nowMilliSecond()
    {
        return System.currentTimeMillis();
    }

    public static long nowSecond()
    {
        return System.currentTimeMillis() / 1000L;
    }

    public static int nullAs(Integer integer, int i)
    {
        if(integer != null)
            i = integer.intValue();
        return i;
    }

    public static long nullAs(Long long1, long l)
    {
        if(long1 != null)
            l = long1.longValue();
        return l;
    }

    public static String nullAs(String s, String s1)
    {
        if(s != null)
            s1 = s;
        return s1;
    }

    public static boolean nullAs(Boolean boolean1, boolean flag)
    {
        if(boolean1 != null)
            flag = boolean1.booleanValue();
        return flag;
    }

    public static boolean nullAsFalse(Boolean boolean1)
    {
        boolean flag;
        if(boolean1 == null)
            flag = false;
        else
            flag = boolean1.booleanValue();
        return flag;
    }

    public static int nullAsInt(Object obj, int i)
    {
        if(obj != null) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        if(obj instanceof Integer)
            i = ((Integer)obj).intValue();
        else
        if(obj instanceof Long)
            i = ((Long)obj).intValue();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static int nullAsNil(Integer integer)
    {
        int i;
        if(integer == null)
            i = 0;
        else
            i = integer.intValue();
        return i;
    }

    public static long nullAsNil(Long long1)
    {
        long l;
        if(long1 == null)
            l = 0L;
        else
            l = long1.longValue();
        return l;
    }

    public static String nullAsNil(String s)
    {
        if(s == null)
            s = "";
        return s;
    }

    public static boolean nullAsTrue(Boolean boolean1)
    {
        boolean flag;
        if(boolean1 == null)
            flag = true;
        else
            flag = boolean1.booleanValue();
        return flag;
    }

    public static Map parseIni(String s)
    {
        Object obj;
        if(s == null || s.length() <= 0)
        {
            obj = null;
        } else
        {
            obj = new HashMap();
            String as[] = s.split("\n");
            int i = as.length;
            int j = 0;
            while(j < i) 
            {
                String s1 = as[j];
                if(s1 != null && s1.length() > 0)
                {
                    String as1[] = s1.trim().split("=", 2);
                    if(as1 != null && as1.length >= 2)
                    {
                        String s2 = as1[0];
                        String s3 = as1[1];
                        if(s2 != null && s2.length() > 0 && s2.matches("^[a-zA-Z0-9_]*"))
                            ((Map) (obj)).put(s2, s3);
                    }
                }
                j++;
            }
        }
        return ((Map) (obj));
    }

    public static Map parseXml(String s, String s1, String s2)
    {
        Object obj = null;
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        return ((Map) (obj));
_L2:
        HashMap hashmap;
        DocumentBuilderFactory documentbuilderfactory;
        hashmap = new HashMap();
        documentbuilderfactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentbuilder = documentbuilderfactory.newDocumentBuilder();
        if(documentbuilder != null)
            break MISSING_BLOCK_LABEL_63;
        Log.e("MicroMsg.Util", "new Document Builder failed");
          goto _L1
        ParserConfigurationException parserconfigurationexception;
        parserconfigurationexception;
        parserconfigurationexception.printStackTrace();
          goto _L1
        Document document1;
        InputSource inputsource = new InputSource(new ByteArrayInputStream(s.getBytes()));
        if(s2 != null)
            inputsource.setEncoding(s2);
        document1 = documentbuilder.parse(inputsource);
        Document document = document1;
        document.normalize();
_L3:
        Exception exception;
        IOException ioexception;
        SAXException saxexception;
        DOMException domexception;
        Element element;
        if(document == null)
        {
            Log.e("MicroMsg.Util", "new Document failed");
        } else
        {
label0:
            {
                element = document.getDocumentElement();
                if(element != null)
                    break label0;
                Log.e("MicroMsg.Util", "getDocumentElement failed");
            }
        }
          goto _L1
        domexception;
        document = null;
_L7:
        domexception.printStackTrace();
          goto _L3
        saxexception;
        saxexception.printStackTrace();
          goto _L1
        ioexception;
        ioexception.printStackTrace();
          goto _L1
        exception;
        exception.printStackTrace();
          goto _L1
        if(s1 == null || !s1.equals(element.getNodeName())) goto _L5; else goto _L4
_L4:
        a(hashmap, "", element, 0);
_L6:
        java.util.Map.Entry entry;
        for(Iterator iterator = hashmap.entrySet().iterator(); iterator.hasNext(); Log.v("MicroMsg.Util", (new StringBuilder("key=")).append((String)entry.getKey()).append(" value=").append((String)entry.getValue()).toString()))
            entry = (java.util.Map.Entry)iterator.next();

        break MISSING_BLOCK_LABEL_390;
_L5:
        NodeList nodelist;
label1:
        {
            nodelist = element.getElementsByTagName(s1);
            if(nodelist.getLength() > 0)
                break label1;
            Log.e("MicroMsg.Util", "parse item null");
        }
          goto _L1
        if(nodelist.getLength() > 1)
            Log.w("MicroMsg.Util", "parse items more than one");
        a(hashmap, "", nodelist.item(0), 0);
          goto _L6
        obj = hashmap;
          goto _L1
        domexception;
          goto _L7
    }

    public static MediaPlayer playSound(Context context, int i, android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
    {
        return playSound(context, i, false, oncompletionlistener);
    }

    public static MediaPlayer playSound(Context context, int i, boolean flag, android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
    {
        MediaPlayer mediaplayer;
        try
        {
            String s = context.getString(i);
            AssetFileDescriptor assetfiledescriptor = context.getAssets().openFd(s);
            mediaplayer = new MediaPlayer();
            mediaplayer.setDataSource(assetfiledescriptor.getFileDescriptor(), assetfiledescriptor.getStartOffset(), assetfiledescriptor.getLength());
            assetfiledescriptor.close();
            mediaplayer.prepare();
            mediaplayer.setLooping(flag);
            mediaplayer.start();
            mediaplayer.setOnCompletionListener(oncompletionlistener);
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
            mediaplayer = null;
        }
        return mediaplayer;
    }

    public static void playSound(Context context, int i)
    {
        playSound(context, i, ((android.media.MediaPlayer.OnCompletionListener) (new _cls1())));
    }

    public static String processXml(String s)
    {
        if(s != null && s.length() != 0 && android.os.Build.VERSION.SDK_INT < 8)
            s = expandEntities(s);
        return s;
    }

    public static byte[] readFromFile(String s)
    {
        byte abyte0[];
        File file;
        abyte0 = null;
        if(isNullOrNil(s))
        {
            Log.w("MicroMsg.Util", "readFromFile error, path is null or empty");
        } else
        {
label0:
            {
                file = new File(s);
                if(file.exists())
                    break label0;
                Object aobj1[] = new Object[1];
                aobj1[0] = s;
                Log.w("MicroMsg.Util", "readFromFile error, file is not exit, path = %s", aobj1);
            }
        }
_L1:
        return abyte0;
        FileInputStream fileinputstream;
        int i;
        i = (int)file.length();
        fileinputstream = new FileInputStream(file);
        byte abyte1[];
        abyte1 = new byte[i];
        int j = fileinputstream.read(abyte1);
        if(j == i)
            break MISSING_BLOCK_LABEL_158;
        Object aobj[] = new Object[3];
        aobj[0] = s;
        aobj[1] = Integer.valueOf(i);
        aobj[2] = Integer.valueOf(j);
        Log.w("MicroMsg.Util", "readFromFile error, size is not equal, path = %s, file length is %d, count is %d", aobj);
        try
        {
            fileinputstream.close();
        }
        catch(IOException ioexception3)
        {
            ioexception3.printStackTrace();
        }
          goto _L1
        Log.d("MicroMsg.Util", "readFromFile ok!");
        try
        {
            fileinputstream.close();
        }
        catch(IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        abyte0 = abyte1;
          goto _L1
        Exception exception2;
        exception2;
        fileinputstream = null;
_L4:
        exception2.printStackTrace();
        if(fileinputstream != null)
            try
            {
                fileinputstream.close();
            }
            catch(IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
          goto _L1
        Exception exception;
        exception;
        Exception exception1;
        fileinputstream = null;
        exception1 = exception;
_L3:
        if(fileinputstream != null)
            try
            {
                fileinputstream.close();
            }
            catch(IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        throw exception1;
        exception1;
        if(true) goto _L3; else goto _L2
_L2:
        exception2;
          goto _L4
    }

    public static void saveBitmapToImage(Bitmap bitmap, int i, android.graphics.Bitmap.CompressFormat compressformat, String s, String s1, boolean flag)
    {
        boolean flag1;
        File file;
        FileOutputStream fileoutputstream;
        if(s != null && s1 != null)
            flag1 = true;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        Log.d("MicroMsg.Util", (new StringBuilder("saving to ")).append(s).append(s1).toString());
        file = new File((new StringBuilder()).append(s).append(s1).toString());
        file.createNewFile();
        fileoutputstream = new FileOutputStream(file);
        bitmap.compress(compressformat, i, fileoutputstream);
        fileoutputstream.flush();
_L1:
        return;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        filenotfoundexception.printStackTrace();
          goto _L1
    }

    public static void saveBitmapToImage(Bitmap bitmap, int i, android.graphics.Bitmap.CompressFormat compressformat, String s, boolean flag)
    {
        FileOutputStream fileoutputstream;
        boolean flag1;
        File file;
        if(!isNullOrNil(s))
            flag1 = true;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        Log.d("MicroMsg.Util", (new StringBuilder("saving to ")).append(s).toString());
        file = new File(s);
        file.createNewFile();
        fileoutputstream = new FileOutputStream(file);
        bitmap.compress(compressformat, i, fileoutputstream);
        fileoutputstream.flush();
        fileoutputstream.close();
_L1:
        return;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        fileoutputstream = null;
_L4:
        filenotfoundexception.printStackTrace();
        if(fileoutputstream != null)
            fileoutputstream.close();
          goto _L1
        Exception exception;
        exception;
        fileoutputstream = null;
_L3:
        if(fileoutputstream != null)
            fileoutputstream.close();
        throw exception;
        exception;
        if(true) goto _L3; else goto _L2
_L2:
        filenotfoundexception;
          goto _L4
    }

    public static long secondsToMilliSeconds(int i)
    {
        return 1000L * (long)i;
    }

    public static long secondsToNow(long l)
    {
        return System.currentTimeMillis() / 1000L - l;
    }

    public static void selectPicture(Context context, int i)
    {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("image/*");
        Intent intent1 = Intent.createChooser(intent, null);
        ((Activity)context).startActivityForResult(intent1, i);
    }

    public static void shake(Context context, boolean flag)
    {
        Vibrator vibrator = (Vibrator)context.getSystemService("vibrator");
        if(vibrator != null)
            if(flag)
                vibrator.vibrate(bz, -1);
            else
                vibrator.cancel();
    }

    public static int[] splitToIntArray(String s)
    {
        int ai1[];
        if(s == null)
        {
            ai1 = null;
        } else
        {
            String as[] = s.split(":");
            ArrayList arraylist = new ArrayList();
            int i = as.length;
            int j = 0;
            do
            {
                if(j >= i)
                    break;
                String s1 = as[j];
                if(s1 != null && s1.length() > 0)
                    try
                    {
                        arraylist.add(Integer.valueOf(Integer.valueOf(s1).intValue()));
                    }
                    catch(Exception exception)
                    {
                        exception.printStackTrace();
                        Log.e("MicroMsg.Util", "invalid port num, ignore");
                    }
                j++;
            } while(true);
            int ai[] = new int[arraylist.size()];
            for(int k = 0; k < ai.length; k++)
                ai[k] = ((Integer)arraylist.get(k)).intValue();

            ai1 = ai;
        }
        return ai1;
    }

    public static List stringsToList(String as[])
    {
        Object obj;
        if(as == null || as.length == 0)
        {
            obj = null;
        } else
        {
            ArrayList arraylist = new ArrayList();
            for(int i = 0; i < as.length; i++)
                arraylist.add(as[i]);

            obj = arraylist;
        }
        return ((List) (obj));
    }

    public static long ticksToNow(long l)
    {
        return SystemClock.elapsedRealtime() - l;
    }

    public static void transClickToSelect(View view, View view1)
    {
        view.setOnTouchListener(new _cls2(view1, view));
    }

    public static void writeToFile(String s, String s1)
    {
        if(!isNullOrNil(s) || !isNullOrNil(s1))
            break MISSING_BLOCK_LABEL_98;
        File file = new File("/sdcard/Tencent/");
        if(!file.exists())
            file.mkdir();
        File file1 = new File((new StringBuilder("/sdcard/Tencent/")).append(s1).toString());
        FileOutputStream fileoutputstream;
        Exception exception;
        if(!file1.exists())
            try
            {
                file1.createNewFile();
            }
            catch(IOException ioexception) { }
        fileoutputstream = new FileOutputStream(file1);
        fileoutputstream.write(s.getBytes());
        fileoutputstream.close();
_L1:
        return;
        exception;
        exception.printStackTrace();
          goto _L1
    }

    public static boolean writeToFile(String s, byte abyte0[])
    {
        boolean flag = false;
        if(!isNullOrNil(s) && !isNullOrNil(abyte0)) goto _L2; else goto _L1
_L1:
        Log.w("MicroMsg.Util", "write to file error, path is null or empty, or data is empty");
_L3:
        return flag;
_L2:
        FileOutputStream fileoutputstream = new FileOutputStream(s);
        fileoutputstream.write(abyte0);
        fileoutputstream.flush();
        try
        {
            fileoutputstream.close();
        }
        catch(IOException ioexception2)
        {
            ioexception2.printStackTrace();
        }
        Log.d("MicroMsg.Util", "writeToFile ok!");
        flag = true;
          goto _L3
        Exception exception;
        exception;
        fileoutputstream = null;
_L6:
        exception.printStackTrace();
        Log.w("MicroMsg.Util", "write to file error");
        if(fileoutputstream != null)
            try
            {
                fileoutputstream.close();
            }
            catch(IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
          goto _L3
        Exception exception1;
        exception1;
        fileoutputstream = null;
_L5:
        if(fileoutputstream != null)
            try
            {
                fileoutputstream.close();
            }
            catch(IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        throw exception1;
        exception1;
        if(true) goto _L5; else goto _L4
_L4:
        exception;
          goto _L6
    }

    public static final int BEGIN_TIME = 22;
    public static final int BIT_OF_KB = 10;
    public static final int BIT_OF_MB = 20;
    public static final int BYTE_OF_KB = 1024;
    public static final int BYTE_OF_MB = 0x100000;
    public static final String CHINA = "zh_CN";
    public static final int DAY = 0;
    public static final int END_TIME = 8;
    public static final String ENGLISH = "en";
    private static final TimeZone GMT = TimeZone.getTimeZone("GMT");
    public static final String HONGKONG = "zh_HK";
    public static final String LANGUAGE_DEFAULT = "language_default";
    public static final int MASK_16BIT = 65535;
    public static final int MASK_32BIT = -1;
    public static final int MASK_4BIT = 15;
    public static final int MASK_8BIT = 255;
    public static final long MAX_32BIT_VALUE = 0xffffffffL;
    public static final int MAX_ACCOUNT_LENGTH = 20;
    public static final int MAX_DECODE_PICTURE_SIZE = 0x2a3000;
    public static final int MAX_PASSWORD_LENGTH = 9;
    public static final long MILLSECONDS_OF_DAY = 0x5265c00L;
    public static final long MILLSECONDS_OF_HOUR = 0x36ee80L;
    public static final long MILLSECONDS_OF_MINUTE = 60000L;
    public static final long MILLSECONDS_OF_SECOND = 1000L;
    public static final long MINUTE_OF_HOUR = 60L;
    public static final int MIN_ACCOUNT_LENGTH = 6;
    public static final int MIN_PASSWORD_LENGTH = 4;
    public static final String PHOTO_DEFAULT_EXT = ".jpg";
    public static final long SECOND_OF_MINUTE = 60L;
    public static final String TAIWAN = "zh_TW";
    private static final char bA[];
    private static final char bB[];
    private static final String bC[];
    private static final long bz[];

    static 
    {
        long al[] = new long[4];
        al[0] = 300L;
        al[1] = 200L;
        al[2] = 300L;
        al[3] = 200L;
        bz = al;
        char ac[] = new char[3];
        ac[0] = '\t';
        ac[1] = '\n';
        ac[2] = '\r';
        bA = ac;
        char ac1[] = new char[5];
        ac1[0] = '<';
        ac1[1] = '>';
        ac1[2] = '"';
        ac1[3] = '\'';
        ac1[4] = '&';
        bB = ac1;
        String as[] = new String[5];
        as[0] = "&lt;";
        as[1] = "&gt;";
        as[2] = "&quot;";
        as[3] = "&apos;";
        as[4] = "&amp;";
        bC = as;
    }

    private class _cls1
        implements android.media.MediaPlayer.OnCompletionListener
    {

        public final void onCompletion(MediaPlayer mediaplayer)
        {
            mediaplayer.release();
        }

        _cls1()
        {
        }
    }


    private class _cls2
        implements android.view.View.OnTouchListener
    {

        public final boolean onTouch(View view, MotionEvent motionevent)
        {
            motionevent.getAction();
            JVM INSTR tableswitch 0 4: default 40
        //                       0 42
        //                       1 53
        //                       2 64
        //                       3 53
        //                       4 53;
               goto _L1 _L2 _L3 _L4 _L3 _L3
_L1:
            return false;
_L2:
            bD.setSelected(true);
            continue; /* Loop/switch isn't completed */
_L3:
            bD.setSelected(false);
            continue; /* Loop/switch isn't completed */
_L4:
            bD.setSelected(bE.isPressed());
            if(true) goto _L1; else goto _L5
_L5:
        }

        final View bD;
        final View bE;

        _cls2(View view, View view1)
        {
            bD = view;
            bE = view1;
            super();
        }
    }

}
