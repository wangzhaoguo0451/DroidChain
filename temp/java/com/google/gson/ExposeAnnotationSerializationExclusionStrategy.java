// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import com.google.gson.annotations.Expose;

// Referenced classes of package com.google.gson:
//            ExclusionStrategy, FieldAttributes

final class ExposeAnnotationSerializationExclusionStrategy
    implements ExclusionStrategy
{

    ExposeAnnotationSerializationExclusionStrategy()
    {
    }

    public boolean shouldSkipClass(Class class1)
    {
        return false;
    }

    public boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        boolean flag;
        Expose expose;
        flag = true;
        expose = (Expose)fieldattributes.getAnnotation(com/google/gson/annotations/Expose);
        break MISSING_BLOCK_LABEL_12;
        if(expose != null && expose.serialize())
            flag = false;
        return flag;
    }
}
