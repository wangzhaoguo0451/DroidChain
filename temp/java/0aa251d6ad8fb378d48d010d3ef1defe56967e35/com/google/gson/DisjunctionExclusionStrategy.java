// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.google.gson:
//            ExclusionStrategy, Preconditions, FieldAttributes

final class DisjunctionExclusionStrategy
    implements ExclusionStrategy
{

    public DisjunctionExclusionStrategy(Collection collection)
    {
        Preconditions.checkNotNull(collection);
        strategies = collection;
    }

    public boolean shouldSkipClass(Class class1)
    {
        Iterator iterator = strategies.iterator();
_L4:
        if(!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if(!((ExclusionStrategy)iterator.next()).shouldSkipClass(class1)) goto _L4; else goto _L3
_L3:
        boolean flag = true;
_L6:
        return flag;
_L2:
        flag = false;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        Iterator iterator = strategies.iterator();
_L4:
        if(!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if(!((ExclusionStrategy)iterator.next()).shouldSkipField(fieldattributes)) goto _L4; else goto _L3
_L3:
        boolean flag = true;
_L6:
        return flag;
_L2:
        flag = false;
        if(true) goto _L6; else goto _L5
_L5:
    }

    private final Collection strategies;
}
