// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.channel;

import android.content.*;
import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.Log;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.tencent.mm.sdk.channel:
//            MMessageUtil

public class MMessage
{
    public static final class Receiver extends BroadcastReceiver
    {

        public static void registerCallBack(String s, CallBack callback)
        {
            callbacks.put(s, callback);
        }

        public static void unregisterCallBack(String s)
        {
            callbacks.remove(s);
        }

        public final void onReceive(Context context, Intent intent)
        {
            Log.d("MicroMsg.SDK.MMessage", (new StringBuilder("receive intent=")).append(intent).toString());
            if(o == null) goto _L2; else goto _L1
_L1:
            o.handleMessage(intent);
            Log.d("MicroMsg.SDK.MMessage", "mm message self-handled");
_L4:
            return;
_L2:
            CallBack callback = (CallBack)callbacks.get(intent.getAction());
            if(callback != null)
            {
                callback.handleMessage(intent);
                Log.d("MicroMsg.SDK.MMessage", "mm message handled");
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        public static final Map callbacks = new HashMap();
        private final CallBack o;


        public Receiver()
        {
            this(null);
        }

        public Receiver(CallBack callback)
        {
            o = callback;
        }
    }

    public static interface CallBack
    {

        public abstract void handleMessage(Intent intent);
    }


    public MMessage()
    {
    }

    public static void send(Context context, String s, String s1)
    {
        send(context, s, "com.tencent.mm.sdk.channel.Intent.ACTION_MESSAGE", s1);
    }

    public static void send(Context context, String s, String s1, String s2)
    {
        send(context, s, s1, s2, null);
    }

    public static boolean send(Context context, String s, String s1, String s2, Bundle bundle)
    {
        String s3 = (new StringBuilder()).append(s).append(".permission.MM_MESSAGE").toString();
        Intent intent = new Intent(s1);
        if(bundle != null)
            intent.putExtras(bundle);
        String s4 = context.getPackageName();
        intent.putExtra("_mmessage_sdkVersion", 0x21040001);
        intent.putExtra("_mmessage_appPackage", s4);
        intent.putExtra("_mmessage_content", s2);
        intent.putExtra("_mmessage_checksum", MMessageUtil.a(s2, s4));
        context.sendBroadcast(intent, s3);
        Log.d("MicroMsg.SDK.MMessage", (new StringBuilder("send mm message, intent=")).append(intent).append(", perm=").append(s3).toString());
        return true;
    }
}
