// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Type;
import java.util.Collection;

// Referenced classes of package com.google.gson:
//            RecursiveFieldNamingPolicy

abstract class CompositionFieldNamingPolicy extends RecursiveFieldNamingPolicy
{

    public transient CompositionFieldNamingPolicy(RecursiveFieldNamingPolicy arecursivefieldnamingpolicy[])
    {
        if(arecursivefieldnamingpolicy == null)
        {
            throw new NullPointerException("naming policies can not be null.");
        } else
        {
            fieldPolicies = arecursivefieldnamingpolicy;
            return;
        }
    }

    protected String translateName(String s, Type type, Collection collection)
    {
        RecursiveFieldNamingPolicy arecursivefieldnamingpolicy[] = fieldPolicies;
        int i = arecursivefieldnamingpolicy.length;
        for(int j = 0; j < i; j++)
            s = arecursivefieldnamingpolicy[j].translateName(s, type, collection);

        return s;
    }

    private final RecursiveFieldNamingPolicy fieldPolicies[];
}
