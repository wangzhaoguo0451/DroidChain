// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Type;
import java.util.Collection;

// Referenced classes of package com.google.gson:
//            RecursiveFieldNamingPolicy, Preconditions

final class ModifyFirstLetterNamingPolicy extends RecursiveFieldNamingPolicy
{
    public static final class LetterModifier extends Enum
    {

        public static LetterModifier valueOf(String s)
        {
            return (LetterModifier)Enum.valueOf(com/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier, s);
        }

        public static LetterModifier[] values()
        {
            return (LetterModifier[])$VALUES.clone();
        }

        private static final LetterModifier $VALUES[];
        public static final LetterModifier LOWER;
        public static final LetterModifier UPPER;

        static 
        {
            UPPER = new LetterModifier("UPPER", 0);
            LOWER = new LetterModifier("LOWER", 1);
            LetterModifier alettermodifier[] = new LetterModifier[2];
            alettermodifier[0] = UPPER;
            alettermodifier[1] = LOWER;
            $VALUES = alettermodifier;
        }

        private LetterModifier(String s, int i)
        {
            super(s, i);
        }
    }


    public ModifyFirstLetterNamingPolicy(LetterModifier lettermodifier)
    {
        Preconditions.checkNotNull(lettermodifier);
        letterModifier = lettermodifier;
    }

    private String modifyString(char c, String s, int i)
    {
        String s1;
        if(i < s.length())
            s1 = (new StringBuilder()).append(c).append(s.substring(i)).toString();
        else
            s1 = String.valueOf(c);
        return s1;
    }

    protected String translateName(String s, Type type, Collection collection)
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        char c = s.charAt(0);
        do
        {
            if(i >= -1 + s.length() || Character.isLetter(c))
            {
                if(i == s.length())
                {
                    s = stringbuilder.toString();
                } else
                {
                    boolean flag;
                    if(letterModifier == LetterModifier.UPPER)
                        flag = true;
                    else
                        flag = false;
                    if(flag && !Character.isUpperCase(c))
                        s = stringbuilder.append(modifyString(Character.toUpperCase(c), s, i + 1)).toString();
                    else
                    if(!flag && Character.isUpperCase(c))
                        s = stringbuilder.append(modifyString(Character.toLowerCase(c), s, i + 1)).toString();
                }
                return s;
            }
            stringbuilder.append(c);
            i++;
            c = s.charAt(i);
        } while(true);
    }

    private final LetterModifier letterModifier;
}
