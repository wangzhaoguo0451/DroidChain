// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.test;

import java.util.List;
import junit.framework.Assert;

public class ArrayAssertions extends Assert
{

    private ArrayAssertions()
    {
    }

    private static void assertActualPrimitiveArrays(String s, Object obj, Object obj1, Class class1, Class class2)
    {
        if(!Boolean.TYPE.isAssignableFrom(class2)) goto _L2; else goto _L1
_L1:
        Class class17 = class$1;
        if(class17 == null)
        {
            Class class18;
            try
            {
                class18 = Class.forName("java.lang.Boolean");
            }
            catch(ClassNotFoundException classnotfoundexception7)
            {
                throw new NoClassDefFoundError(classnotfoundexception7.getMessage());
            }
            class17 = class18;
            class$1 = class17;
        }
        if(class17.isAssignableFrom(class1))
            assertEquals(s, (Boolean[])obj, (boolean[])obj1);
        else
            assertEquals(s, (Object[])obj, (boolean[])obj1);
_L4:
        return;
_L2:
        if(Byte.TYPE.isAssignableFrom(class2))
        {
            Class class15 = class$2;
            if(class15 == null)
            {
                Class class16;
                try
                {
                    class16 = Class.forName("java.lang.Byte");
                }
                catch(ClassNotFoundException classnotfoundexception6)
                {
                    throw new NoClassDefFoundError(classnotfoundexception6.getMessage());
                }
                class15 = class16;
                class$2 = class15;
            }
            if(class15.isAssignableFrom(class1))
                assertEquals(s, (Byte[])obj, (byte[])obj1);
            else
                assertEquals(s, (Object[])obj, (byte[])obj1);
        } else
        if(Short.TYPE.isAssignableFrom(class2))
        {
            Class class13 = class$3;
            if(class13 == null)
            {
                Class class14;
                try
                {
                    class14 = Class.forName("java.lang.Short");
                }
                catch(ClassNotFoundException classnotfoundexception5)
                {
                    throw new NoClassDefFoundError(classnotfoundexception5.getMessage());
                }
                class13 = class14;
                class$3 = class13;
            }
            if(class13.isAssignableFrom(class1))
                assertEquals(s, (Short[])obj, (short[])obj1);
            else
                assertEquals(s, (Object[])obj, (short[])obj1);
        } else
        if(Integer.TYPE.isAssignableFrom(class2))
        {
            Class class11 = class$4;
            if(class11 == null)
            {
                Class class12;
                try
                {
                    class12 = Class.forName("java.lang.Integer");
                }
                catch(ClassNotFoundException classnotfoundexception4)
                {
                    throw new NoClassDefFoundError(classnotfoundexception4.getMessage());
                }
                class11 = class12;
                class$4 = class11;
            }
            if(class11.isAssignableFrom(class1))
                assertEquals(s, (Integer[])obj, (int[])obj1);
            else
                assertEquals(s, (Object[])obj, (int[])obj1);
        } else
        if(Long.TYPE.isAssignableFrom(class2))
        {
            Class class9 = class$5;
            if(class9 == null)
            {
                Class class10;
                try
                {
                    class10 = Class.forName("java.lang.Long");
                }
                catch(ClassNotFoundException classnotfoundexception3)
                {
                    throw new NoClassDefFoundError(classnotfoundexception3.getMessage());
                }
                class9 = class10;
                class$5 = class9;
            }
            if(class9.isAssignableFrom(class1))
                assertEquals(s, (Long[])obj, (long[])obj1);
            else
                assertEquals(s, (Object[])obj, (long[])obj1);
        } else
        if(Float.TYPE.isAssignableFrom(class2))
        {
            Class class7 = class$6;
            if(class7 == null)
            {
                Class class8;
                try
                {
                    class8 = Class.forName("java.lang.Float");
                }
                catch(ClassNotFoundException classnotfoundexception2)
                {
                    throw new NoClassDefFoundError(classnotfoundexception2.getMessage());
                }
                class7 = class8;
                class$6 = class7;
            }
            if(class7.isAssignableFrom(class1))
                assertEquals(s, (Float[])obj, (float[])obj1);
            else
                assertEquals(s, (Object[])obj, (float[])obj1);
        } else
        if(Double.TYPE.isAssignableFrom(class2))
        {
            Class class5 = class$7;
            if(class5 == null)
            {
                Class class6;
                try
                {
                    class6 = Class.forName("java.lang.Double");
                }
                catch(ClassNotFoundException classnotfoundexception1)
                {
                    throw new NoClassDefFoundError(classnotfoundexception1.getMessage());
                }
                class5 = class6;
                class$7 = class5;
            }
            if(class5.isAssignableFrom(class1))
                assertEquals(s, (Double[])obj, (double[])obj1);
            else
                assertEquals(s, (Object[])obj, (double[])obj1);
        } else
        if(Character.TYPE.isAssignableFrom(class2))
        {
            Class class3 = class$8;
            if(class3 == null)
            {
                Class class4;
                try
                {
                    class4 = Class.forName("java.lang.Character");
                }
                catch(ClassNotFoundException classnotfoundexception)
                {
                    throw new NoClassDefFoundError(classnotfoundexception.getMessage());
                }
                class3 = class4;
                class$8 = class3;
            }
            if(class3.isAssignableFrom(class1))
                assertEquals(s, (Character[])obj, (char[])obj1);
            else
                assertEquals(s, (Object[])obj, (char[])obj1);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static void assertEquals(Object obj, Object obj1)
    {
        assertEquals(null, obj, obj1);
    }

    public static void assertEquals(String s, Object obj, Object obj1)
    {
        if((obj != null || obj1 != null) && (obj == null || !obj.equals(obj1)))
        {
            Class class1 = obj.getClass();
            Class class2 = obj1.getClass();
            if(class1.isArray() && class2.isArray())
            {
                Class class3 = class1.getComponentType();
                Class class4 = class2.getComponentType();
                if(class3.isPrimitive())
                    assertExpectedPrimitiveArrays(s, obj, obj1, class3, class4);
                else
                if(class4.isPrimitive())
                    assertActualPrimitiveArrays(s, obj, obj1, class3, class4);
                else
                    assertEquals(s, (Object[])obj, (Object[])obj1);
            } else
            {
                Assert.failNotEquals(s, obj, obj1);
            }
        }
    }

    public static void assertEquals(String s, List list, List list1)
    {
        String s1;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(list == null)
            Assert.fail(s1 + "expected list was null");
        if(list1 == null)
            Assert.fail(s1 + "actual list was null");
        if(list != list1 && !list.equals(list1)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i;
        int j;
        if(list1.size() != list.size())
            Assert.fail(s1 + "list sizes differed, expected.size()=" + list.size() + " actual.size()=" + list1.size());
        i = list.size();
        j = 0;
_L7:
        if(j >= i) goto _L1; else goto _L3
_L3:
        Object obj;
        Object obj1;
        obj = list.get(j);
        obj1 = list1.get(j);
        if(obj != null) goto _L5; else goto _L4
_L4:
        if(obj1 == null) goto _L1; else goto _L6
_L6:
        Assert.fail(s1 + "lists first differed at element [" + j + "];");
_L8:
        if(obj.getClass().isArray() && obj1.getClass().isArray())
        {
            Object aobj[] = (Object[])obj;
            Object aobj1[] = (Object[])obj1;
            assertEquals(s1 + "lists first differed at element " + j + ";", aobj, aobj1);
        } else
        {
label0:
            {
                Class class1 = class$0;
                if(class1 == null)
                {
                    Class class2;
                    Class class3;
                    Class class4;
                    try
                    {
                        class4 = Class.forName("java.util.List");
                    }
                    catch(ClassNotFoundException classnotfoundexception1)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception1.getMessage());
                    }
                    class1 = class4;
                    class$0 = class1;
                }
                if(!class1.isAssignableFrom(obj.getClass()))
                    break label0;
                class2 = class$0;
                if(class2 == null)
                {
                    try
                    {
                        class3 = Class.forName("java.util.List");
                    }
                    catch(ClassNotFoundException classnotfoundexception)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception.getMessage());
                    }
                    class2 = class3;
                    class$0 = class2;
                }
                if(!class2.isAssignableFrom(obj1.getClass()))
                    break label0;
                assertEquals(s1 + "lists first differed at element [" + j + "];", (List)obj, (List)obj1);
            }
        }
_L9:
        j++;
          goto _L7
_L5:
        if(obj1 == null)
            Assert.fail(s1 + "lists first differed at element [" + j + "];");
          goto _L8
        assertEquals(s1 + "lists first differed at element [" + j + "];", obj, obj1);
          goto _L9
    }

    public static void assertEquals(String s, byte abyte0[], byte abyte1[])
    {
        if(abyte0 != abyte1)
        {
            String s1;
            int i;
            if(s == null)
                s1 = "";
            else
                s1 = s + ": ";
            if(abyte0 == null)
                Assert.fail(s1 + "expected array was null");
            if(abyte1 == null)
                Assert.fail(s1 + "actual array was null");
            if(abyte1.length != abyte0.length)
                Assert.fail(s1 + "array lengths differed, expected.length=" + abyte0.length + " actual.length=" + abyte1.length);
            i = 0;
            while(i < abyte0.length) 
            {
                Assert.assertEquals(s1 + "arrays first differed at element [" + i + "];", abyte0[i], abyte1[i]);
                i++;
            }
        }
    }

    public static void assertEquals(String s, byte abyte0[], Object aobj[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(abyte0 == null)
            Assert.fail(s1 + "expected array was null");
        if(aobj == null)
            Assert.fail(s1 + "actual array was null");
        if(aobj.length != abyte0.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + abyte0.length + " actual.length=" + aobj.length);
        i = 0;
        do
        {
            if(i >= abyte0.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", new Byte(abyte0[i]), aobj[i]);
            i++;
        } while(true);
    }

    public static void assertEquals(String s, char ac[], char ac1[])
    {
        if(ac != ac1)
        {
            String s1;
            int i;
            if(s == null)
                s1 = "";
            else
                s1 = s + ": ";
            if(ac == null)
                Assert.fail(s1 + "expected array was null");
            if(ac1 == null)
                Assert.fail(s1 + "actual array was null");
            if(ac1.length != ac.length)
                Assert.fail(s1 + "array lengths differed, expected.length=" + ac.length + " actual.length=" + ac1.length);
            i = 0;
            while(i < ac.length) 
            {
                Assert.assertEquals(s1 + "arrays first differed at element [" + i + "];", ac[i], ac1[i]);
                i++;
            }
        }
    }

    public static void assertEquals(String s, char ac[], Object aobj[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(ac == null)
            Assert.fail(s1 + "expected array was null");
        if(aobj == null)
            Assert.fail(s1 + "actual array was null");
        if(aobj.length != ac.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + ac.length + " actual.length=" + aobj.length);
        i = 0;
        do
        {
            if(i >= ac.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", new Character(ac[i]), aobj[i]);
            i++;
        } while(true);
    }

    public static void assertEquals(String s, double ad[], double ad1[])
    {
        if(ad != ad1)
        {
            String s1;
            int i;
            if(s == null)
                s1 = "";
            else
                s1 = s + ": ";
            if(ad == null)
                Assert.fail(s1 + "expected array was null");
            if(ad1 == null)
                Assert.fail(s1 + "actual array was null");
            if(ad1.length != ad.length)
                Assert.fail(s1 + "array lengths differed, expected.length=" + ad.length + " actual.length=" + ad1.length);
            i = 0;
            while(i < ad.length) 
            {
                Assert.assertEquals(s1 + "arrays first differed at element [" + i + "];", ad[i], ad1[i], 0.0D);
                i++;
            }
        }
    }

    public static void assertEquals(String s, double ad[], Object aobj[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(ad == null)
            Assert.fail(s1 + "expected array was null");
        if(aobj == null)
            Assert.fail(s1 + "actual array was null");
        if(aobj.length != ad.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + ad.length + " actual.length=" + aobj.length);
        i = 0;
        do
        {
            if(i >= ad.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", new Double(ad[i]), aobj[i]);
            i++;
        } while(true);
    }

    public static void assertEquals(String s, float af[], float af1[])
    {
        if(af != af1)
        {
            String s1;
            int i;
            if(s == null)
                s1 = "";
            else
                s1 = s + ": ";
            if(af == null)
                Assert.fail(s1 + "expected array was null");
            if(af1 == null)
                Assert.fail(s1 + "actual array was null");
            if(af1.length != af.length)
                Assert.fail(s1 + "array lengths differed, expected.length=" + af.length + " actual.length=" + af1.length);
            i = 0;
            while(i < af.length) 
            {
                Assert.assertEquals(s1 + "arrays first differed at element [" + i + "];", af[i], af1[i], 0.0F);
                i++;
            }
        }
    }

    public static void assertEquals(String s, float af[], Object aobj[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(af == null)
            Assert.fail(s1 + "expected array was null");
        if(aobj == null)
            Assert.fail(s1 + "actual array was null");
        if(aobj.length != af.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + af.length + " actual.length=" + aobj.length);
        i = 0;
        do
        {
            if(i >= af.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", new Float(af[i]), aobj[i]);
            i++;
        } while(true);
    }

    public static void assertEquals(String s, int ai[], int ai1[])
    {
        if(ai != ai1)
        {
            String s1;
            int i;
            if(s == null)
                s1 = "";
            else
                s1 = s + ": ";
            if(ai == null)
                Assert.fail(s1 + "expected array was null");
            if(ai1 == null)
                Assert.fail(s1 + "actual array was null");
            if(ai1.length != ai.length)
                Assert.fail(s1 + "array lengths differed, expected.length=" + ai.length + " actual.length=" + ai1.length);
            i = 0;
            while(i < ai.length) 
            {
                Assert.assertEquals(s1 + "arrays first differed at element [" + i + "];", ai[i], ai1[i]);
                i++;
            }
        }
    }

    public static void assertEquals(String s, int ai[], Object aobj[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(ai == null)
            Assert.fail(s1 + "expected array was null");
        if(aobj == null)
            Assert.fail(s1 + "actual array was null");
        if(aobj.length != ai.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + ai.length + " actual.length=" + aobj.length);
        i = 0;
        do
        {
            if(i >= ai.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", new Integer(ai[i]), aobj[i]);
            i++;
        } while(true);
    }

    public static void assertEquals(String s, long al[], long al1[])
    {
        if(al != al1)
        {
            String s1;
            int i;
            if(s == null)
                s1 = "";
            else
                s1 = s + ": ";
            if(al == null)
                Assert.fail(s1 + "expected array was null");
            if(al1 == null)
                Assert.fail(s1 + "actual array was null");
            if(al1.length != al.length)
                Assert.fail(s1 + "array lengths differed, expected.length=" + al.length + " actual.length=" + al1.length);
            i = 0;
            while(i < al.length) 
            {
                Assert.assertEquals(s1 + "arrays first differed at element [" + i + "];", al[i], al1[i]);
                i++;
            }
        }
    }

    public static void assertEquals(String s, long al[], Object aobj[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(al == null)
            Assert.fail(s1 + "expected array was null");
        if(aobj == null)
            Assert.fail(s1 + "actual array was null");
        if(aobj.length != al.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + al.length + " actual.length=" + aobj.length);
        i = 0;
        do
        {
            if(i >= al.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", new Long(al[i]), aobj[i]);
            i++;
        } while(true);
    }

    public static void assertEquals(String s, Object aobj[], byte abyte0[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(aobj == null)
            Assert.fail(s1 + "expected array was null");
        if(abyte0 == null)
            Assert.fail(s1 + "actual array was null");
        if(abyte0.length != aobj.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + aobj.length + " actual.length=" + abyte0.length);
        i = 0;
        do
        {
            if(i >= aobj.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", aobj[i], new Byte(abyte0[i]));
            i++;
        } while(true);
    }

    public static void assertEquals(String s, Object aobj[], char ac[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(aobj == null)
            Assert.fail(s1 + "expected array was null");
        if(ac == null)
            Assert.fail(s1 + "actual array was null");
        if(ac.length != aobj.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + aobj.length + " actual.length=" + ac.length);
        i = 0;
        do
        {
            if(i >= aobj.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", aobj[i], new Character(ac[i]));
            i++;
        } while(true);
    }

    public static void assertEquals(String s, Object aobj[], double ad[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(aobj == null)
            Assert.fail(s1 + "expected array was null");
        if(ad == null)
            Assert.fail(s1 + "actual array was null");
        if(ad.length != aobj.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + aobj.length + " actual.length=" + ad.length);
        i = 0;
        do
        {
            if(i >= aobj.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", aobj[i], new Double(ad[i]));
            i++;
        } while(true);
    }

    public static void assertEquals(String s, Object aobj[], float af[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(aobj == null)
            Assert.fail(s1 + "expected array was null");
        if(af == null)
            Assert.fail(s1 + "actual array was null");
        if(af.length != aobj.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + aobj.length + " actual.length=" + af.length);
        i = 0;
        do
        {
            if(i >= aobj.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", aobj[i], new Float(af[i]));
            i++;
        } while(true);
    }

    public static void assertEquals(String s, Object aobj[], int ai[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(aobj == null)
            Assert.fail(s1 + "expected array was null");
        if(ai == null)
            Assert.fail(s1 + "actual array was null");
        if(ai.length != aobj.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + aobj.length + " actual.length=" + ai.length);
        i = 0;
        do
        {
            if(i >= aobj.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", aobj[i], new Integer(ai[i]));
            i++;
        } while(true);
    }

    public static void assertEquals(String s, Object aobj[], long al[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(aobj == null)
            Assert.fail(s1 + "expected array was null");
        if(al == null)
            Assert.fail(s1 + "actual array was null");
        if(al.length != aobj.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + aobj.length + " actual.length=" + al.length);
        i = 0;
        do
        {
            if(i >= aobj.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", aobj[i], new Long(al[i]));
            i++;
        } while(true);
    }

    public static void assertEquals(String s, Object aobj[], Object aobj1[])
    {
        if(aobj != aobj1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String s1;
        int i;
        Object obj;
        Object obj1;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(aobj == null)
            Assert.fail(s1 + "expected array was null");
        if(aobj1 == null)
            Assert.fail(s1 + "actual array was null");
        if(aobj1.length != aobj.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + aobj.length + " actual.length=" + aobj1.length);
        i = 0;
_L5:
        if(i >= aobj.length) goto _L1; else goto _L3
_L3:
        obj = aobj[i];
        obj1 = aobj1[i];
        if(obj != null)
            break MISSING_BLOCK_LABEL_316;
        if(obj1 == null) goto _L1; else goto _L4
_L4:
        Assert.fail(s1 + "arrays first differed at element [" + i + "];");
_L6:
        if(obj.getClass().isArray() && obj1.getClass().isArray())
        {
            Class class1 = obj.getClass().getComponentType();
            Class class2 = obj1.getClass().getComponentType();
            if(class1.isPrimitive())
            {
                if(class1 == Boolean.TYPE)
                {
                    if(class2 == Boolean.TYPE)
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (boolean[])obj, (boolean[])obj1);
                    else
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (boolean[])obj, (Object[])obj1);
                } else
                if(class1 == Byte.TYPE)
                {
                    if(class2 == Byte.TYPE)
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (byte[])obj, (byte[])obj1);
                    else
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (byte[])obj, (Object[])obj1);
                } else
                if(class1 == Short.TYPE)
                {
                    if(class2 == Short.TYPE)
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (short[])obj, (short[])obj1);
                    else
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (short[])obj, (Object[])obj1);
                } else
                if(class1 == Integer.TYPE)
                {
                    if(class2 == Integer.TYPE)
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (int[])obj, (int[])obj1);
                    else
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (int[])obj, (Object[])obj1);
                } else
                if(class1 == Long.TYPE)
                {
                    if(class2 == Long.TYPE)
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (long[])obj, (long[])obj1);
                    else
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (long[])obj, (Object[])obj1);
                } else
                if(class1 == Float.TYPE)
                {
                    if(class2 == Float.TYPE)
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (float[])obj, (float[])obj1);
                    else
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (float[])obj, (Object[])obj1);
                } else
                if(class1 == Double.TYPE)
                {
                    if(class2 == Double.TYPE)
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (double[])obj, (double[])obj1);
                    else
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (double[])obj, (Object[])obj1);
                } else
                if(class1 == Character.TYPE)
                    if(class2 == Character.TYPE)
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (char[])obj, (char[])obj1);
                    else
                        assertEquals(s1 + "arrays first differed at element " + i + ";", (char[])obj, (Object[])obj1);
            } else
            if(class2.isPrimitive())
            {
                if(class2 == Boolean.TYPE)
                    assertEquals(s1 + "arrays first differed at element " + i + ";", (Object[])obj, (boolean[])obj1);
                else
                if(class2 == Byte.TYPE)
                    assertEquals(s1 + "arrays first differed at element " + i + ";", (Object[])obj, (byte[])obj1);
                else
                if(class2 == Short.TYPE)
                    assertEquals(s1 + "arrays first differed at element " + i + ";", (Object[])obj, (short[])obj1);
                else
                if(class2 == Integer.TYPE)
                    assertEquals(s1 + "arrays first differed at element " + i + ";", (Object[])obj, (int[])obj1);
                else
                if(class2 == Long.TYPE)
                    assertEquals(s1 + "arrays first differed at element " + i + ";", (Object[])obj, (long[])obj1);
                else
                if(class2 == Float.TYPE)
                    assertEquals(s1 + "arrays first differed at element " + i + ";", (Object[])obj, (float[])obj1);
                else
                if(class2 == Double.TYPE)
                    assertEquals(s1 + "arrays first differed at element " + i + ";", (Object[])obj, (double[])obj1);
                else
                if(class2 == Character.TYPE)
                    assertEquals(s1 + "arrays first differed at element " + i + ";", (Object[])obj, (char[])obj1);
            } else
            {
                Object aobj2[] = (Object[])obj;
                Object aobj3[] = (Object[])obj1;
                assertEquals(s1 + "arrays first differed at element " + i + ";", aobj2, aobj3);
            }
        } else
        {
            assertEquals(s1 + "arrays first differed at element [" + i + "];", obj, obj1);
        }
        i++;
          goto _L5
        if(obj1 == null)
            Assert.fail(s1 + "arrays first differed at element [" + i + "];");
          goto _L6
    }

    public static void assertEquals(String s, Object aobj[], short aword0[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(aobj == null)
            Assert.fail(s1 + "expected array was null");
        if(aword0 == null)
            Assert.fail(s1 + "actual array was null");
        if(aword0.length != aobj.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + aobj.length + " actual.length=" + aword0.length);
        i = 0;
        do
        {
            if(i >= aobj.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", aobj[i], new Short(aword0[i]));
            i++;
        } while(true);
    }

    public static void assertEquals(String s, Object aobj[], boolean aflag[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(aobj == null)
            Assert.fail(s1 + "expected array was null");
        if(aflag == null)
            Assert.fail(s1 + "actual array was null");
        if(aflag.length != aobj.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + aobj.length + " actual.length=" + aflag.length);
        i = 0;
        do
        {
            if(i >= aobj.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", aobj[i], new Boolean(aflag[i]));
            i++;
        } while(true);
    }

    public static void assertEquals(String s, short aword0[], Object aobj[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(aword0 == null)
            Assert.fail(s1 + "expected array was null");
        if(aobj == null)
            Assert.fail(s1 + "actual array was null");
        if(aobj.length != aword0.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + aword0.length + " actual.length=" + aobj.length);
        i = 0;
        do
        {
            if(i >= aword0.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", new Short(aword0[i]), aobj[i]);
            i++;
        } while(true);
    }

    public static void assertEquals(String s, short aword0[], short aword1[])
    {
        if(aword0 != aword1)
        {
            String s1;
            int i;
            if(s == null)
                s1 = "";
            else
                s1 = s + ": ";
            if(aword0 == null)
                Assert.fail(s1 + "expected array was null");
            if(aword1 == null)
                Assert.fail(s1 + "actual array was null");
            if(aword1.length != aword0.length)
                Assert.fail(s1 + "array lengths differed, expected.length=" + aword0.length + " actual.length=" + aword1.length);
            i = 0;
            while(i < aword0.length) 
            {
                Assert.assertEquals(s1 + "arrays first differed at element [" + i + "];", aword0[i], aword1[i]);
                i++;
            }
        }
    }

    public static void assertEquals(String s, boolean aflag[], Object aobj[])
    {
        String s1;
        int i;
        if(s == null)
            s1 = "";
        else
            s1 = s + ": ";
        if(aflag == null)
            Assert.fail(s1 + "expected array was null");
        if(aobj == null)
            Assert.fail(s1 + "actual array was null");
        if(aobj.length != aflag.length)
            Assert.fail(s1 + "array lengths differed, expected.length=" + aflag.length + " actual.length=" + aobj.length);
        i = 0;
        do
        {
            if(i >= aflag.length)
                return;
            assertEquals(s1 + "arrays first differed at element [" + i + "];", new Boolean(aflag[i]), aobj[i]);
            i++;
        } while(true);
    }

    public static void assertEquals(String s, boolean aflag[], boolean aflag1[])
    {
        if(aflag != aflag1)
        {
            String s1;
            int i;
            if(s == null)
                s1 = "";
            else
                s1 = s + ": ";
            if(aflag == null)
                Assert.fail(s1 + "expected array was null");
            if(aflag1 == null)
                Assert.fail(s1 + "actual array was null");
            if(aflag1.length != aflag.length)
                Assert.fail(s1 + "array lengths differed, expected.length=" + aflag.length + " actual.length=" + aflag1.length);
            i = 0;
            while(i < aflag.length) 
            {
                Assert.assertEquals(s1 + "arrays first differed at element [" + i + "];", aflag[i], aflag1[i]);
                i++;
            }
        }
    }

    public static void assertEquals(List list, List list1)
    {
        assertEquals(null, list, list1);
    }

    public static void assertEquals(byte abyte0[], byte abyte1[])
    {
        assertEquals(null, abyte0, abyte1);
    }

    public static void assertEquals(byte abyte0[], Object aobj[])
    {
        assertEquals(null, abyte0, aobj);
    }

    public static void assertEquals(char ac[], char ac1[])
    {
        assertEquals(null, ac, ac1);
    }

    public static void assertEquals(char ac[], Object aobj[])
    {
        assertEquals(null, ac, aobj);
    }

    public static void assertEquals(double ad[], double ad1[])
    {
        assertEquals(null, ad, ad1);
    }

    public static void assertEquals(double ad[], Object aobj[])
    {
        assertEquals(null, ad, aobj);
    }

    public static void assertEquals(float af[], float af1[])
    {
        assertEquals(null, af, af1);
    }

    public static void assertEquals(float af[], Object aobj[])
    {
        assertEquals(null, af, aobj);
    }

    public static void assertEquals(int ai[], int ai1[])
    {
        assertEquals(null, ai, ai1);
    }

    public static void assertEquals(int ai[], Object aobj[])
    {
        assertEquals(null, ai, aobj);
    }

    public static void assertEquals(long al[], long al1[])
    {
        assertEquals(null, al, al1);
    }

    public static void assertEquals(long al[], Object aobj[])
    {
        assertEquals(null, al, aobj);
    }

    public static void assertEquals(Object aobj[], byte abyte0[])
    {
        assertEquals(null, aobj, abyte0);
    }

    public static void assertEquals(Object aobj[], char ac[])
    {
        assertEquals(null, aobj, ac);
    }

    public static void assertEquals(Object aobj[], double ad[])
    {
        assertEquals(null, aobj, ad);
    }

    public static void assertEquals(Object aobj[], float af[])
    {
        assertEquals(null, aobj, af);
    }

    public static void assertEquals(Object aobj[], int ai[])
    {
        assertEquals(null, aobj, ai);
    }

    public static void assertEquals(Object aobj[], long al[])
    {
        assertEquals(null, aobj, al);
    }

    public static void assertEquals(Object aobj[], Object aobj1[])
    {
        assertEquals(null, aobj, aobj1);
    }

    public static void assertEquals(Object aobj[], short aword0[])
    {
        assertEquals(null, aobj, aword0);
    }

    public static void assertEquals(Object aobj[], boolean aflag[])
    {
        assertEquals(null, aobj, aflag);
    }

    public static void assertEquals(short aword0[], Object aobj[])
    {
        assertEquals(null, aword0, aobj);
    }

    public static void assertEquals(short aword0[], short aword1[])
    {
        assertEquals(null, aword0, aword1);
    }

    public static void assertEquals(boolean aflag[], Object aobj[])
    {
        assertEquals(null, aflag, aobj);
    }

    public static void assertEquals(boolean aflag[], boolean aflag1[])
    {
        assertEquals(null, aflag, aflag1);
    }

    private static void assertExpectedPrimitiveArrays(String s, Object obj, Object obj1, Class class1, Class class2)
    {
        if(!Boolean.TYPE.isAssignableFrom(class1)) goto _L2; else goto _L1
_L1:
        if(Boolean.TYPE.isAssignableFrom(class2))
        {
            assertEquals(s, (boolean[])obj, (boolean[])obj1);
        } else
        {
            Class class17 = class$1;
            if(class17 == null)
            {
                Class class18;
                try
                {
                    class18 = Class.forName("java.lang.Boolean");
                }
                catch(ClassNotFoundException classnotfoundexception7)
                {
                    throw new NoClassDefFoundError(classnotfoundexception7.getMessage());
                }
                class17 = class18;
                class$1 = class17;
            }
            if(class17.isAssignableFrom(class2))
                assertEquals(s, (boolean[])obj, (Boolean[])obj1);
            else
            if(!class2.isPrimitive())
                assertEquals(s, (boolean[])obj, (Object[])obj1);
            else
                Assert.failNotEquals(s, obj, obj1);
        }
_L4:
        return;
_L2:
        if(Byte.TYPE.isAssignableFrom(class1))
        {
            if(Byte.TYPE.isAssignableFrom(class2))
            {
                assertEquals(s, (byte[])obj, (byte[])obj1);
            } else
            {
                Class class15 = class$2;
                if(class15 == null)
                {
                    Class class16;
                    try
                    {
                        class16 = Class.forName("java.lang.Byte");
                    }
                    catch(ClassNotFoundException classnotfoundexception6)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception6.getMessage());
                    }
                    class15 = class16;
                    class$2 = class15;
                }
                if(class15.isAssignableFrom(class2))
                    assertEquals(s, (byte[])obj, (Byte[])obj1);
                else
                if(!class2.isPrimitive())
                    assertEquals(s, (byte[])obj, (Object[])obj1);
                else
                    Assert.failNotEquals(s, obj, obj1);
            }
        } else
        if(Short.TYPE.isAssignableFrom(class1))
        {
            if(Short.TYPE.isAssignableFrom(class2))
            {
                assertEquals(s, (short[])obj, (short[])obj1);
            } else
            {
                Class class13 = class$3;
                if(class13 == null)
                {
                    Class class14;
                    try
                    {
                        class14 = Class.forName("java.lang.Short");
                    }
                    catch(ClassNotFoundException classnotfoundexception5)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception5.getMessage());
                    }
                    class13 = class14;
                    class$3 = class13;
                }
                if(class13.isAssignableFrom(class2))
                    assertEquals(s, (short[])obj, (Short[])obj1);
                else
                if(!class2.isPrimitive())
                    assertEquals(s, (short[])obj, (Object[])obj1);
                else
                    Assert.failNotEquals(s, obj, obj1);
            }
        } else
        if(Integer.TYPE.isAssignableFrom(class1))
        {
            if(Integer.TYPE.isAssignableFrom(class2))
            {
                assertEquals(s, (int[])obj, (int[])obj1);
            } else
            {
                Class class11 = class$4;
                if(class11 == null)
                {
                    Class class12;
                    try
                    {
                        class12 = Class.forName("java.lang.Integer");
                    }
                    catch(ClassNotFoundException classnotfoundexception4)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception4.getMessage());
                    }
                    class11 = class12;
                    class$4 = class11;
                }
                if(class11.isAssignableFrom(class2))
                    assertEquals(s, (int[])obj, (Integer[])obj1);
                else
                if(!class2.isPrimitive())
                    assertEquals(s, (int[])obj, (Object[])obj1);
                else
                    Assert.failNotEquals(s, obj, obj1);
            }
        } else
        if(Long.TYPE.isAssignableFrom(class1))
        {
            if(Long.TYPE.isAssignableFrom(class2))
            {
                assertEquals(s, (long[])obj, (long[])obj1);
            } else
            {
                Class class9 = class$5;
                if(class9 == null)
                {
                    Class class10;
                    try
                    {
                        class10 = Class.forName("java.lang.Long");
                    }
                    catch(ClassNotFoundException classnotfoundexception3)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception3.getMessage());
                    }
                    class9 = class10;
                    class$5 = class9;
                }
                if(class9.isAssignableFrom(class2))
                    assertEquals(s, (long[])obj, (Long[])obj1);
                else
                if(!class2.isPrimitive())
                    assertEquals(s, (long[])obj, (Object[])obj1);
                else
                    Assert.failNotEquals(s, obj, obj1);
            }
        } else
        if(Float.TYPE.isAssignableFrom(class1))
        {
            if(Float.TYPE.isAssignableFrom(class2))
            {
                assertEquals(s, (float[])obj, (float[])obj1);
            } else
            {
                Class class7 = class$6;
                if(class7 == null)
                {
                    Class class8;
                    try
                    {
                        class8 = Class.forName("java.lang.Float");
                    }
                    catch(ClassNotFoundException classnotfoundexception2)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception2.getMessage());
                    }
                    class7 = class8;
                    class$6 = class7;
                }
                if(class7.isAssignableFrom(class2))
                    assertEquals(s, (float[])obj, (Float[])obj1);
                else
                if(!class2.isPrimitive())
                    assertEquals(s, (float[])obj, (Object[])obj1);
                else
                    Assert.failNotEquals(s, obj, obj1);
            }
        } else
        if(Double.TYPE.isAssignableFrom(class1))
        {
            if(Double.TYPE.isAssignableFrom(class2))
            {
                assertEquals(s, (double[])obj, (double[])obj1);
            } else
            {
                Class class5 = class$7;
                if(class5 == null)
                {
                    Class class6;
                    try
                    {
                        class6 = Class.forName("java.lang.Double");
                    }
                    catch(ClassNotFoundException classnotfoundexception1)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception1.getMessage());
                    }
                    class5 = class6;
                    class$7 = class5;
                }
                if(class5.isAssignableFrom(class2))
                    assertEquals(s, (double[])obj, (Double[])obj1);
                else
                if(!class2.isPrimitive())
                    assertEquals(s, (double[])obj, (Object[])obj1);
                else
                    Assert.failNotEquals(s, obj, obj1);
            }
        } else
        if(Character.TYPE.isAssignableFrom(class1))
            if(Character.TYPE.isAssignableFrom(class2))
            {
                assertEquals(s, (char[])obj, (char[])obj1);
            } else
            {
                Class class3 = class$8;
                if(class3 == null)
                {
                    Class class4;
                    try
                    {
                        class4 = Class.forName("java.lang.Character");
                    }
                    catch(ClassNotFoundException classnotfoundexception)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception.getMessage());
                    }
                    class3 = class4;
                    class$8 = class3;
                }
                if(class3.isAssignableFrom(class2))
                    assertEquals(s, (char[])obj, (Character[])obj1);
                else
                if(!class2.isPrimitive())
                    assertEquals(s, (char[])obj, (Object[])obj1);
                else
                    Assert.failNotEquals(s, obj, obj1);
            }
        if(true) goto _L4; else goto _L3
_L3:
    }

    static Class class$0;
    static Class class$1;
    static Class class$2;
    static Class class$3;
    static Class class$4;
    static Class class$5;
    static Class class$6;
    static Class class$7;
    static Class class$8;
}
