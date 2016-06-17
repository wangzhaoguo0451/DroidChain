// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.plugin;

import android.content.ContentValues;
import android.net.Uri;
import android.provider.BaseColumns;
import com.tencent.mm.sdk.platformtools.Log;

public class MMPluginProviderConstants
{
    public static class PluginIntent
    {

        public static final String ACCESS_TOKEN = "com.tencent.mm.sdk.plugin.Intent.ACCESS_TOKEN";
        public static final String ACTION_QRCODE_SCANNED = "com.tencent.mm.sdk.plugin.Intent.ACTION_QRCODE_SCANNED";
        public static final String ACTION_REQUEST_TOKEN = "com.tencent.mm.sdk.plugin.Intent.ACTION_REQUEST_TOKEN";
        public static final String ACTION_RESPONSE = "com.tencent.mm.sdk.plugin.Intent.ACTION_RESPONSE";
        public static final String APP_PACKAGE_PATTERN = "com.tencent.mm";
        public static final String AUTH_KEY = "com.tencent.mm.sdk.plugin.Intent.AUTHKEY";
        public static final String NAME = "com.tencent.mm.sdk.plugin.Intent.NAME";
        public static final String PACKAGE = "com.tencent.mm.sdk.plugin.Intent.PACKAGE";
        public static final String PERMISSIONS = "com.tencent.mm.sdk.plugin.Intent.PERMISSIONS";
        public static final String PLUGIN_PACKAGE_PATTERN = "com.tencent.mm.plugin";
        public static final String REQUEST_TOKEN = "com.tencent.mm.sdk.plugin.Intent.REQUEST_TOKEN";

        public PluginIntent()
        {
        }
    }

    public static final class OAuth
        implements BaseColumns
    {

        public static final String ACCESS_TOKEN = "accessToken";
        public static final String ACTION_REQUEST_TOKEN = "request_token";
        public static final String API_KEY = "apiKey";
        public static final Uri CONTENT_URI = Uri.parse("content://com.tencent.mm.sdk.plugin.provider/oauth");
        public static final String REQUEST_TOKEN = "requestToken";
        public static final String SECRET = "secret";


        private OAuth()
        {
        }
    }

    public static final class PluginDB
        implements BaseColumns
    {

        public static final Uri CONTENT_URI = Uri.parse("content://com.tencent.mm.sdk.plugin.provider/plugindb");
        public static final String KEY = "key";
        public static final String TYPE = "type";
        public static final String VALUE = "value";


        private PluginDB()
        {
        }
    }

    public static final class SharedPref
        implements BaseColumns
    {

        public static final Uri CONTENT_URI = Uri.parse("content://com.tencent.mm.sdk.plugin.provider/sharedpref");
        public static final String KEY = "key";
        public static final String TYPE = "type";
        public static final String VALUE = "value";


        private SharedPref()
        {
        }
    }

    public static final class Resolver
    {

        public static int getType(Object obj)
        {
            int i = 0;
            if(obj == null)
                Log.e("MicroMsg.SDK.PluginProvider.Resolver", "unresolve failed, null value");
            else
            if(obj instanceof Integer)
                i = 1;
            else
            if(obj instanceof Long)
                i = 2;
            else
            if(obj instanceof String)
                i = 3;
            else
            if(obj instanceof Boolean)
                i = 4;
            else
            if(obj instanceof Float)
                i = 5;
            else
            if(obj instanceof Double)
                i = 6;
            else
                Log.e("MicroMsg.SDK.PluginProvider.Resolver", (new StringBuilder("unresolve failed, unknown type=")).append(obj.getClass().toString()).toString());
            return i;
        }

        public static Object resolveObj(int i, String s)
        {
            i;
            JVM INSTR tableswitch 1 6: default 40
        //                       1 50
        //                       2 58
        //                       3 99
        //                       4 66
        //                       5 74
        //                       6 82;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L4:
            break; /* Loop/switch isn't completed */
_L1:
            Log.e("MicroMsg.SDK.PluginProvider.Resolver", "unknown type");
              goto _L8
_L2:
            s = Integer.valueOf(s);
            break; /* Loop/switch isn't completed */
_L3:
            s = Long.valueOf(s);
            break; /* Loop/switch isn't completed */
_L5:
            s = Boolean.valueOf(s);
            break; /* Loop/switch isn't completed */
_L6:
            s = Float.valueOf(s);
            break; /* Loop/switch isn't completed */
_L7:
            Double double1 = Double.valueOf(s);
            s = double1;
            break; /* Loop/switch isn't completed */
            Exception exception;
            exception;
            exception.printStackTrace();
_L8:
            s = null;
            return s;
        }

        public static boolean unresolveObj(ContentValues contentvalues, Object obj)
        {
            int i = getType(obj);
            boolean flag;
            if(i == 0)
            {
                flag = false;
            } else
            {
                contentvalues.put("type", Integer.valueOf(i));
                contentvalues.put("value", obj.toString());
                flag = true;
            }
            return flag;
        }

        private Resolver()
        {
        }
    }


    public MMPluginProviderConstants()
    {
    }

    public static final String AUTHORITY = "com.tencent.mm.sdk.plugin.provider";
    public static final String PLUGIN_PACKAGE_PATTERN = "com.tencent.mm.plugin";
    public static final int TYPE_BOOLEAN = 4;
    public static final int TYPE_DOUBLE = 6;
    public static final int TYPE_FLOAT = 5;
    public static final int TYPE_INT = 1;
    public static final int TYPE_LONG = 2;
    public static final int TYPE_STRING = 3;
    public static final int TYPE_UNKNOWN;
}
