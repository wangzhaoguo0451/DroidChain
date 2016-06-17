// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import com.tencent.mm.sdk.platformtools.Log;
import com.tencent.mm.sdk.platformtools.Util;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.sdk.storage:
//            MDBItem, CursorFieldHelper, MAutoDBFieldAnnotation

public abstract class IAutoDBItem
    implements MDBItem
{
    public static class MAutoDBInfo
    {

        public Map colsMap;
        public String columns[];
        public Field fields[];
        public String primaryKey;
        public String sql;

        public MAutoDBInfo()
        {
            colsMap = new HashMap();
        }
    }


    public IAutoDBItem()
    {
        systemRowid = -1L;
    }

    private static String[] a(Field afield[])
    {
        String as[] = new String[1 + afield.length];
        int i = 0;
        while(i < afield.length) 
        {
            as[i] = getColName(afield[i]);
            String s = (new StringBuilder("getFullColumns failed:")).append(afield[i].getName()).toString();
            boolean flag;
            if(!Util.isNullOrNil(as[i]))
                flag = true;
            else
                flag = false;
            Assert.assertTrue(s, flag);
            i++;
        }
        as[afield.length] = "rowid";
        return as;
    }

    private static Map b(Field afield[])
    {
        HashMap hashmap = new HashMap();
        int i = 0;
        while(i < afield.length) 
        {
            Field field = afield[i];
            String s = CursorFieldHelper.type(field.getType());
            if(s == null)
            {
                Log.e("MicroMsg.SDK.IAutoDBItem", (new StringBuilder("failed identify on column: ")).append(field.getName()).append(", skipped").toString());
            } else
            {
                String s1 = getColName(field);
                if(!Util.isNullOrNil(s1))
                    hashmap.put(s1, s);
            }
            i++;
        }
        return hashmap;
    }

    private static String c(Field afield[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        while(i < afield.length) 
        {
            Field field = afield[i];
            String s = CursorFieldHelper.type(field.getType());
            if(s == null)
            {
                Log.e("MicroMsg.SDK.IAutoDBItem", (new StringBuilder("failed identify on column: ")).append(field.getName()).append(", skipped").toString());
            } else
            {
                String s1 = getColName(field);
                if(!Util.isNullOrNil(s1))
                {
                    String s2;
                    int j;
                    StringBuilder stringbuilder1;
                    String s3;
                    String s4;
                    if(field.isAnnotationPresent(com/tencent/mm/sdk/storage/MAutoDBFieldAnnotation))
                    {
                        s2 = (new StringBuilder(" default '")).append(((MAutoDBFieldAnnotation)field.getAnnotation(com/tencent/mm/sdk/storage/MAutoDBFieldAnnotation)).defValue()).append("' ").toString();
                        j = ((MAutoDBFieldAnnotation)field.getAnnotation(com/tencent/mm/sdk/storage/MAutoDBFieldAnnotation)).primaryKey();
                    } else
                    {
                        s2 = "";
                        j = 0;
                    }
                    stringbuilder1 = (new StringBuilder()).append(s1).append(" ").append(s).append(s2);
                    if(j == 1)
                        s3 = " PRIMARY KEY ";
                    else
                        s3 = "";
                    stringbuilder.append(stringbuilder1.append(s3).toString());
                    if(i == -1 + afield.length)
                        s4 = "";
                    else
                        s4 = ", ";
                    stringbuilder.append(s4);
                }
            }
            i++;
        }
        return stringbuilder.toString();
    }

    public static boolean checkIOEqual(ContentValues contentvalues, Cursor cursor)
    {
        boolean flag;
        if(contentvalues == null)
        {
            if(cursor == null)
                flag = true;
            else
                flag = false;
        } else
        if(cursor == null || cursor.getCount() != 1)
        {
            flag = false;
        } else
        {
label0:
            {
                cursor.moveToFirst();
                int i = cursor.getColumnCount();
                int j = contentvalues.size();
                if(contentvalues.containsKey("rowid"))
                    j--;
                if(cursor.getColumnIndex("rowid") != -1)
                    i--;
                if(j == i)
                    break label0;
                flag = false;
            }
        }
_L7:
        return flag;
        Iterator iterator = contentvalues.valueSet().iterator();
_L4:
        if(!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        String s = (String)((java.util.Map.Entry)iterator.next()).getKey();
        if(s.equals("rowid")) goto _L4; else goto _L3
_L3:
        int k = cursor.getColumnIndex(s);
        if(k != -1) goto _L6; else goto _L5
_L5:
        flag = false;
          goto _L7
_L6:
        if(!(contentvalues.get(s) instanceof byte[])) goto _L9; else goto _L8
_L8:
        byte abyte0[];
        byte abyte1[];
        abyte0 = (byte[])contentvalues.get(s);
        abyte1 = cursor.getBlob(k);
        if(abyte0 == null && abyte1 == null)
            break MISSING_BLOCK_LABEL_397;
          goto _L10
_L23:
        if(abyte0.length == abyte1.length) goto _L12; else goto _L11
_L11:
        boolean flag2 = false;
          goto _L13
_L24:
        int l;
        if(l >= abyte0.length)
            break MISSING_BLOCK_LABEL_397;
        if(abyte0[l] == abyte1[l]) goto _L15; else goto _L14
_L14:
        flag2 = false;
          goto _L13
_L9:
        if(cursor.getString(k) != null || contentvalues.get(s) == null) goto _L17; else goto _L16
_L16:
        flag = false;
          goto _L7
_L17:
        if(contentvalues.get(s) != null) goto _L19; else goto _L18
_L18:
        flag = false;
          goto _L7
_L19:
        boolean flag1 = contentvalues.get(s).toString().equals(cursor.getString(k));
        if(flag1) goto _L4; else goto _L20
_L20:
        flag = false;
          goto _L7
        Exception exception;
        exception;
        exception.printStackTrace();
        flag = false;
          goto _L7
_L2:
        flag = true;
          goto _L7
_L10:
        if(abyte0 != null || abyte1 == null)
            continue; /* Loop/switch isn't completed */
        flag2 = false;
_L13:
        if(flag2) goto _L4; else goto _L21
_L21:
        flag = false;
          goto _L7
        if(abyte0 == null || abyte1 != null) goto _L23; else goto _L22
_L22:
        flag2 = false;
          goto _L13
_L12:
        l = 0;
          goto _L24
_L15:
        l++;
          goto _L24
        flag2 = true;
          goto _L13
    }

    public static String getColName(Field field)
    {
        String s = null;
        if(field != null) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        String s1 = field.getName();
        if(s1 != null && s1.length() > 0)
            if(s1.startsWith("field_"))
                s = s1.substring(6);
            else
                s = s1;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static Cursor getCursorForProjection(ContentValues contentvalues, String as[])
    {
        Object aobj[] = new Object[as.length];
        for(int i = 0; i < aobj.length; i++)
            aobj[i] = contentvalues.get(as[i]);

        MatrixCursor matrixcursor = new MatrixCursor(as);
        matrixcursor.addRow(aobj);
        return matrixcursor;
    }

    public static Field[] getValidFields(Class class1)
    {
        return initAutoDBInfo(class1).fields;
    }

    public static MAutoDBInfo initAutoDBInfo(Class class1)
    {
        MAutoDBInfo mautodbinfo;
        LinkedList linkedlist;
        Field afield[];
        int i;
        int j;
        mautodbinfo = new MAutoDBInfo();
        linkedlist = new LinkedList();
        afield = class1.getDeclaredFields();
        i = afield.length;
        j = 0;
_L9:
        if(j >= i) goto _L2; else goto _L1
_L1:
        Field field;
        int k;
        String s;
        field = afield[j];
        k = field.getModifiers();
        s = field.getName();
        if(s == null || !Modifier.isPublic(k) || Modifier.isFinal(k)) goto _L4; else goto _L3
_L3:
        String s1;
        if(s.startsWith("field_"))
            s1 = s.substring(6);
        else
            s1 = s;
        if(!field.isAnnotationPresent(com/tencent/mm/sdk/storage/MAutoDBFieldAnnotation)) goto _L6; else goto _L5
_L5:
        if(((MAutoDBFieldAnnotation)field.getAnnotation(com/tencent/mm/sdk/storage/MAutoDBFieldAnnotation)).primaryKey() == 1)
            mautodbinfo.primaryKey = s1;
_L7:
        if(!Util.isNullOrNil(s1))
        {
            if(s1.equals("rowid"))
                Assert.assertTrue("field_rowid reserved by MAutoDBItem, change now!", false);
            linkedlist.add(field);
        }
_L4:
        j++;
        continue; /* Loop/switch isn't completed */
_L6:
        if(!s.startsWith("field_")) goto _L4; else goto _L7
_L2:
        mautodbinfo.fields = (Field[])linkedlist.toArray(new Field[0]);
        mautodbinfo.columns = a(mautodbinfo.fields);
        mautodbinfo.colsMap = b(mautodbinfo.fields);
        mautodbinfo.sql = c(mautodbinfo.fields);
        return mautodbinfo;
        if(true) goto _L9; else goto _L8
_L8:
    }

    public abstract void convertFrom(Cursor cursor);

    public abstract ContentValues convertTo();

    protected abstract MAutoDBInfo getDBInfo();

    public static final String COL_ROWID = "rowid";
    public static final String FIELD_PREFIX = "field_";
    public static final String SYSTEM_ROWID_FIELD = "rowid";
    public long systemRowid;
}
