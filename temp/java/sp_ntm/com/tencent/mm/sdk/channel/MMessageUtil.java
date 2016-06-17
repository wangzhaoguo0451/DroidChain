// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.channel;

import com.tencent.mm.algorithm.MD5;

class MMessageUtil
{

    private MMessageUtil()
    {
    }

    static byte[] a(String s, String s1)
    {
        StringBuffer stringbuffer = new StringBuffer();
        if(s != null)
            stringbuffer.append(s);
        stringbuffer.append(0x21040001);
        stringbuffer.append(s1);
        stringbuffer.append("mMcShCsTr");
        return MD5.getMessageDigest(stringbuffer.toString().substring(1, 9).getBytes()).getBytes();
    }
}
