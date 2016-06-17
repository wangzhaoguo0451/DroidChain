// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            ExclusionStrategy, FieldAttributes

class SyntheticFieldExclusionStrategy
    implements ExclusionStrategy
{

    SyntheticFieldExclusionStrategy(boolean flag)
    {
        skipSyntheticFields = flag;
    }

    public boolean shouldSkipClass(Class class1)
    {
        return false;
    }

    public boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        boolean flag;
        if(skipSyntheticFields && fieldattributes.isSynthetic())
            flag = true;
        else
            flag = false;
        return flag;
    }

    private final boolean skipSyntheticFields;
}
