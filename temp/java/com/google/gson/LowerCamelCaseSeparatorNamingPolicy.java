// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            CompositionFieldNamingPolicy, RecursiveFieldNamingPolicy, CamelCaseSeparatorNamingPolicy, LowerCaseNamingPolicy

final class LowerCamelCaseSeparatorNamingPolicy extends CompositionFieldNamingPolicy
{

    public LowerCamelCaseSeparatorNamingPolicy(String s)
    {
        RecursiveFieldNamingPolicy arecursivefieldnamingpolicy[] = new RecursiveFieldNamingPolicy[2];
        arecursivefieldnamingpolicy[0] = new CamelCaseSeparatorNamingPolicy(s);
        arecursivefieldnamingpolicy[1] = new LowerCaseNamingPolicy();
        super(arecursivefieldnamingpolicy);
    }
}
