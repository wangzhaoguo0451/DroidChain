// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.array;

import java.lang.reflect.Array;
import net.sf.ezmorph.MorphException;
import net.sf.ezmorph.primitive.CharMorpher;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.array:
//            AbstractArrayMorpher

public final class CharacterObjectArrayMorpher extends AbstractArrayMorpher
{

    public CharacterObjectArrayMorpher()
    {
        super(false);
    }

    public CharacterObjectArrayMorpher(Character character)
    {
        super(true);
        defaultValue = character;
    }

    public boolean equals(Object obj)
    {
        boolean flag = false;
        if(this != obj) goto _L2; else goto _L1
_L1:
        flag = true;
_L4:
        return flag;
_L2:
        if(obj != null && (obj instanceof CharacterObjectArrayMorpher))
        {
            CharacterObjectArrayMorpher characterobjectarraymorpher = (CharacterObjectArrayMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && characterobjectarraymorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), characterobjectarraymorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !characterobjectarraymorpher.isUseDefault())
                flag = equalsbuilder.isEquals();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public Character getDefaultValue()
    {
        return defaultValue;
    }

    public int hashCode()
    {
        HashCodeBuilder hashcodebuilder = new HashCodeBuilder();
        if(isUseDefault())
            hashcodebuilder.append(getDefaultValue());
        return hashcodebuilder.toHashCode();
    }

    public Object morph(Object obj)
    {
        if(obj != null) goto _L2; else goto _L1
_L1:
        Character acharacter[] = null;
_L4:
        return acharacter;
_L2:
        if(!CHARACTER_OBJECT_ARRAY_CLASS.isAssignableFrom(obj.getClass()))
            break; /* Loop/switch isn't completed */
        acharacter = (Character[])obj;
        if(true) goto _L4; else goto _L3
_L3:
        int i;
        if(!obj.getClass().isArray())
            break; /* Loop/switch isn't completed */
        i = Array.getLength(obj);
        int j = getDimensions(obj.getClass());
        int ai[] = createDimensions(j, i);
        Class class1 = class$1;
        if(class1 == null)
        {
            int i1;
            Class class2;
            try
            {
                class2 = Class.forName("java.lang.Character");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class1 = class2;
            class$1 = class1;
        }
        acharacter = ((Character []) (Array.newInstance(class1, ai)));
        if(j != 1) goto _L6; else goto _L5
_L5:
        if(!isUseDefault()) goto _L8; else goto _L7
_L7:
        CharMorpher charmorpher;
        if(defaultValue == null)
        {
            i1 = 0;
            while(i1 < i) 
            {
                Array.set(acharacter, i1, null);
                i1++;
            }
            continue; /* Loop/switch isn't completed */
        }
        charmorpher = new CharMorpher(defaultValue.charValue());
_L9:
        int l = 0;
        while(l < i) 
        {
            Array.set(acharacter, l, new Character(charmorpher.morph(Array.get(obj, l))));
            l++;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        charmorpher = new CharMorpher();
        if(true) goto _L9; else goto _L6
_L6:
        int k = 0;
        while(k < i) 
        {
            Array.set(acharacter, k, morph(Array.get(obj, k)));
            k++;
        }
        if(true) goto _L4; else goto _L10
_L10:
        throw new MorphException("argument is not an array: " + obj.getClass());
    }

    public Class morphsTo()
    {
        return CHARACTER_OBJECT_ARRAY_CLASS;
    }

    private static final Class CHARACTER_OBJECT_ARRAY_CLASS;
    static Class class$0;
    static Class class$1;
    private Character defaultValue;

    static 
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("[Ljava.lang.Character;");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class1 = class2;
            class$0 = class1;
        }
        CHARACTER_OBJECT_ARRAY_CLASS = class1;
    }
}
