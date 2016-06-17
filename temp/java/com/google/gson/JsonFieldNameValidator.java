// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.google.gson:
//            Preconditions

class JsonFieldNameValidator
{

    JsonFieldNameValidator()
    {
    }

    public String validate(String s)
    {
        Preconditions.checkNotNull(s);
        boolean flag;
        if(!"".equals(s.trim()))
            flag = true;
        else
            flag = false;
        Preconditions.checkArgument(flag);
        if(!JSON_FIELD_NAME_PATTERN.matcher(s).matches())
            throw new IllegalArgumentException((new StringBuilder()).append(s).append(" is not a valid JSON field name.").toString());
        else
            return s;
    }

    private static final String COMMON_PATTERN = "[a-zA-Z][a-zA-Z0-9\\ \\$_\\-]*$";
    private static final Pattern JSON_FIELD_NAME_PATTERN = Pattern.compile("(^[a-zA-Z][a-zA-Z0-9\\ \\$_\\-]*$)|(^[\\$_][a-zA-Z][a-zA-Z0-9\\ \\$_\\-]*$)");

}
