// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.storage;

import java.lang.annotation.Annotation;

public interface MAutoDBFieldAnnotation
    extends Annotation
{

    public abstract String defValue();

    public abstract int primaryKey();
}
