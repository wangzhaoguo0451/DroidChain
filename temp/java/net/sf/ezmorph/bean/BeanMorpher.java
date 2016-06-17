// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package net.sf.ezmorph.bean;

import java.beans.FeatureDescriptor;
import java.beans.PropertyDescriptor;
import java.lang.reflect.InvocationTargetException;
import net.sf.ezmorph.*;
import net.sf.ezmorph.object.IdentityObjectMorpher;
import org.apache.commons.beanutils.*;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public final class BeanMorpher
    implements ObjectMorpher
{

    public BeanMorpher(Class class1, MorpherRegistry morpherregistry)
    {
        this(class1, morpherregistry, false);
    }

    public BeanMorpher(Class class1, MorpherRegistry morpherregistry, boolean flag)
    {
        validateClass(class1);
        if(morpherregistry == null)
        {
            throw new MorphException("morpherRegistry is null");
        } else
        {
            beanClass = class1;
            morpherRegistry = morpherregistry;
            lenient = flag;
            return;
        }
    }

    private void setProperty(Object obj, String s, Class class1, Class class2, Object obj1)
        throws IllegalAccessException, InvocationTargetException, NoSuchMethodException
    {
        if(!class2.isAssignableFrom(class1)) goto _L2; else goto _L1
_L1:
        if(obj1 == null && class2.isPrimitive())
            obj1 = morpherRegistry.morph(class2, obj1);
        PropertyUtils.setProperty(obj, s, obj1);
_L4:
        return;
_L2:
        Class class3 = class$1;
        if(class3 == null)
        {
            Class class4;
            try
            {
                class4 = Class.forName("java.lang.Object");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class3 = class4;
            class$1 = class3;
        }
        if(class2.equals(class3))
            PropertyUtils.setProperty(obj, s, obj1);
        else
        if(obj1 == null)
        {
            if(class2.isPrimitive())
                PropertyUtils.setProperty(obj, s, morpherRegistry.morph(class2, obj1));
        } else
        if(IdentityObjectMorpher.getInstance() == morpherRegistry.getMorpherFor(class2))
        {
            if(!lenient)
                throw new MorphException("Can't find a morpher for target class " + class2.getName() + " (" + s + ")");
            log.info("Can't find a morpher for target class " + class2.getName() + " (" + s + ") SKIPPED");
        } else
        {
            PropertyUtils.setProperty(obj, s, morpherRegistry.morph(class2, obj1));
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void validateClass(Class class1)
    {
label0:
        {
            if(class1 == null)
                throw new MorphException("target class is null");
            if(class1.isPrimitive())
                throw new MorphException("target class is a primitive");
            if(class1.isArray())
                throw new MorphException("target class is an array");
            if(class1.isInterface())
                throw new MorphException("target class is an interface");
            Class class2 = class$2;
            if(class2 == null)
            {
                Class class15;
                try
                {
                    class15 = Class.forName("org.apache.commons.beanutils.DynaBean");
                }
                catch(ClassNotFoundException classnotfoundexception6)
                {
                    throw new NoClassDefFoundError(classnotfoundexception6.getMessage());
                }
                class2 = class15;
                class$2 = class2;
            }
            if(class2.isAssignableFrom(class1))
                throw new MorphException("target class is a DynaBean");
            Class class3 = class$3;
            if(class3 == null)
            {
                Class class4;
                Class class5;
                Class class12;
                Class class13;
                Class class14;
                try
                {
                    class14 = Class.forName("java.lang.Number");
                }
                catch(ClassNotFoundException classnotfoundexception5)
                {
                    throw new NoClassDefFoundError(classnotfoundexception5.getMessage());
                }
                class3 = class14;
                class$3 = class3;
            }
            if(!class3.isAssignableFrom(class1))
            {
                class4 = class$4;
                if(class4 == null)
                {
                    try
                    {
                        class13 = Class.forName("java.lang.Boolean");
                    }
                    catch(ClassNotFoundException classnotfoundexception4)
                    {
                        throw new NoClassDefFoundError(classnotfoundexception4.getMessage());
                    }
                    class4 = class13;
                    class$4 = class4;
                }
                if(!class4.isAssignableFrom(class1))
                {
                    class5 = class$5;
                    if(class5 == null)
                    {
                        try
                        {
                            class12 = Class.forName("java.lang.Character");
                        }
                        catch(ClassNotFoundException classnotfoundexception3)
                        {
                            throw new NoClassDefFoundError(classnotfoundexception3.getMessage());
                        }
                        class5 = class12;
                        class$5 = class5;
                    }
                    if(!class5.isAssignableFrom(class1))
                        break label0;
                }
            }
            throw new MorphException("target class is a wrapper");
        }
        Class class6 = class$6;
        if(class6 == null)
        {
            Class class11;
            try
            {
                class11 = Class.forName("java.lang.String");
            }
            catch(ClassNotFoundException classnotfoundexception2)
            {
                throw new NoClassDefFoundError(classnotfoundexception2.getMessage());
            }
            class6 = class11;
            class$6 = class6;
        }
        if(class6.isAssignableFrom(class1))
            throw new MorphException("target class is a String");
        Class class7 = class$7;
        if(class7 == null)
        {
            Class class10;
            try
            {
                class10 = Class.forName("java.util.Collection");
            }
            catch(ClassNotFoundException classnotfoundexception1)
            {
                throw new NoClassDefFoundError(classnotfoundexception1.getMessage());
            }
            class7 = class10;
            class$7 = class7;
        }
        if(class7.isAssignableFrom(class1))
            throw new MorphException("target class is a Collection");
        Class class8 = class$8;
        if(class8 == null)
        {
            Class class9;
            try
            {
                class9 = Class.forName("java.util.Map");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class8 = class9;
            class$8 = class8;
        }
        if(class8.isAssignableFrom(class1))
            throw new MorphException("target class is a Map");
        else
            return;
    }

    public Object morph(Object obj)
    {
        if(obj != null) goto _L2; else goto _L1
_L1:
        Object obj1 = null;
_L9:
        return obj1;
_L2:
        if(!supports(obj.getClass()))
            throw new MorphException("unsupported class: " + obj.getClass().getName());
        PropertyDescriptor apropertydescriptor[];
        int i;
        obj1 = beanClass.newInstance();
        apropertydescriptor = PropertyUtils.getPropertyDescriptors(beanClass);
        i = 0;
_L7:
        PropertyDescriptor propertydescriptor;
        String s;
        if(i >= apropertydescriptor.length)
            continue; /* Loop/switch isn't completed */
        propertydescriptor = apropertydescriptor[i];
        s = propertydescriptor.getName();
        if(propertydescriptor.getWriteMethod() == null)
        {
            log.info("Property '" + beanClass.getName() + "." + s + "' has no write method. SKIPPED.");
            break MISSING_BLOCK_LABEL_389;
        }
        if(!(obj instanceof DynaBean)) goto _L4; else goto _L3
_L3:
        MorphException morphexception;
        DynaProperty dynaproperty;
        dynaproperty = ((DynaBean)obj).getDynaClass().getDynaProperty(s);
        if(dynaproperty == null)
        {
            log.warn("DynaProperty '" + s + "' does not exist. SKIPPED.");
            break MISSING_BLOCK_LABEL_389;
        }
        Class class2 = dynaproperty.getType();
_L6:
        Exception exception;
        setProperty(obj1, s, class2, propertydescriptor.getPropertyType(), PropertyUtils.getProperty(obj, s));
        break MISSING_BLOCK_LABEL_389;
_L4:
        Class class1;
        try
        {
            PropertyDescriptor propertydescriptor1 = PropertyUtils.getPropertyDescriptor(obj, s);
            if(propertydescriptor1 == null)
            {
                log.warn("Property '" + obj.getClass().getName() + "." + s + "' does not exist. SKIPPED.");
                break MISSING_BLOCK_LABEL_389;
            }
            if(propertydescriptor1.getReadMethod() == null)
            {
                log.warn("Property '" + obj.getClass().getName() + "." + s + "' has no read method. SKIPPED.");
                break MISSING_BLOCK_LABEL_389;
            }
            class1 = propertydescriptor1.getPropertyType();
        }
        // Misplaced declaration of an exception variable
        catch(MorphException morphexception)
        {
            throw morphexception;
        }
        // Misplaced declaration of an exception variable
        catch(Exception exception)
        {
            throw new MorphException(exception);
        }
        class2 = class1;
        if(true) goto _L6; else goto _L5
_L5:
        i++;
          goto _L7
        if(true) goto _L9; else goto _L8
_L8:
    }

    public Class morphsTo()
    {
        return beanClass;
    }

    public boolean supports(Class class1)
    {
        boolean flag;
        if(class1.isArray())
            flag = false;
        else
            flag = true;
        return flag;
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
    private static final Log log;
    private final Class beanClass;
    private boolean lenient;
    private final MorpherRegistry morpherRegistry;

    static 
    {
        Class class1 = class$0;
        if(class1 == null)
        {
            Class class2;
            try
            {
                class2 = Class.forName("net.sf.ezmorph.bean.BeanMorpher");
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                throw new NoClassDefFoundError(classnotfoundexception.getMessage());
            }
            class1 = class2;
            class$0 = class1;
        }
        log = LogFactory.getLog(class1);
    }
}
