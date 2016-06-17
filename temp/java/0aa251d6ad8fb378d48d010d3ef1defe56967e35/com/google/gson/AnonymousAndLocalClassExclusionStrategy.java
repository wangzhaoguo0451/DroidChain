// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            ExclusionStrategy, FieldAttributes

final class AnonymousAndLocalClassExclusionStrategy
    implements ExclusionStrategy
{

    AnonymousAndLocalClassExclusionStrategy()
    {
    }

    private boolean isAnonymousOrLocal(Class class1)
    {
        boolean flag;
        if(!java/lang/Enum.isAssignableFrom(class1) && (class1.isAnonymousClass() || class1.isLocalClass()))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean shouldSkipClass(Class class1)
    {
        return isAnonymousOrLocal(class1);
    }

    public boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        return isAnonymousOrLocal(fieldattributes.getDeclaredClass());
    }
}
