// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.content.*;
import android.content.pm.*;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import java.io.*;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.*;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log

public class NetStatusUtil
{

    public NetStatusUtil()
    {
    }

    private static Intent a(Context context, String s)
    {
        PackageManager packagemanager;
        List list;
        int i;
        packagemanager = context.getPackageManager();
        list = packagemanager.getInstalledPackages(0);
        if(list == null || list.size() <= 0)
            break MISSING_BLOCK_LABEL_320;
        Log.e("MicroMsg.NetStatusUtil", (new StringBuilder("package  size")).append(list.size()).toString());
        i = 0;
_L10:
        int j = list.size();
        if(i >= j)
            break MISSING_BLOCK_LABEL_320;
        List list1;
        Log.e("MicroMsg.NetStatusUtil", (new StringBuilder("package ")).append(((PackageInfo)list.get(i)).packageName).toString());
        Intent intent1 = new Intent();
        intent1.setPackage(((PackageInfo)list.get(i)).packageName);
        list1 = packagemanager.queryIntentActivities(intent1, 0);
        if(list1 == null) goto _L2; else goto _L1
_L1:
        int i1 = list1.size();
        int k = i1;
_L8:
        if(k <= 0) goto _L4; else goto _L3
_L3:
        int l;
        Log.e("MicroMsg.NetStatusUtil", (new StringBuilder("activityName count ")).append(k).toString());
        l = 0;
_L9:
        if(l >= k) goto _L4; else goto _L5
_L5:
        ActivityInfo activityinfo = ((ResolveInfo)list1.get(l)).activityInfo;
        if(!activityinfo.name.contains(s)) goto _L7; else goto _L6
_L6:
        Intent intent;
        intent = new Intent("/");
        intent.setComponent(new ComponentName(activityinfo.packageName, activityinfo.name));
        intent.setAction("android.intent.action.VIEW");
        context.startActivity(intent);
_L11:
        return intent;
_L2:
        k = 0;
          goto _L8
_L7:
        l++;
          goto _L9
        Exception exception2;
        exception2;
        exception2.printStackTrace();
_L4:
        i++;
          goto _L10
        Exception exception1;
        exception1;
        exception1.printStackTrace();
          goto _L4
        Exception exception;
        exception;
        exception.printStackTrace();
        intent = null;
          goto _L11
    }

