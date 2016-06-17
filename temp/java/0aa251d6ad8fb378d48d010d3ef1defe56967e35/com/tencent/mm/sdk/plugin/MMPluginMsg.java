// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.plugin;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.sdk.openapi.*;
import com.tencent.mm.sdk.platformtools.Util;

public class MMPluginMsg
{
    public static class ReceiverHelper
    {

        public String getMsgContent()
        {
            String s;
            if(isRecvNew())
                s = intent.getStringExtra("recv_msg");
            else
                s = null;
            return s;
        }

        public Integer getSendErrCode()
        {
            Integer integer;
            if(isSendRet())
                integer = Integer.valueOf(intent.getIntExtra("send_err_code", 0));
            else
                integer = null;
            return integer;
        }

        public Integer getSendErrType()
        {
            Integer integer;
            if(isSendRet())
                integer = Integer.valueOf(intent.getIntExtra("send_err_type", 0));
            else
                integer = null;
            return integer;
        }

        public Long getSendMsgId()
        {
            Long long1;
            if(isSendRet())
                long1 = Long.valueOf(intent.getLongExtra("send_id", 0L));
            else
                long1 = null;
            return long1;
        }

        public boolean isRecvNew()
        {
            boolean flag;
            if(type == 2)
                flag = true;
            else
                flag = false;
            return flag;
        }

        public boolean isSendRet()
        {
            boolean flag = true;
            if(type != flag)
                flag = false;
            return flag;
        }

        Intent intent;
        int type;

        public ReceiverHelper(Intent intent1)
        {
            type = intent1.getIntExtra("type", 0);
            intent = intent1;
        }
    }


    public MMPluginMsg()
    {
    }

    public static MMPluginMsg WXAppExtentObjectToPluginMsg(WXAppExtendObject wxappextendobject)
    {
        MMPluginMsg mmpluginmsg = null;
        if(wxappextendobject != null) goto _L2; else goto _L1
_L1:
        return mmpluginmsg;
_L2:
        MMPluginMsg mmpluginmsg1 = new MMPluginMsg();
        mmpluginmsg1.msgClientId = Util.getLong(wxappextendobject.extInfo, -1L);
        if(mmpluginmsg1.msgClientId != -1L && !Util.isNullOrNil(wxappextendobject.fileData))
        {
            mmpluginmsg1.content = new String(wxappextendobject.fileData);
            if(!Util.isNullOrNil(mmpluginmsg1.content))
                mmpluginmsg = mmpluginmsg1;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static WXAppExtendObject pluginMsgToWXAppExtendObject(MMPluginMsg mmpluginmsg)
    {
        WXAppExtendObject wxappextendobject;
        if(mmpluginmsg == null)
        {
            wxappextendobject = null;
        } else
        {
            wxappextendobject = new WXAppExtendObject();
            wxappextendobject.extInfo = (new StringBuilder()).append(mmpluginmsg.msgClientId).toString();
            wxappextendobject.fileData = mmpluginmsg.content.getBytes();
        }
        return wxappextendobject;
    }

    public static long sendMessage(Context context, String s)
    {
        long l;
        if(Util.isNullOrNil(s))
        {
            l = -1L;
        } else
        {
            MMPluginMsg mmpluginmsg = new MMPluginMsg();
            mmpluginmsg.msgClientId = Util.nowMilliSecond();
            mmpluginmsg.content = s;
            WXAppExtendObject wxappextendobject = pluginMsgToWXAppExtendObject(mmpluginmsg);
            WXMediaMessage wxmediamessage = new WXMediaMessage();
            wxmediamessage.mediaObject = wxappextendobject;
            wxmediamessage.description = "";
            IWXAPI iwxapi = WXAPIFactory.createWXAPI(context, null);
            if(iwxapi == null)
            {
                l = -2L;
            } else
            {
                com.tencent.mm.sdk.openapi.SendMessageToWX.Req req = new com.tencent.mm.sdk.openapi.SendMessageToWX.Req();
                req.transaction = (new StringBuilder("appdata")).append(mmpluginmsg.msgClientId).toString();
                req.message = wxmediamessage;
                if(!iwxapi.sendReq(req))
                    l = -3L;
                else
                    l = mmpluginmsg.msgClientId;
            }
        }
        return l;
    }

    public static final String ACTION_AUTO_MSG = "ACTION_AUTO_MSG";
    public static final String RECV_MSG = "recv_msg";
    public static final String RECV_PKG = "recv_pkg";
    public static final String RECV_THUMB = "recv_thumb";
    public static final String SEND_ERR_CODE = "send_err_code";
    public static final String SEND_ERR_TYPE = "send_err_type";
    public static final String SEND_ID = "send_id";
    public static final String TYPE = "type";
    public static final int TYPE_RECV_MSG = 2;
    public static final int TYPE_SEND_RET = 1;
    public String content;
    public long msgClientId;
}
