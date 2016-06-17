// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph;

import java.math.BigDecimal;
import java.math.BigInteger;
import net.sf.ezmorph.array.BooleanArrayMorpher;
import net.sf.ezmorph.array.ByteArrayMorpher;
import net.sf.ezmorph.array.CharArrayMorpher;
import net.sf.ezmorph.array.DoubleArrayMorpher;
import net.sf.ezmorph.array.FloatArrayMorpher;
import net.sf.ezmorph.array.IntArrayMorpher;
import net.sf.ezmorph.array.LongArrayMorpher;
import net.sf.ezmorph.array.ObjectArrayMorpher;
import net.sf.ezmorph.array.ShortArrayMorpher;
import net.sf.ezmorph.object.BooleanObjectMorpher;
import net.sf.ezmorph.object.CharacterObjectMorpher;
import net.sf.ezmorph.object.ClassMorpher;
import net.sf.ezmorph.object.NumberMorpher;
import net.sf.ezmorph.object.StringMorpher;
import net.sf.ezmorph.primitive.BooleanMorpher;
import net.sf.ezmorph.primitive.ByteMorpher;
import net.sf.ezmorph.primitive.CharMorpher;
import net.sf.ezmorph.primitive.DoubleMorpher;
import net.sf.ezmorph.primitive.FloatMorpher;
import net.sf.ezmorph.primitive.IntMorpher;
import net.sf.ezmorph.primitive.LongMorpher;
import net.sf.ezmorph.primitive.ShortMorpher;

// Referenced classes of package net.sf.ezmorph:
//            MorpherRegistry

public class MorphUtils
{

    private MorphUtils()
    {
    }

    public static void registerStandardMorphers(MorpherRegistry morpherregistry)
    {
        morpherregistry.clear();
        registerStandardPrimitiveMorphers(morpherregistry);
        registerStandardPrimitiveArrayMorphers(morpherregistry);
        registerStandardObjectMorphers(morpherregistry);
        registerStandardObjectArrayMorphers(morpherregistry);
    }

