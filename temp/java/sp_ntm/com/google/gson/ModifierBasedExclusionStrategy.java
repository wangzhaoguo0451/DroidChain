// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.util.*;

// Referenced classes of package com.google.gson:
//            ExclusionStrategy, FieldAttributes

final class ModifierBasedExclusionStrategy
    implements ExclusionStrategy
{

    public transient ModifierBasedExclusionStrategy(int ai[])
    {
        if(ai != null)
        {
            int i = ai.length;
            for(int j = 0; j < i; j++)
            {
                int k = ai[j];
                modifiers.add(Integer.valueOf(k));
            }

        }
    }

    public boolean shouldSkipClass(Class class1)
    {
        return false;
    }

    public boolean shouldSkipField(FieldAttributes fieldattributes)
    {
        Iterator iterator = modifiers.iterator();
_L4:
        if(!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if(!fieldattributes.hasModifier(((Integer)iterator.next()).intValue())) goto _L4; else goto _L3
_L3:
        boolean flag = true;
_L6:
        return flag;
_L2:
        flag = false;
        if(true) goto _L6; else goto _L5
_L5:
    }

    private final Collection modifiers = new HashSet();
}
