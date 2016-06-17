// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.plugin;


// Referenced classes of package com.tencent.mm.sdk.plugin:
//            Profile

public interface IMMPluginAPI
{

    public abstract boolean appendNetStat(int i, int j, int k);

    public abstract void createMsgController(String s);

    public abstract void createQRCodeController(String s);

    public abstract void createQRCodeController(String s, com.tencent.mm.sdk.channel.MMessage.CallBack callback);

    public abstract void createQRCodeController(String s, com.tencent.mm.sdk.channel.MMessage.CallBack callback, String s1);

    public abstract Profile getCurrentProfile(String s);

    public abstract String getPluginKey(String s);

    public abstract boolean installPlugin(String s);

    public abstract boolean isPluginInstalled(String s);

    public abstract void jumpToBindEmail(String s);

    public abstract void jumpToBindMobile(String s);

    public abstract void jumpToBindQQ(String s);

    public abstract void jumpToChattingUI(String s, String s1);

    public abstract void jumpToSettingView(String s, String s1);

    public abstract boolean registerAutoMsg(String s, String s1);

    public abstract boolean registerPattern(String s, com.tencent.mm.sdk.channel.MMessage.CallBack callback, String s1);

    public abstract boolean registerQRCodePattern(String s, com.tencent.mm.sdk.channel.MMessage.CallBack callback, String s1);

    public abstract void release();

    public abstract boolean sendMsgNotify(String s, String s1, int i, String s2, Class class1);

    public abstract boolean unregisterAutoMsg(String s, String s1);
}
