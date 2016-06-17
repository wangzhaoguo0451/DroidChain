// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            ExclusionStrategy, FieldAttributes

final class NullExclusionStrategy
    implements ExclusionStrategy
{

    NullExclusionStrategy()
    {
    }

    public boolean shouldSkipClass(Class class1)
    {
        return false;
    }

    public boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        return false;
    }
}
