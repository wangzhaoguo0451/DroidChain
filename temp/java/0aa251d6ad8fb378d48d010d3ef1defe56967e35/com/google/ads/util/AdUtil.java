// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.ads.util;

import android.app.Activity;
import android.content.*;
import android.content.pm.*;
import android.location.Location;
import android.media.AudioManager;
import android.net.*;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLDecoder;
import java.security.*;
import java.util.*;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.json.*;

// Referenced classes of package com.google.ads.util:
//            a, b

public final class AdUtil
{
    public static class UserActivityReceiver extends BroadcastReceiver
    {

        public void onReceive(Context context, Intent intent)
        {
            if(!intent.getAction().equals("android.intent.action.USER_PRESENT")) goto _L2; else goto _L1
_L1:
            AdUtil.a(true);
_L4:
            return;
_L2:
            if(intent.getAction().equals("android.intent.action.SCREEN_OFF"))
                AdUtil.a(false);
            if(true) goto _L4; else goto _L3
_L3:
        }

        public UserActivityReceiver()
        {
        }
    }

    public static final class a extends Enum
    {

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/google/ads/util/AdUtil$a, s);
        }

        public static a[] values()
        {
            return (a[])g.clone();
        }

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        public static final a f;
        private static final a g[];

        static 
        {
            a = new a("INVALID", 0);
            b = new a("SPEAKER", 1);
            c = new a("HEADPHONES", 2);
            d = new a("VIBRATE", 3);
            e = new a("EMULATOR", 4);
            f = new a("OTHER", 5);
            a aa[] = new a[6];
            aa[0] = a;
            aa[1] = b;
            aa[2] = c;
            aa[3] = d;
            aa[4] = e;
            aa[5] = f;
            g = aa;
        }

        private a(String s, int j)
        {
            super(s, j);
        }
    }


    private AdUtil()
    {
    }

    public static DisplayMetrics a(Activity activity)
    {
        if(e == null)
        {
            e = new DisplayMetrics();
            activity.getWindowManager().getDefaultDisplay().getMetrics(e);
        }
        return e;
    }

    public static String a(Context context)
    {
        if(b != null) goto _L2; else goto _L1
_L1:
        String s;
        String s2;
        String s1 = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        if(s1 == null || a())
            s2 = a("emulator");
        else
            s2 = a(s1);
        if(s2 != null) goto _L4; else goto _L3
_L3:
        s = null;
_L6:
        return s;
_L4:
        b = s2.toUpperCase();
_L2:
        s = b;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static String a(Location location)
    {
        String s1;
        if(location == null)
        {
            s1 = null;
        } else
        {
            Object aobj[] = new Object[4];
            aobj[0] = Long.valueOf(1000L * location.getTime());
            aobj[1] = Long.valueOf((long)(10000000D * location.getLatitude()));
            aobj[2] = Long.valueOf((long)(10000000D * location.getLongitude()));
            aobj[3] = Long.valueOf((long)(1000F * location.getAccuracy()));
            String s = b(String.format("role: 6 producer: 24 historical_role: 1 historical_producer: 12 timestamp: %d latlng < latitude_e7: %d longitude_e7: %d> radius: %d", aobj));
            s1 = (new StringBuilder()).append("e1+").append(s).toString();
        }
        return s1;
    }

    public static String a(String s)
    {
        String s1;
        s1 = null;
        if(s == null || s.length() <= 0)
            break MISSING_BLOCK_LABEL_66;
        String s2;
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(s.getBytes(), 0, s.length());
        Object aobj[] = new Object[1];
        aobj[0] = new BigInteger(1, messagedigest.digest());
        s2 = String.format("%032X", aobj);
        s1 = s2;
_L2:
        return s1;
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
        s1 = s.substring(0, 32);
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static String a(Map map)
    {
        String s = null;
        String s1 = b(map).toString();
        s = s1;
_L2:
        return s;
        JSONException jsonexception;
        jsonexception;
        com.google.ads.util.a.c("JsonException in serialization: ", jsonexception);
        if(true) goto _L2; else goto _L1
_L1:
    }

    private static JSONArray a(Set set)
        throws JSONException
    {
        JSONArray jsonarray = new JSONArray();
        if(set != null && !set.isEmpty())
        {
            Iterator iterator = set.iterator();
            while(iterator.hasNext()) 
            {
                Object obj = iterator.next();
                if((obj instanceof String) || (obj instanceof Integer) || (obj instanceof Double) || (obj instanceof Long) || (obj instanceof Float))
                    jsonarray.put(obj);
                else
                if(obj instanceof Map)
                    try
                    {
                        jsonarray.put(b((Map)obj));
                    }
                    catch(ClassCastException classcastexception1)
                    {
                        com.google.ads.util.a.c("Unknown map type in json serialization: ", classcastexception1);
                    }
                else
                if(obj instanceof Set)
                    try
                    {
                        jsonarray.put(a((Set)obj));
                    }
                    catch(ClassCastException classcastexception)
                    {
                        com.google.ads.util.a.c("Unknown map type in json serialization: ", classcastexception);
                    }
                else
                    com.google.ads.util.a.e((new StringBuilder()).append("Unknown value in json serialization: ").append(obj.toString()).append(" : ").append(obj.getClass().getCanonicalName().toString()).toString());
            }
        }
        return jsonarray;
    }

    public static void a(WebView webview)
    {
        String s = i(webview.getContext().getApplicationContext());
        webview.getSettings().setUserAgentString(s);
    }

    public static void a(HttpURLConnection httpurlconnection, Context context)
    {
        httpurlconnection.setRequestProperty("User-Agent", i(context));
    }

    public static void a(boolean flag)
    {
        f = flag;
    }

    public static boolean a()
    {
        boolean flag;
        if("unknown".equals(Build.BOARD) && "generic".equals(Build.DEVICE) && "generic".equals(Build.BRAND))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean a(Uri uri)
    {
        String s = uri.getScheme();
        boolean flag;
        if("http".equalsIgnoreCase(s) || "https".equalsIgnoreCase(s))
            flag = true;
        else
            flag = false;
        return flag;
    }

    private static String b(String s)
    {
        String s2;
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        byte abyte0[] = new byte[16];
        abyte0[0] = 10;
        abyte0[1] = 55;
        abyte0[2] = -112;
        abyte0[3] = -47;
        abyte0[4] = -6;
        abyte0[5] = 7;
        abyte0[6] = 11;
        abyte0[7] = 75;
        abyte0[8] = -7;
        abyte0[9] = -121;
        abyte0[10] = 121;
        abyte0[11] = 69;
        abyte0[12] = 80;
        abyte0[13] = -61;
        abyte0[14] = 15;
        abyte0[15] = 5;
        cipher.init(1, new SecretKeySpec(abyte0, "AES"));
        byte abyte1[] = cipher.getIV();
        byte abyte2[] = cipher.doFinal(s.getBytes());
        byte abyte3[] = new byte[abyte1.length + abyte2.length];
        System.arraycopy(abyte1, 0, abyte3, 0, abyte1.length);
        System.arraycopy(abyte2, 0, abyte3, abyte1.length, abyte2.length);
        s2 = com.google.ads.util.b.a(abyte3);
        String s1 = s2;
_L2:
        return s1;
        GeneralSecurityException generalsecurityexception;
        generalsecurityexception;
        s1 = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static HashMap b(Uri uri)
    {
        if(uri != null) goto _L2; else goto _L1
_L1:
        HashMap hashmap = null;
_L4:
        return hashmap;
_L2:
        String as[];
        int j;
        int k;
        hashmap = new HashMap();
        String s = uri.getEncodedQuery();
        if(s == null)
            continue; /* Loop/switch isn't completed */
        as = s.split("&");
        j = as.length;
        k = 0;
_L5:
        String s1;
        int l;
        if(k < j)
        {
label0:
            {
                s1 = as[k];
                l = s1.indexOf('=');
                if(l != -1)
                    break label0;
                hashmap = null;
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
        String s2 = s1.substring(0, l);
        String s3 = s1.substring(l + 1);
        hashmap.put(URLDecoder.decode(s2), URLDecoder.decode(s3));
        k++;
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    private static JSONObject b(Map map)
        throws JSONException
    {
        JSONObject jsonobject = new JSONObject();
        JSONObject jsonobject1;
        if(map == null || map.isEmpty())
        {
            jsonobject1 = jsonobject;
        } else
        {
            for(Iterator iterator = map.keySet().iterator(); iterator.hasNext();)
            {
                String s = (String)iterator.next();
                Object obj = map.get(s);
                if((obj instanceof String) || (obj instanceof Integer) || (obj instanceof Double) || (obj instanceof Long) || (obj instanceof Float))
                    jsonobject.put(s, obj);
                else
                if(obj instanceof Map)
                    try
                    {
                        jsonobject.put(s, b((Map)obj));
                    }
                    catch(ClassCastException classcastexception1)
                    {
                        com.google.ads.util.a.c("Unknown map type in json serialization: ", classcastexception1);
                    }
                else
                if(obj instanceof Set)
                    try
                    {
                        jsonobject.put(s, a((Set)obj));
                    }
                    catch(ClassCastException classcastexception)
                    {
                        com.google.ads.util.a.c("Unknown map type in json serialization: ", classcastexception);
                    }
                else
                    com.google.ads.util.a.e((new StringBuilder()).append("Unknown value in json serialization: ").append(obj.toString()).append(" : ").append(obj.getClass().getCanonicalName().toString()).toString());
            }

            jsonobject1 = jsonobject;
        }
        return jsonobject1;
    }

    public static boolean b()
    {
        return f;
    }

    public static boolean b(Context context)
    {
        PackageManager packagemanager = context.getPackageManager();
        String s = context.getPackageName();
        boolean flag;
        if(packagemanager.checkPermission("android.permission.INTERNET", s) == -1)
        {
            com.google.ads.util.a.b("INTERNET permissions must be enabled in AndroidManifest.xml.");
            flag = false;
        } else
        if(packagemanager.checkPermission("android.permission.ACCESS_NETWORK_STATE", s) == -1)
        {
            com.google.ads.util.a.b("ACCESS_NETWORK_STATE permissions must be enabled in AndroidManifest.xml.");
            flag = false;
        } else
        {
            flag = true;
        }
        return flag;
    }

    public static boolean c(Context context)
    {
        if(a == null) goto _L2; else goto _L1
_L1:
        boolean flag1 = a.booleanValue();
_L4:
        return flag1;
_L2:
        ResolveInfo resolveinfo;
        boolean flag;
        resolveinfo = context.getPackageManager().resolveActivity(new Intent(context, com/google/ads/AdActivity), 0x10000);
        flag = true;
        if(resolveinfo != null && resolveinfo.activityInfo != null)
            break; /* Loop/switch isn't completed */
        com.google.ads.util.a.b("Could not find com.google.ads.AdActivity, please make sure it is registered in AndroidManifest.xml.");
        flag1 = false;
_L5:
        a = Boolean.valueOf(flag1);
        if(true) goto _L4; else goto _L3
_L3:
        if((0x10 & resolveinfo.activityInfo.configChanges) == 0)
        {
            com.google.ads.util.a.b("The android:configChanges value of the com.google.ads.AdActivity must include keyboard.");
            flag = false;
        }
        if((0x20 & resolveinfo.activityInfo.configChanges) == 0)
        {
            com.google.ads.util.a.b("The android:configChanges value of the com.google.ads.AdActivity must include keyboardHidden.");
            flag = false;
        }
        if((0x80 & resolveinfo.activityInfo.configChanges) == 0)
        {
            com.google.ads.util.a.b("The android:configChanges value of the com.google.ads.AdActivity must include orientation.");
            flag1 = false;
        } else
        {
            flag1 = flag;
        }
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    public static String d(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if(networkinfo != null) goto _L2; else goto _L1
_L1:
        String s = null;
_L4:
        return s;
_L2:
        switch(networkinfo.getType())
        {
        default:
            s = "unknown";
            break;

        case 0: // '\0'
            s = "ed";
            break;

        case 1: // '\001'
            s = "wi";
            break;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static String e(Context context)
    {
        if(c == null)
        {
            StringBuilder stringbuilder = new StringBuilder();
            PackageManager packagemanager = context.getPackageManager();
            List list = packagemanager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=donuts")), 0x10000);
            if(list == null || list.size() == 0)
                stringbuilder.append("m");
            List list1 = packagemanager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("market://search?q=pname:com.google")), 0x10000);
            if(list1 == null || list1.size() == 0)
            {
                if(stringbuilder.length() > 0)
                    stringbuilder.append(",");
                stringbuilder.append("a");
            }
            List list2 = packagemanager.queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("tel://6509313940")), 0x10000);
            if(list2 == null || list2.size() == 0)
            {
                if(stringbuilder.length() > 0)
                    stringbuilder.append(",");
                stringbuilder.append("t");
            }
            c = stringbuilder.toString();
        }
        return c;
    }

    public static a f(Context context)
    {
        if(d == null)
            d = (AudioManager)context.getSystemService("audio");
        a _tmp = a.f;
        int j = d.getMode();
        a a1;
        if(a())
            a1 = a.e;
        else
        if(d.isMusicActive() || d.isSpeakerphoneOn() || j == 2 || j == 1)
        {
            a1 = a.d;
        } else
        {
            int k = d.getRingerMode();
            if(k == 0 || k == 1)
                a1 = a.d;
            else
                a1 = a.b;
        }
        return a1;
    }

    public static String g(Context context)
    {
        String s = "p";
        if(((WindowManager)context.getSystemService("window")).getDefaultDisplay().getOrientation() == 1)
            s = "l";
        return s;
    }

    public static void h(Context context)
    {
        if(!g)
        {
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction("android.intent.action.USER_PRESENT");
            intentfilter.addAction("android.intent.action.SCREEN_OFF");
            context.registerReceiver(new UserActivityReceiver(), intentfilter);
            g = true;
        }
    }

    private static String i(Context context)
    {
        if(h == null)
        {
            String s = (new WebView(context)).getSettings().getUserAgentString();
            if(s == null || s.length() == 0 || s.equals("Java0"))
            {
                String s1 = System.getProperty("os.name", "Linux");
                String s2 = (new StringBuilder()).append("Android ").append(android.os.Build.VERSION.RELEASE).toString();
                Locale locale = Locale.getDefault();
                String s3 = locale.getLanguage().toLowerCase();
                if(s3.length() == 0)
                    s3 = "en";
                String s4 = locale.getCountry().toLowerCase();
                String s5;
                String s6;
                if(s4.length() > 0)
                    s5 = (new StringBuilder()).append(s3).append("-").append(s4).toString();
                else
                    s5 = s3;
                s6 = (new StringBuilder()).append(Build.MODEL).append(" Build/").append(Build.ID).toString();
                s = (new StringBuilder()).append("Mozilla/5.0 (").append(s1).append("; U; ").append(s2).append("; ").append(s5).append("; ").append(s6).append(") AppleWebKit/0.0 (KHTML, like ").append("Gecko) Version/0.0 Mobile Safari/0.0").toString();
            }
            h = (new StringBuilder()).append(s).append(" (Mobile; ").append("afma-sdk-a-v").append("4.1.0").append(")").toString();
        }
        return h;
    }

    private static Boolean a = null;
    private static String b = null;
    private static String c;
    private static AudioManager d;
    private static DisplayMetrics e;
    private static boolean f = true;
    private static boolean g = false;
    private static String h = null;

}