    public static boolean checkFromXml(int i)
    {
        NodeList nodelist;
        int j;
        runRootCommand();
        nodelist = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new FileInputStream(new File("/data/system/netpolicy.xml"))).getDocumentElement().getElementsByTagName("uid-policy");
        j = 0;
_L1:
        boolean flag;
        int k;
        if(j >= nodelist.getLength())
            break MISSING_BLOCK_LABEL_180;
        Element element = (Element)nodelist.item(j);
        String s = element.getAttribute("uid");
        String s1 = element.getAttribute("policy");
        Log.e("MicroMsg.NetStatusUtil", (new StringBuilder("uid is ")).append(s).append("  policy is ").append(s1).toString());
        if(!s.equals(Integer.toString(i)))
            break MISSING_BLOCK_LABEL_169;
        if(Integer.parseInt(s1) == 1)
        {
            flag = true;
            break MISSING_BLOCK_LABEL_182;
        }
        k = Integer.parseInt(s1);
        if(k == 0)
        {
            flag = false;
            break MISSING_BLOCK_LABEL_182;
        }
        j++;
          goto _L1
        Exception exception;
        exception;
        exception.printStackTrace();
        flag = false;
        return flag;
    }

    public static void dumpNetStatus(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        Log.e("MicroMsg.NetStatusUtil", (new StringBuilder("isAvailable ")).append(networkinfo.isAvailable()).toString());
        Log.e("MicroMsg.NetStatusUtil", (new StringBuilder("isConnected ")).append(networkinfo.isConnected()).toString());
        Log.e("MicroMsg.NetStatusUtil", (new StringBuilder("isRoaming ")).append(networkinfo.isRoaming()).toString());
        Log.e("MicroMsg.NetStatusUtil", (new StringBuilder("isFailover ")).append(networkinfo.isFailover()).toString());
        Log.e("MicroMsg.NetStatusUtil", (new StringBuilder("getSubtypeName ")).append(networkinfo.getSubtypeName()).toString());
        Log.e("MicroMsg.NetStatusUtil", (new StringBuilder("getExtraInfo ")).append(networkinfo.getExtraInfo()).toString());
        Log.e("MicroMsg.NetStatusUtil", (new StringBuilder("activeNetInfo ")).append(networkinfo.toString()).toString());
_L1:
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L1
    }

    public static int getBackgroundLimitType(Context context)
    {
        if(android.os.Build.VERSION.SDK_INT < 14) goto _L2; else goto _L1
_L1:
        int l;
        Class class1 = Class.forName("android.app.ActivityManagerNative");
        Object obj = class1.getMethod("getDefault", new Class[0]).invoke(class1, new Object[0]);
        l = ((Integer)obj.getClass().getMethod("getProcessLimit", new Class[0]).invoke(obj, new Object[0])).intValue();
        if(l != 0) goto _L2; else goto _L3
_L3:
        int i = 1;
_L5:
        return i;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
_L2:
        int j;
        int k;
        j = getWifiSleeepPolicy(context);
        if(j == 2)
            break MISSING_BLOCK_LABEL_108;
        k = getNetType(context);
        if(k == 0)
            break MISSING_BLOCK_LABEL_113;
        i = 0;
        continue; /* Loop/switch isn't completed */
        if(j == 1 || j == 0)
        {
            i = 3;
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_132;
        Exception exception;
        exception;
        exception.printStackTrace();
        i = 0;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public static int getISPCode(Context context)
    {
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        int i;
        if(telephonymanager == null)
        {
            i = 0;
        } else
        {
            String s = telephonymanager.getSimOperator();
            if(s == null || s.length() < 5)
            {
                i = 0;
            } else
            {
                String s1 = s.substring(0, 5);
                Object aobj[] = new Object[1];
                aobj[0] = s1;
                Log.d("MicroMsg.NetStatusUtil", "getISPCode MCC_MNC=%s", aobj);
                i = Integer.valueOf(s1).intValue();
            }
        }
        return i;
    }

    public static String getISPName(Context context)
    {
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        String s;
        if(telephonymanager == null)
        {
            s = "";
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = telephonymanager.getSimOperatorName();
            Log.d("MicroMsg.NetStatusUtil", "getISPName ISPName=%s", aobj);
            if(telephonymanager.getSimOperatorName().length() <= 100)
                s = telephonymanager.getSimOperatorName();
            else
                s = telephonymanager.getSimOperatorName().substring(0, 100);
        }
        return s;
    }

    public static int getNetType(Context context)
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        if(connectivitymanager != null) goto _L2; else goto _L1
_L1:
        byte byte0 = -1;
_L4:
        return byte0;
_L2:
        NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
        if(networkinfo == null)
        {
            byte0 = -1;
            continue; /* Loop/switch isn't completed */
        }
        if(networkinfo.getType() == 1)
        {
            byte0 = 0;
            continue; /* Loop/switch isn't completed */
        }
        Object aobj[] = new Object[2];
        aobj[0] = networkinfo.getExtraInfo();
        aobj[1] = Integer.valueOf(networkinfo.getType());
        Log.d("MicroMsg.NetStatusUtil", "activeNetInfo extra=%s, type=%d", aobj);
        if(networkinfo.getExtraInfo() != null)
        {
            if(networkinfo.getExtraInfo().equalsIgnoreCase("uninet"))
            {
                byte0 = 1;
                continue; /* Loop/switch isn't completed */
            }
            if(networkinfo.getExtraInfo().equalsIgnoreCase("uniwap"))
            {
                byte0 = 2;
                continue; /* Loop/switch isn't completed */
            }
            if(networkinfo.getExtraInfo().equalsIgnoreCase("3gwap"))
            {
                byte0 = 3;
                continue; /* Loop/switch isn't completed */
            }
            if(networkinfo.getExtraInfo().equalsIgnoreCase("3gnet"))
            {
                byte0 = 4;
                continue; /* Loop/switch isn't completed */
            }
            if(networkinfo.getExtraInfo().equalsIgnoreCase("cmwap"))
            {
                byte0 = 5;
                continue; /* Loop/switch isn't completed */
            }
            if(networkinfo.getExtraInfo().equalsIgnoreCase("cmnet"))
            {
                byte0 = 6;
                continue; /* Loop/switch isn't completed */
            }
            if(networkinfo.getExtraInfo().equalsIgnoreCase("ctwap"))
            {
                byte0 = 7;
                continue; /* Loop/switch isn't completed */
            }
            if(networkinfo.getExtraInfo().equalsIgnoreCase("ctnet"))
            {
                byte0 = 8;
                continue; /* Loop/switch isn't completed */
            }
            if(networkinfo.getExtraInfo().equalsIgnoreCase("LTE"))
            {
                byte0 = 10;
                continue; /* Loop/switch isn't completed */
            }
        }
        byte0 = 9;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static String getNetTypeString(Context context)
    {
        ConnectivityManager connectivitymanager = (ConnectivityManager)context.getSystemService("connectivity");
        String s;
        if(connectivitymanager == null)
        {
            s = "NON_NETWORK";
        } else
        {
            NetworkInfo networkinfo = connectivitymanager.getActiveNetworkInfo();
            if(networkinfo == null)
                s = "NON_NETWORK";
            else
            if(networkinfo.getType() == 1)
            {
                s = "WIFI";
            } else
            {
                Object aobj[] = new Object[2];
                aobj[0] = networkinfo.getExtraInfo();
                aobj[1] = Integer.valueOf(networkinfo.getType());
                Log.d("MicroMsg.NetStatusUtil", "activeNetInfo extra=%s, type=%d", aobj);
                if(networkinfo.getExtraInfo() != null)
                    s = networkinfo.getExtraInfo();
                else
                    s = "MOBILE";
            }
        }
        return s;
    }

    public static int getWifiSleeepPolicy(Context context)
    {
        return android.provider.Settings.System.getInt(context.getContentResolver(), "wifi_sleep_policy", 2);
    }

    public static int guessNetSpeed(Context context)
    {
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if(networkinfo.getType() != 1) goto _L2; else goto _L1
_L1:
        int i = 0x19000;
          goto _L3
_L2:
        int j = networkinfo.getSubtype();
        j;
        JVM INSTR tableswitch 1 15: default 112
    //                   1 119
    //                   2 126
    //                   3 133
    //                   4 133
    //                   5 133
    //                   6 133
    //                   7 133
    //                   8 133
    //                   9 133
    //                   10 133
    //                   11 133
    //                   12 133
    //                   13 133
    //                   14 133
    //                   15 133;
           goto _L4 _L5 _L6 _L7 _L7 _L7 _L7 _L7 _L7 _L7 _L7 _L7 _L7 _L7 _L7 _L7
_L4:
        i = 0x19000;
        break; /* Loop/switch isn't completed */
_L5:
        i = 4096;
        break; /* Loop/switch isn't completed */
_L6:
        i = 8192;
        break; /* Loop/switch isn't completed */
_L7:
        i = 0x19000;
        break; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        exception.printStackTrace();
        if(true) goto _L4; else goto _L3
_L3:
        return i;
    }

    public static boolean is2G(int i)
    {
        boolean flag = true;
        if(i != flag && i != 2 && i != 5 && i != 6 && i != 7 && i != 8)
            flag = false;
        return flag;
    }

    public static boolean is2G(Context context)
    {
        boolean flag;
        int i;
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if(networkinfo.getType() == 1)
        {
            flag = false;
            break MISSING_BLOCK_LABEL_58;
        }
        if(networkinfo.getSubtype() == 2)
            break MISSING_BLOCK_LABEL_46;
        i = networkinfo.getSubtype();
        if(i != 1)
            break MISSING_BLOCK_LABEL_56;
        flag = true;
        break MISSING_BLOCK_LABEL_58;
        Exception exception;
        exception;
        exception.printStackTrace();
        flag = false;
        return flag;
    }

    public static boolean is3G(int i)
    {
        boolean flag;
        if(i == 3 || i == 4)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean is3G(Context context)
    {
        boolean flag;
        int i;
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if(networkinfo.getType() == 1)
        {
            flag = false;
            break MISSING_BLOCK_LABEL_59;
        }
        if(networkinfo.getSubtype() < 5)
            break MISSING_BLOCK_LABEL_57;
        i = networkinfo.getSubtype();
        if(i < 13)
        {
            flag = true;
            break MISSING_BLOCK_LABEL_59;
        }
        break MISSING_BLOCK_LABEL_57;
        Exception exception;
        exception;
        exception.printStackTrace();
        flag = false;
        return flag;
    }

    public static boolean is4G(int i)
    {
        boolean flag;
        if(i == 10)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean is4G(Context context)
    {
        boolean flag;
        int i;
        NetworkInfo networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if(networkinfo.getType() == 1)
        {
            flag = false;
            break MISSING_BLOCK_LABEL_51;
        }
        i = networkinfo.getSubtype();
        if(i >= 13)
        {
            flag = true;
            break MISSING_BLOCK_LABEL_51;
        }
        break MISSING_BLOCK_LABEL_49;
        Exception exception;
        exception;
        exception.printStackTrace();
        flag = false;
        return flag;
    }

    public static boolean isConnected(Context context)
    {
        NetworkInfo networkinfo;
        boolean flag;
        networkinfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        flag = false;
        boolean flag1 = networkinfo.isConnected();
        flag = flag1;
_L2:
        return flag;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static boolean isImmediatelyDestroyActivities(Context context)
    {
        boolean flag = false;
        if(android.provider.Settings.System.getInt(context.getContentResolver(), "always_finish_activities", 0) != 0)
            flag = true;
        return flag;
    }

    public static boolean isLimited(int i)
    {
        boolean flag = true;
        if(i != 2 && i != flag && i != 3)
            flag = false;
        return flag;
    }

    public static boolean isMobile(int i)
    {
        boolean flag;
        if(is3G(i) || is2G(i) || is4G(i))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean isMobile(Context context)
    {
        int i = getNetType(context);
        boolean flag;
        if(is3G(i) || is2G(i) || is4G(i))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean isRestrictBacground(Context context)
    {
        int i = context.getApplicationInfo().uid;
        int j;
        Class class1 = Class.forName("android.net.NetworkPolicyManager");
        Class aclass[] = new Class[1];
        aclass[0] = android/content/Context;
        Method method = class1.getMethod("getSystemService", aclass);
        Object aobj[] = new Object[1];
        aobj[0] = context;
        Object obj = method.invoke(class1, aobj);
        Field field = class1.getDeclaredField("mService");
        field.setAccessible(true);
        Object obj1 = field.get(obj);
        Class class2 = obj1.getClass();
        Class aclass1[] = new Class[1];
        aclass1[0] = Integer.TYPE;
        Method method1 = class2.getMethod("getUidPolicy", aclass1);
        Object aobj1[] = new Object[1];
        aobj1[0] = Integer.valueOf(i);
        j = ((Integer)method1.invoke(obj1, aobj1)).intValue();
        Log.e("MicroMsg.NetStatusUtil", (new StringBuilder("policy is ")).append(j).toString());
        if(j != 1) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        if(j == 0)
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_198;
        Exception exception;
        exception;
        exception.printStackTrace();
        flag = checkFromXml(i);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static boolean isWap(int i)
    {
        boolean flag;
        if(i == 2 || i == 5 || i == 7 || i == 3)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean isWap(Context context)
    {
        return isWap(getNetType(context));
    }

    public static boolean isWifi(int i)
    {
        boolean flag;
        if(i == 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean isWifi(Context context)
    {
        return isWifi(getNetType(context));
    }

    public static boolean runRootCommand()
    {
        Process process = null;
        Process process1 = Runtime.getRuntime().exec("su");
        DataOutputStream dataoutputstream = new DataOutputStream(process1.getOutputStream());
        dataoutputstream.writeBytes("exit\n");
        dataoutputstream.flush();
        process1.waitFor();
        boolean flag;
        try
        {
            dataoutputstream.close();
            if(process1 != null)
                process1.destroy();
        }
        catch(Exception exception4)
        {
            exception4.printStackTrace();
        }
        flag = true;
_L1:
        return flag;
        Exception exception2;
        exception2;
        dataoutputstream = null;
_L7:
        Log.d("MicroMsg.NetStatusUtil", (new StringBuilder("the device is not rooted\u951B\uFFFDerror message\u951B\uFFFD")).append(exception2.getMessage()).toString());
        if(dataoutputstream == null)
            break MISSING_BLOCK_LABEL_111;
        dataoutputstream.close();
        if(process != null)
            process.destroy();
_L2:
        flag = false;
          goto _L1
        Exception exception3;
        exception3;
        exception3.printStackTrace();
          goto _L2
        Exception exception;
        exception;
        dataoutputstream = null;
_L6:
        if(dataoutputstream == null)
            break MISSING_BLOCK_LABEL_146;
        dataoutputstream.close();
        if(process != null)
            process.destroy();
_L4:
        throw exception;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        if(true) goto _L4; else goto _L3
_L3:
        exception;
        dataoutputstream = null;
        process = process1;
        continue; /* Loop/switch isn't completed */
        exception;
        process = process1;
        continue; /* Loop/switch isn't completed */
        exception;
        if(true) goto _L6; else goto _L5
_L5:
        exception2;
        dataoutputstream = null;
        process = process1;
          goto _L7
        exception2;
        process = process1;
          goto _L7
    }

    public static void startSettingItent(Context context, int i)
    {
        i;
        JVM INSTR tableswitch 0 3: default 32
    //                   0 32
    //                   1 142
    //                   2 33
    //                   3 202;
           goto _L1 _L1 _L2 _L3 _L4
_L1:
        return;
_L3:
        try
        {
            Intent intent2 = new Intent("/");
            intent2.setComponent(new ComponentName("com.android.providers.subscribedfeeds", "com.android.settings.ManageAccountsSettings"));
            intent2.setAction("android.intent.action.VIEW");
            context.startActivity(intent2);
        }
        catch(Exception exception2)
        {
            try
            {
                Intent intent3 = new Intent("/");
                intent3.setComponent(new ComponentName("com.htc.settings.accountsync", "com.htc.settings.accountsync.ManageAccountsSettings"));
                intent3.setAction("android.intent.action.VIEW");
                context.startActivity(intent3);
            }
            catch(Exception exception3)
            {
                a(context, "ManageAccountsSettings");
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        try
        {
            Intent intent1 = new Intent("/");
            intent1.setComponent(new ComponentName("com.android.settings", "com.android.settings.DevelopmentSettings"));
            intent1.setAction("android.intent.action.VIEW");
            context.startActivity(intent1);
        }
        catch(Exception exception1)
        {
            a(context, "DevelopmentSettings");
        }
        continue; /* Loop/switch isn't completed */
_L4:
        try
        {
            Intent intent = new Intent();
            intent.setAction("android.settings.WIFI_IP_SETTINGS");
            context.startActivity(intent);
        }
        catch(Exception exception)
        {
            a(context, "AdvancedSettings");
        }
        if(true) goto _L1; else goto _L5
_L5:
    }

    public static final int CMNET = 6;
    public static final int CMWAP = 5;
    public static final int CTNET = 8;
    public static final int CTWAP = 7;
    public static final int LTE = 10;
    public static final int MOBILE = 9;
    public static final int NET_3G = 4;
    public static final int NON_NETWORK = -1;
    public static final int NO_SIM_OPERATOR = 0;
    public static final int POLICY_NONE = 0;
    public static final int POLICY_REJECT_METERED_BACKGROUND = 1;
    public static final int TBACKGROUND_DATA_LIMITED = 2;
    public static final int TBACKGROUND_NOT_LIMITED = 0;
    public static final int TBACKGROUND_PROCESS_LIMITED = 1;
    public static final int TBACKGROUND_WIFI_LIMITED = 3;
    public static final int UNINET = 1;
    public static final int UNIWAP = 2;
    public static final int WAP_3G = 3;
    public static final int WIFI;
}
