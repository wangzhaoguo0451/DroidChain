// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            ModifyFirstLetterNamingPolicy, UpperCamelCaseSeparatorNamingPolicy, LowerCamelCaseSeparatorNamingPolicy, FieldNamingStrategy2

public final class FieldNamingPolicy extends Enum
{

    private FieldNamingPolicy(String s, int i, FieldNamingStrategy2 fieldnamingstrategy2)
    {
        super(s, i);
        namingPolicy = fieldnamingstrategy2;
    }

    public static FieldNamingPolicy valueOf(String s)
    {
        return (FieldNamingPolicy)Enum.valueOf(com/google/gson/FieldNamingPolicy, s);
    }

    public static FieldNamingPolicy[] values()
    {
        return (FieldNamingPolicy[])$VALUES.clone();
    }

    FieldNamingStrategy2 getFieldNamingPolicy()
    {
        return namingPolicy;
    }

    private static final FieldNamingPolicy $VALUES[];
    public static final FieldNamingPolicy LOWER_CASE_WITH_DASHES;
    public static final FieldNamingPolicy LOWER_CASE_WITH_UNDERSCORES;
    public static final FieldNamingPolicy UPPER_CAMEL_CASE;
    public static final FieldNamingPolicy UPPER_CAMEL_CASE_WITH_SPACES;
    private final FieldNamingStrategy2 namingPolicy;

    static 
    {
        UPPER_CAMEL_CASE = new FieldNamingPolicy("UPPER_CAMEL_CASE", 0, new ModifyFirstLetterNamingPolicy(ModifyFirstLetterNamingPolicy.LetterModifier.UPPER));
        UPPER_CAMEL_CASE_WITH_SPACES = new FieldNamingPolicy("UPPER_CAMEL_CASE_WITH_SPACES", 1, new UpperCamelCaseSeparatorNamingPolicy(" "));
        LOWER_CASE_WITH_UNDERSCORES = new FieldNamingPolicy("LOWER_CASE_WITH_UNDERSCORES", 2, new LowerCamelCaseSeparatorNamingPolicy("_"));
        LOWER_CASE_WITH_DASHES = new FieldNamingPolicy("LOWER_CASE_WITH_DASHES", 3, new LowerCamelCaseSeparatorNamingPolicy("-"));
        FieldNamingPolicy afieldnamingpolicy[] = new FieldNamingPolicy[4];
        afieldnamingpolicy[0] = UPPER_CAMEL_CASE;
        afieldnamingpolicy[1] = UPPER_CAMEL_CASE_WITH_SPACES;
        afieldnamingpolicy[2] = LOWER_CASE_WITH_UNDERSCORES;
        afieldnamingpolicy[3] = LOWER_CASE_WITH_DASHES;
        $VALUES = afieldnamingpolicy;
    }
}
