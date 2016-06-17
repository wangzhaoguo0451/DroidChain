// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Type;
import java.util.Collection;

// Referenced classes of package com.google.gson:
//            RecursiveFieldNamingPolicy

final class JavaFieldNamingPolicy extends RecursiveFieldNamingPolicy
{

    JavaFieldNamingPolicy()
    {
    }

    protected String translateName(String s, Type type, Collection collection)
    {
        return s;
    }
}