    public static void registerStandardObjectArrayMorphers(MorpherRegistry morpherregistry)
    {
        morpherregistry.registerMorpher(new ObjectArrayMorpher(new BooleanObjectMorpher(Boolean.FALSE)));
        morpherregistry.registerMorpher(new ObjectArrayMorpher(new CharacterObjectMorpher(new Character('\0'))));
        morpherregistry.registerMorpher(new ObjectArrayMorpher(StringMorpher.getInstance()));
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            Class class3;
            Class class4;
            Class class5;
            Class class6;
            Class class7;
            Class class8;
            Class class9;
            Class class10;
            Class class11;
            Class class12;
            Class class13;
            Class class14;
            Class class15;
            Class class16;
            try
            {
                class16 = Class.forName("java.lang.Byte");
            }
            catch(ClassNotFoundException classnotfoundexception7)
            {
                throw new NoClassDefFoundError(classnotfoundexception7.getMessage());
            }
            class1 = class16;
            class$0 = class1;
        }
        morpherregistry.registerMorpher(new ObjectArrayMorpher(new NumberMorpher(class1, new Byte((byte)0))));
        class2 = class$1;
        if(class2 == null)
        {
            try
            {
                class15 = Class.forName("java.lang.Short");
            }
            catch(ClassNotFoundException classnotfoundexception6)
            {
                throw new NoClassDefFoundError(classnotfoundexception6.getMessage());
            }
            class2 = class15;
            class$1 = class2;
        }
        morpherregistry.registerMorpher(new ObjectArrayMorpher(new NumberMorpher(class2, new Short((short)0))));
        class3 = class$2;
        if(class3 == null)
        {
            try
            {
                class14 = Class.forName("java.lang.Integer");
            }
            catch(ClassNotFoundException classnotfoundexception5)
            {
                throw new NoClassDefFoundError(classnotfoundexception5.getMessage());
            }
            class3 = class14;
            class$2 = class3;
        }
        morpherregistry.registerMorpher(new ObjectArrayMorpher(new NumberMorpher(class3, new Integer(0))));
        class4 = class$3;
        if(class4 == null)
        {
            try
            {
                class13 = Class.forName("java.lang.Long");
            }
            catch(ClassNotFoundException classnotfoundexception4)
            {
                throw new NoClassDefFoundError(classnotfoundexception4.getMessage());
            }
            class4 = class13;
            class$3 = class4;
        }
        morpherregistry.registerMorpher(new ObjectArrayMorpher(new NumberMorpher(class4, new Long(0L))));
        class5 = class$4;
        if(class5 == null)
        {
            try
            {
                class12 = Class.forName("java.lang.Float");
            }
            catch(ClassNotFoundException classnotfoundexception3)
            {
                throw new NoClassDefFoundError(classnotfoundexception3.getMessage());
            }
            class5 = class12;
            class$4 = class5;
        }
        morpherregistry.registerMorpher(new ObjectArrayMorpher(new NumberMorpher(class5, new Float(0.0F))));
        class6 = class$5;
        if(class6 == null)
        {
            try
            {
                class11 = Class.forName("java.lang.Double");
            }
            catch(ClassNotFoundException classnotfoundexception2)
            {
                throw new NoClassDefFoundError(classnotfoundexception2.getMessage());
            }
            class6 = class11;
            class$5 = class6;
        }
        morpherregistry.registerMorpher(new ObjectArrayMorpher(new NumberMorpher(class6, new Double(0.0D))));
        class7 = class$6;
        if(class7 == null)
        {
            try
            {
                class10 = Class.forName("java.math.BigInteger");
            }
            catch(ClassNotFoundException classnotfoundexception1)
            {
                throw new NoClassDefFoundError(classnotfoundexception1.getMessage());
            }
            class7 = class10;
            class$6 = class7;
        }
        morpherregistry.registerMorpher(new ObjectArrayMorpher(new NumberMorpher(class7, BigInteger.ZERO)));
        class8 = class$7;
        if(class8 == null)
        {
            try
            {
                class9 = Class.forName("java.math.BigDecimal");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class8 = class9;
            class$7 = class8;
        }
        morpherregistry.registerMorpher(new ObjectArrayMorpher(new NumberMorpher(class8, BIGDECIMAL_ZERO)));
        morpherregistry.registerMorpher(new ObjectArrayMorpher(ClassMorpher.getInstance()));
    }

