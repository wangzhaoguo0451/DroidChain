// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            ExclusionStrategy, FieldAttributes

class InnerClassExclusionStrategy
    implements ExclusionStrategy
{

    InnerClassExclusionStrategy()
    {
    }

    private boolean isInnerClass(Class class1)
    {
        boolean flag;
        if(class1.isMemberClass() && !isStatic(class1))
            flag = true;
        else
            flag = false;
        return flag;
    }

    private boolean isStatic(Class class1)
    {
        boolean flag;
        if((8 & class1.getModifiers()) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean shouldSkipClass(Class class1)
    {
        return isInnerClass(class1);
    }

    public boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        return isInnerClass(fieldattributes.getDeclaredClass());
    }
}
