// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import com.google.gson.annotations.Since;
import com.google.gson.annotations.Until;

// Referenced classes of package com.google.gson:
//            ExclusionStrategy, Preconditions, FieldAttributes

final class VersionExclusionStrategy
    implements ExclusionStrategy
{

    public VersionExclusionStrategy(double d)
    {
        boolean flag;
        if(d >= 0.0D)
            flag = true;
        else
            flag = false;
        Preconditions.checkArgument(flag);
        version = d;
    }

    private boolean isValidSince(Since since)
    {
        boolean flag;
        if(since != null && since.value() > version)
            flag = false;
        else
            flag = true;
        return flag;
    }

    private boolean isValidUntil(Until until)
    {
        boolean flag;
        if(until != null && until.value() <= version)
            flag = false;
        else
            flag = true;
        return flag;
    }

    private boolean isValidVersion(Since since, Until until)
    {
        boolean flag;
        if(isValidSince(since) && isValidUntil(until))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean shouldSkipClass(Class class1)
    {
        boolean flag;
        if(!isValidVersion((Since)class1.getAnnotation(com/google/gson/annotations/Since), (Until)class1.getAnnotation(com/google/gson/annotations/Until)))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        boolean flag;
        if(!isValidVersion((Since)fieldattributes.getAnnotation(com/google/gson/annotations/Since), (Until)fieldattributes.getAnnotation(com/google/gson/annotations/Until)))
            flag = true;
        else
            flag = false;
        return flag;
    }

    private final double version;
}