    public static void registerStandardObjectMorphers(MorpherRegistry morpherregistry)
    {
        morpherregistry.registerMorpher(new BooleanObjectMorpher(Boolean.FALSE));
        morpherregistry.registerMorpher(new CharacterObjectMorpher(new Character('\0')));
        morpherregistry.registerMorpher(StringMorpher.getInstance());
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            Class class3;
            Class class4;
            Class class5;
            Class class6;
            Class class7;
            Class class8;
            Class class9;
            Class class10;
            Class class11;
            Class class12;
            Class class13;
            Class class14;
            Class class15;
            Class class16;
            try
            {
                class16 = Class.forName("java.lang.Byte");
            }
            catch(ClassNotFoundException classnotfoundexception7)
            {
                throw new NoClassDefFoundError(classnotfoundexception7.getMessage());
            }
            class1 = class16;
            class$0 = class1;
        }
        morpherregistry.registerMorpher(new NumberMorpher(class1, new Byte((byte)0)));
        class2 = class$1;
        if(class2 == null)
        {
            try
            {
                class15 = Class.forName("java.lang.Short");
            }
            catch(ClassNotFoundException classnotfoundexception6)
            {
                throw new NoClassDefFoundError(classnotfoundexception6.getMessage());
            }
            class2 = class15;
            class$1 = class2;
        }
        morpherregistry.registerMorpher(new NumberMorpher(class2, new Short((short)0)));
        class3 = class$2;
        if(class3 == null)
        {
            try
            {
                class14 = Class.forName("java.lang.Integer");
            }
            catch(ClassNotFoundException classnotfoundexception5)
            {
                throw new NoClassDefFoundError(classnotfoundexception5.getMessage());
            }
            class3 = class14;
            class$2 = class3;
        }
        morpherregistry.registerMorpher(new NumberMorpher(class3, new Integer(0)));
        class4 = class$3;
        if(class4 == null)
        {
            try
            {
                class13 = Class.forName("java.lang.Long");
            }
            catch(ClassNotFoundException classnotfoundexception4)
            {
                throw new NoClassDefFoundError(classnotfoundexception4.getMessage());
            }
            class4 = class13;
            class$3 = class4;
        }
        morpherregistry.registerMorpher(new NumberMorpher(class4, new Long(0L)));
        class5 = class$4;
        if(class5 == null)
        {
            try
            {
                class12 = Class.forName("java.lang.Float");
            }
            catch(ClassNotFoundException classnotfoundexception3)
            {
                throw new NoClassDefFoundError(classnotfoundexception3.getMessage());
            }
            class5 = class12;
            class$4 = class5;
        }
        morpherregistry.registerMorpher(new NumberMorpher(class5, new Float(0.0F)));
        class6 = class$5;
        if(class6 == null)
        {
            try
            {
                class11 = Class.forName("java.lang.Double");
            }
            catch(ClassNotFoundException classnotfoundexception2)
            {
                throw new NoClassDefFoundError(classnotfoundexception2.getMessage());
            }
            class6 = class11;
            class$5 = class6;
        }
        morpherregistry.registerMorpher(new NumberMorpher(class6, new Double(0.0D)));
        class7 = class$6;
        if(class7 == null)
        {
            try
            {
                class10 = Class.forName("java.math.BigInteger");
            }
            catch(ClassNotFoundException classnotfoundexception1)
            {
                throw new NoClassDefFoundError(classnotfoundexception1.getMessage());
            }
            class7 = class10;
            class$6 = class7;
        }
        morpherregistry.registerMorpher(new NumberMorpher(class7, BigInteger.ZERO));
        class8 = class$7;
        if(class8 == null)
        {
            try
            {
                class9 = Class.forName("java.math.BigDecimal");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class8 = class9;
            class$7 = class8;
        }
        morpherregistry.registerMorpher(new NumberMorpher(class8, BIGDECIMAL_ZERO));
        morpherregistry.registerMorpher(ClassMorpher.getInstance());
    }

    public static void registerStandardPrimitiveArrayMorphers(MorpherRegistry morpherregistry)
    {
        morpherregistry.registerMorpher(new BooleanArrayMorpher(false));
        morpherregistry.registerMorpher(new CharArrayMorpher('\0'));
        morpherregistry.registerMorpher(new ByteArrayMorpher((byte)0));
        morpherregistry.registerMorpher(new ShortArrayMorpher((short)0));
        morpherregistry.registerMorpher(new IntArrayMorpher(0));
        morpherregistry.registerMorpher(new LongArrayMorpher(0L));
        morpherregistry.registerMorpher(new FloatArrayMorpher(0.0F));
        morpherregistry.registerMorpher(new DoubleArrayMorpher(0.0D));
    }

    public static void registerStandardPrimitiveMorphers(MorpherRegistry morpherregistry)
    {
        morpherregistry.registerMorpher(new BooleanMorpher(false));
        morpherregistry.registerMorpher(new CharMorpher('\0'));
        morpherregistry.registerMorpher(new ByteMorpher((byte)0));
        morpherregistry.registerMorpher(new ShortMorpher((short)0));
        morpherregistry.registerMorpher(new IntMorpher(0));
        morpherregistry.registerMorpher(new LongMorpher(0L));
        morpherregistry.registerMorpher(new FloatMorpher(0.0F));
        morpherregistry.registerMorpher(new DoubleMorpher(0.0D));
    }

    public static final BigDecimal BIGDECIMAL_ONE = new BigDecimal("1");
    public static final BigDecimal BIGDECIMAL_ZERO = new BigDecimal("0");
    static Class class$0;
    static Class class$1;
    static Class class$2;
    static Class class$3;
    static Class class$4;
    static Class class$5;
    static Class class$6;
    static Class class$7;

}
