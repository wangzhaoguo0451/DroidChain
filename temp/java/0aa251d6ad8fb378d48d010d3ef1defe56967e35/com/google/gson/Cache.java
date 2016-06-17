// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;


interface Cache
{

    public abstract void addElement(Object obj, Object obj1);

    public abstract void clear();

    public abstract Object getElement(Object obj);

    public abstract Object removeElement(Object obj);

    public abstract int size();
}
