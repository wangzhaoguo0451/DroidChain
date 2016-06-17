// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.event;


public interface IEvent
{

    public abstract String getId();

    public abstract String getScope();

    public abstract boolean isOrder();

    public abstract void oncomplete();

    public static final int EVENT_SCOPE_APPLICATION = 2;
    public static final int EVENT_SCOPE_SESSION = 1;
    public static final int EVENT_SCOPE_TEMPL;
}
