// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.camera;

import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class FlashlightManager
{

    private FlashlightManager()
    {
    }

    static void disableFlashlight()
    {
        setFlashlight(false);
    }

    static void enableFlashlight()
    {
        setFlashlight(false);
    }

    private static Object getHardwareService()
    {
        Object obj;
        Class class1;
        obj = null;
        class1 = maybeForName("android.os.ServiceManager");
        if(class1 != null) goto _L2; else goto _L1
_L1:
        return obj;
_L2:
        Class aclass[] = new Class[1];
        aclass[0] = java/lang/String;
        Method method = maybeGetMethod(class1, "getService", aclass);
        if(method != null)
        {
            Object aobj[] = new Object[1];
            aobj[0] = "hardware";
            Object obj1 = invoke(method, null, aobj);
            if(obj1 != null)
            {
                Class class2 = maybeForName("android.os.IHardwareService$Stub");
                if(class2 != null)
                {
                    Class aclass1[] = new Class[1];
                    aclass1[0] = android/os/IBinder;
                    Method method1 = maybeGetMethod(class2, "asInterface", aclass1);
                    if(method1 != null)
                    {
                        Object aobj1[] = new Object[1];
                        aobj1[0] = obj1;
                        obj = invoke(method1, null, aobj1);
                    }
                }
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static Method getSetFlashEnabledMethod(Object obj)
    {
        Method method;
        if(obj == null)
        {
            method = null;
        } else
        {
            Class class1 = obj.getClass();
            Class aclass[] = new Class[1];
            aclass[0] = Boolean.TYPE;
            method = maybeGetMethod(class1, "setFlashlightEnabled", aclass);
        }
        return method;
    }

    private static transient Object invoke(Method method, Object obj, Object aobj[])
    {
        Object obj1 = null;
        Object obj2 = method.invoke(obj, aobj);
        obj1 = obj2;
_L2:
        return obj1;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        continue; /* Loop/switch isn't completed */
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        continue; /* Loop/switch isn't completed */
        RuntimeException runtimeexception;
        runtimeexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private static Class maybeForName(String s)
    {
        Class class1 = null;
        Class class2 = Class.forName(s);
        class1 = class2;
_L2:
        return class1;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        continue; /* Loop/switch isn't completed */
        RuntimeException runtimeexception;
        runtimeexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private static transient Method maybeGetMethod(Class class1, String s, Class aclass[])
    {
        Method method = null;
        Method method1 = class1.getMethod(s, aclass);
        method = method1;
_L2:
        return method;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        continue; /* Loop/switch isn't completed */
        RuntimeException runtimeexception;
        runtimeexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private static void setFlashlight(boolean flag)
    {
        if(iHardwareService != null)
        {
            Method method = setFlashEnabledMethod;
            Object obj = iHardwareService;
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.valueOf(flag);
            invoke(method, obj, aobj);
        }
    }

    private static final Object iHardwareService;
    private static final Method setFlashEnabledMethod;

    static 
    {
        iHardwareService = getHardwareService();
        setFlashEnabledMethod = getSetFlashEnabledMethod(iHardwareService);
    }
}
