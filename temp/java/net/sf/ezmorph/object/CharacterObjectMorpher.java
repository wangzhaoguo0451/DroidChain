// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.object;

import net.sf.ezmorph.MorphException;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;

// Referenced classes of package net.sf.ezmorph.object:
//            AbstractObjectMorpher

public final class CharacterObjectMorpher extends AbstractObjectMorpher
{

    public CharacterObjectMorpher()
    {
    }

    public CharacterObjectMorpher(Character character)
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
        if(obj != null && (obj instanceof CharacterObjectMorpher))
        {
            CharacterObjectMorpher characterobjectmorpher = (CharacterObjectMorpher)obj;
            EqualsBuilder equalsbuilder = new EqualsBuilder();
            if(isUseDefault() && characterobjectmorpher.isUseDefault())
            {
                equalsbuilder.append(getDefaultValue(), characterobjectmorpher.getDefaultValue());
                flag = equalsbuilder.isEquals();
            } else
            if(!isUseDefault() && !characterobjectmorpher.isUseDefault())
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
        if(!isUseDefault()) goto _L4; else goto _L3
_L3:
        Character character = defaultValue;
_L6:
        return character;
_L4:
        throw new MorphException("value is null");
_L2:
        if(obj instanceof Character)
        {
            character = (Character)obj;
        } else
        {
            String s = String.valueOf(obj);
            if(s.length() > 0)
                character = new Character(s.charAt(0));
            else
            if(isUseDefault())
                character = defaultValue;
            else
                throw new MorphException("Can't morph value: " + obj);
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public Class morphsTo()
    {
        Class class1 = class$0;
        if(class1 == null)
        {
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
            class$0 = class1;
        }
        return class1;
    }

    static Class class$0;
    private Character defaultValue;
}
