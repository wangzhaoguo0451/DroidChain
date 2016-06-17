// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.storage;

import android.content.ContentValues;
import android.database.Cursor;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.tencent.mm.sdk.storage:
//            MAutoDBItem

class CursorFieldHelper
{
    public static interface IGetMethod
    {

        public abstract void invoke(Field field, Object obj, ContentValues contentvalues);
    }

    public static interface ISetMethod
    {

        public abstract void invoke(Field field, Object obj, Cursor cursor, int i);
    }


    CursorFieldHelper()
    {
    }

    public static IGetMethod getter(Class class1)
    {
        return (IGetMethod)bQ.get(class1);
    }

    public static void keep_getBlob(Field field, Object obj, ContentValues contentvalues)
    {
        contentvalues.put(MAutoDBItem.getColName(field), (byte[])field.get(obj));
_L1:
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L1
    }

    public static void keep_getBoolean(Field field, Object obj, ContentValues contentvalues)
    {
        String s = MAutoDBItem.getColName(field);
        if(!field.getBoolean(obj)) goto _L2; else goto _L1
_L1:
        int i = 1;
_L3:
        contentvalues.put(s, Integer.valueOf(i));
_L4:
        return;
_L2:
        i = 0;
          goto _L3
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L4
    }

    public static void keep_getDouble(Field field, Object obj, ContentValues contentvalues)
    {
        try
        {
            if(!field.getType().equals(Double.TYPE))
                contentvalues.put(MAutoDBItem.getColName(field), (Double)field.get(obj));
            else
                contentvalues.put(MAutoDBItem.getColName(field), Double.valueOf(field.getDouble(obj)));
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public static void keep_getFloat(Field field, Object obj, ContentValues contentvalues)
    {
        try
        {
            if(!field.getType().equals(Float.TYPE))
                contentvalues.put(MAutoDBItem.getColName(field), (Float)field.get(obj));
            else
                contentvalues.put(MAutoDBItem.getColName(field), Float.valueOf(field.getFloat(obj)));
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public static void keep_getInt(Field field, Object obj, ContentValues contentvalues)
    {
        try
        {
            if(!field.getType().equals(Integer.TYPE))
                contentvalues.put(MAutoDBItem.getColName(field), (Integer)field.get(obj));
            else
                contentvalues.put(MAutoDBItem.getColName(field), Integer.valueOf(field.getInt(obj)));
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public static void keep_getLong(Field field, Object obj, ContentValues contentvalues)
    {
        try
        {
            if(!field.getType().equals(Long.TYPE))
                contentvalues.put(MAutoDBItem.getColName(field), (Long)field.get(obj));
            else
                contentvalues.put(MAutoDBItem.getColName(field), Long.valueOf(field.getLong(obj)));
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public static void keep_getShort(Field field, Object obj, ContentValues contentvalues)
    {
        contentvalues.put(MAutoDBItem.getColName(field), Short.valueOf(field.getShort(obj)));
_L1:
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L1
    }

    public static void keep_getString(Field field, Object obj, ContentValues contentvalues)
    {
        contentvalues.put(MAutoDBItem.getColName(field), (String)field.get(obj));
_L1:
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L1
    }

    public static void keep_setBlob(Field field, Object obj, Cursor cursor, int i)
    {
        field.set(obj, cursor.getBlob(i));
_L1:
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L1
    }

    public static void keep_setBoolean(Field field, Object obj, Cursor cursor, int i)
    {
        if(!field.getType().equals(Boolean.TYPE)) goto _L2; else goto _L1
_L1:
        boolean flag;
        if(cursor.getInt(i) == 0)
            break MISSING_BLOCK_LABEL_62;
        flag = true;
_L4:
        field.setBoolean(obj, flag);
          goto _L3
_L2:
        field.set(obj, Integer.valueOf(cursor.getInt(i)));
          goto _L3
        Exception exception;
        exception;
        exception.printStackTrace();
_L3:
        return;
        flag = false;
          goto _L4
    }

    public static void keep_setDouble(Field field, Object obj, Cursor cursor, int i)
    {
        try
        {
            if(field.getType().equals(Double.TYPE))
                field.setDouble(obj, cursor.getDouble(i));
            else
                field.set(obj, Double.valueOf(cursor.getDouble(i)));
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public static void keep_setFloat(Field field, Object obj, Cursor cursor, int i)
    {
        try
        {
            if(field.getType().equals(Float.TYPE))
                field.setFloat(obj, cursor.getFloat(i));
            else
                field.set(obj, Float.valueOf(cursor.getFloat(i)));
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public static void keep_setInt(Field field, Object obj, Cursor cursor, int i)
    {
        try
        {
            if(field.getType().equals(Integer.TYPE))
                field.setInt(obj, cursor.getInt(i));
            else
                field.set(obj, Integer.valueOf(cursor.getInt(i)));
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public static void keep_setLong(Field field, Object obj, Cursor cursor, int i)
    {
        try
        {
            if(field.getType().equals(Long.TYPE))
                field.setLong(obj, cursor.getLong(i));
            else
                field.set(obj, Long.valueOf(cursor.getLong(i)));
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public static void keep_setShort(Field field, Object obj, Cursor cursor, int i)
    {
        try
        {
            if(field.getType().equals(Short.TYPE))
                field.setShort(obj, cursor.getShort(i));
            else
                field.set(obj, Short.valueOf(cursor.getShort(i)));
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public static void keep_setString(Field field, Object obj, Cursor cursor, int i)
    {
        field.set(obj, cursor.getString(i));
_L1:
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L1
    }

    public static ISetMethod setter(Class class1)
    {
        return (ISetMethod)bP.get(class1);
    }

    public static String type(Class class1)
    {
        return (String)bR.get(class1);
    }

    private static final Map bP;
    private static final Map bQ;
    private static final Map bR;

    static 
    {
        bP = new HashMap();
        bQ = new HashMap();
        bR = new HashMap();
        bP.put([B, new _cls1());
        bP.put(Short.TYPE, new _cls2());
        bP.put(java/lang/Short, new _cls3());
        bP.put(Boolean.TYPE, new _cls4());
        bP.put(java/lang/Boolean, new _cls5());
        bP.put(Integer.TYPE, new _cls6());
        bP.put(java/lang/Integer, new _cls7());
        bP.put(Float.TYPE, new _cls8());
        bP.put(java/lang/Float, new _cls9());
        bP.put(Double.TYPE, new _cls10());
        bP.put(java/lang/Double, new _cls11());
        bP.put(Long.TYPE, new _cls12());
        bP.put(java/lang/Long, new _cls13());
        bP.put(java/lang/String, new _cls14());
        bQ.put([B, new _cls15());
        bQ.put(Short.TYPE, new _cls16());
        bQ.put(java/lang/Short, new _cls17());
        bQ.put(Boolean.TYPE, new _cls18());
        bQ.put(java/lang/Boolean, new _cls19());
        bQ.put(Integer.TYPE, new _cls20());
        bQ.put(java/lang/Integer, new _cls21());
        bQ.put(Float.TYPE, new _cls22());
        bQ.put(java/lang/Float, new _cls23());
        bQ.put(Double.TYPE, new _cls24());
        bQ.put(java/lang/Double, new _cls25());
        bQ.put(Long.TYPE, new _cls26());
        bQ.put(java/lang/Long, new _cls27());
        bQ.put(java/lang/String, new _cls28());
        bR.put([B, "BLOB");
        bR.put(Short.TYPE, "SHORT");
        bR.put(java/lang/Short, "SHORT");
        bR.put(Boolean.TYPE, "INTEGER");
        bR.put(java/lang/Boolean, "INTEGER");
        bR.put(Integer.TYPE, "INTEGER");
        bR.put(java/lang/Integer, "INTEGER");
        bR.put(Float.TYPE, "FLOAT");
        bR.put(java/lang/Float, "FLOAT");
        bR.put(Double.TYPE, "DOUBLE");
        bR.put(java/lang/Double, "DOUBLE");
        bR.put(Long.TYPE, "LONG");
        bR.put(java/lang/Long, "LONG");
        bR.put(java/lang/String, "TEXT");
_L1:
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
          goto _L1
    }

    private class _cls1
        implements ISetMethod
    {

        public final void invoke(Field field, Object obj, Cursor cursor, int i)
        {
            CursorFieldHelper.keep_setBlob(field, obj, cursor, i);
        }

        _cls1()
        {
        }
    }


    private class _cls2
        implements ISetMethod
    {

        public final void invoke(Field field, Object obj, Cursor cursor, int i)
        {
            CursorFieldHelper.keep_setShort(field, obj, cursor, i);
        }

        _cls2()
        {
        }
    }


    private class _cls3
        implements ISetMethod
    {

        public final void invoke(Field field, Object obj, Cursor cursor, int i)
        {
            CursorFieldHelper.keep_setShort(field, obj, cursor, i);
        }

        _cls3()
        {
        }
    }


    private class _cls4
        implements ISetMethod
    {

        public final void invoke(Field field, Object obj, Cursor cursor, int i)
        {
            CursorFieldHelper.keep_setBoolean(field, obj, cursor, i);
        }

        _cls4()
        {
        }
    }


    private class _cls5
        implements ISetMethod
    {

        public final void invoke(Field field, Object obj, Cursor cursor, int i)
        {
            CursorFieldHelper.keep_setBoolean(field, obj, cursor, i);
        }

        _cls5()
        {
        }
    }


    private class _cls6
        implements ISetMethod
    {

        public final void invoke(Field field, Object obj, Cursor cursor, int i)
        {
            CursorFieldHelper.keep_setInt(field, obj, cursor, i);
        }

        _cls6()
        {
        }
    }


    private class _cls7
        implements ISetMethod
    {

        public final void invoke(Field field, Object obj, Cursor cursor, int i)
        {
            CursorFieldHelper.keep_setInt(field, obj, cursor, i);
        }

        _cls7()
        {
        }
    }


    private class _cls8
        implements ISetMethod
    {

        public final void invoke(Field field, Object obj, Cursor cursor, int i)
        {
            CursorFieldHelper.keep_setFloat(field, obj, cursor, i);
        }

        _cls8()
        {
        }
    }


    private class _cls9
        implements ISetMethod
    {

        public final void invoke(Field field, Object obj, Cursor cursor, int i)
        {
            CursorFieldHelper.keep_setFloat(field, obj, cursor, i);
        }

        _cls9()
        {
        }
    }


    private class _cls10
        implements ISetMethod
    {

        public final void invoke(Field field, Object obj, Cursor cursor, int i)
        {
            CursorFieldHelper.keep_setDouble(field, obj, cursor, i);
        }

        _cls10()
        {
        }
    }


    private class _cls11
        implements ISetMethod
    {

        public final void invoke(Field field, Object obj, Cursor cursor, int i)
        {
            CursorFieldHelper.keep_setDouble(field, obj, cursor, i);
        }

        _cls11()
        {
        }
    }


    private class _cls12
        implements ISetMethod
    {

        public final void invoke(Field field, Object obj, Cursor cursor, int i)
        {
            CursorFieldHelper.keep_setLong(field, obj, cursor, i);
        }

        _cls12()
        {
        }
    }


    private class _cls13
        implements ISetMethod
    {

        public final void invoke(Field field, Object obj, Cursor cursor, int i)
        {
            CursorFieldHelper.keep_setLong(field, obj, cursor, i);
        }

        _cls13()
        {
        }
    }


    private class _cls14
        implements ISetMethod
    {

        public final void invoke(Field field, Object obj, Cursor cursor, int i)
        {
            CursorFieldHelper.keep_setString(field, obj, cursor, i);
        }

        _cls14()
        {
        }
    }


    private class _cls15
        implements IGetMethod
    {

        public final void invoke(Field field, Object obj, ContentValues contentvalues)
        {
            CursorFieldHelper.keep_getBlob(field, obj, contentvalues);
        }

        _cls15()
        {
        }
    }


    private class _cls16
        implements IGetMethod
    {

        public final void invoke(Field field, Object obj, ContentValues contentvalues)
        {
            CursorFieldHelper.keep_getShort(field, obj, contentvalues);
        }

        _cls16()
        {
        }
    }


    private class _cls17
        implements IGetMethod
    {

        public final void invoke(Field field, Object obj, ContentValues contentvalues)
        {
            CursorFieldHelper.keep_getShort(field, obj, contentvalues);
        }

        _cls17()
        {
        }
    }


    private class _cls18
        implements IGetMethod
    {

        public final void invoke(Field field, Object obj, ContentValues contentvalues)
        {
            CursorFieldHelper.keep_getBoolean(field, obj, contentvalues);
        }

        _cls18()
        {
        }
    }


    private class _cls19
        implements IGetMethod
    {

        public final void invoke(Field field, Object obj, ContentValues contentvalues)
        {
            CursorFieldHelper.keep_getBoolean(field, obj, contentvalues);
        }

        _cls19()
        {
        }
    }


    private class _cls20
        implements IGetMethod
    {

        public final void invoke(Field field, Object obj, ContentValues contentvalues)
        {
            CursorFieldHelper.keep_getInt(field, obj, contentvalues);
        }

        _cls20()
        {
        }
    }


    private class _cls21
        implements IGetMethod
    {

        public final void invoke(Field field, Object obj, ContentValues contentvalues)
        {
            CursorFieldHelper.keep_getInt(field, obj, contentvalues);
        }

        _cls21()
        {
        }
    }


    private class _cls22
        implements IGetMethod
    {

        public final void invoke(Field field, Object obj, ContentValues contentvalues)
        {
            CursorFieldHelper.keep_getFloat(field, obj, contentvalues);
        }

        _cls22()
        {
        }
    }


    private class _cls23
        implements IGetMethod
    {

        public final void invoke(Field field, Object obj, ContentValues contentvalues)
        {
            CursorFieldHelper.keep_getFloat(field, obj, contentvalues);
        }

        _cls23()
        {
        }
    }


    private class _cls24
        implements IGetMethod
    {

        public final void invoke(Field field, Object obj, ContentValues contentvalues)
        {
            CursorFieldHelper.keep_getDouble(field, obj, contentvalues);
        }

        _cls24()
        {
        }
    }


    private class _cls25
        implements IGetMethod
    {

        public final void invoke(Field field, Object obj, ContentValues contentvalues)
        {
            CursorFieldHelper.keep_getDouble(field, obj, contentvalues);
        }

        _cls25()
        {
        }
    }


    private class _cls26
        implements IGetMethod
    {

        public final void invoke(Field field, Object obj, ContentValues contentvalues)
        {
            CursorFieldHelper.keep_getLong(field, obj, contentvalues);
        }

        _cls26()
        {
        }
    }


    private class _cls27
        implements IGetMethod
    {

        public final void invoke(Field field, Object obj, ContentValues contentvalues)
        {
            CursorFieldHelper.keep_getLong(field, obj, contentvalues);
        }

        _cls27()
        {
        }
    }


    private class _cls28
        implements IGetMethod
    {

        public final void invoke(Field field, Object obj, ContentValues contentvalues)
        {
            CursorFieldHelper.keep_getString(field, obj, contentvalues);
        }

        _cls28()
        {
        }
    }

}
