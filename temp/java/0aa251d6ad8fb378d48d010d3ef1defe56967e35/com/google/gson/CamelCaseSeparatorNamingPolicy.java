// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Type;
import java.util.Collection;

// Referenced classes of package com.google.gson:
//            RecursiveFieldNamingPolicy, Preconditions

final class CamelCaseSeparatorNamingPolicy extends RecursiveFieldNamingPolicy
{

    public CamelCaseSeparatorNamingPolicy(String s)
    {
        Preconditions.checkNotNull(s);
        boolean flag;
        if(!"".equals(s))
            flag = true;
        else
            flag = false;
        Preconditions.checkArgument(flag);
        separatorString = s;
    }

    protected String translateName(String s, Type type, Collection collection)
    {
        StringBuilder stringbuilder = new StringBuilder();
        for(int i = 0; i < s.length(); i++)
        {
            char c = s.charAt(i);
            if(Character.isUpperCase(c) && stringbuilder.length() != 0)
                stringbuilder.append(separatorString);
            stringbuilder.append(c);
        }

        return stringbuilder.toString();
    }

    private final String separatorString;
}
