// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.platformtools.Log;
import com.tencent.mm.sdk.platformtools.Util;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.sdk.storage:
//            MStorage, ISQLiteDatabase, IAutoDBItem

public abstract class MAutoStorage extends MStorage
{

    public MAutoStorage(ISQLiteDatabase isqlitedatabase, IAutoDBItem.MAutoDBInfo mautodbinfo, String s, String as[])
    {
        int i = 0;
        super();
        bS = isqlitedatabase;
        bT = mautodbinfo;
        IAutoDBItem.MAutoDBInfo mautodbinfo1 = bT;
        String s1;
        List list;
        if(Util.isNullOrNil(bT.primaryKey))
            s1 = "rowid";
        else
            s1 = bT.primaryKey;
        mautodbinfo1.primaryKey = s1;
        bU = s;
        list = getUpdateSQLs(bT, getTableName(), bS);
        for(int j = 0; j < list.size(); j++)
            bS.execSQL(bU, (String)list.get(j));

        if(as != null && as.length > 0)
            for(; i < as.length; i++)
                bS.execSQL(bU, as[i]);

    }

    private static transient StringBuilder a(ContentValues contentvalues, String as[])
    {
        StringBuilder stringbuilder;
        int i;
        int j;
        stringbuilder = new StringBuilder();
        i = as.length;
        j = 0;
_L3:
        String s;
        if(j >= i)
            break MISSING_BLOCK_LABEL_70;
        s = as[j];
        stringbuilder.append((new StringBuilder()).append(s).append(" = ? AND ").toString());
        if(contentvalues.get(s) != null) goto _L2; else goto _L1
_L1:
        stringbuilder = null;
_L4:
        return stringbuilder;
_L2:
        j++;
          goto _L3
        stringbuilder.append(" 1=1");
          goto _L4
    }

    private boolean a(ContentValues contentvalues)
    {
        ISQLiteDatabase isqlitedatabase = bS;
        String s = getTableName();
        String as[] = bT.columns;
        String s1 = (new StringBuilder()).append(bT.primaryKey).append(" = ?").toString();
        String as1[] = new String[1];
        as1[0] = Util.nullAsNil(contentvalues.getAsString(bT.primaryKey));
        Cursor cursor = isqlitedatabase.query(s, as, s1, as1, null, null, null);
        boolean flag = IAutoDBItem.checkIOEqual(contentvalues, cursor);
        cursor.close();
        return flag;
    }

    private static String[] a(String as[], ContentValues contentvalues)
    {
        String as1[] = new String[as.length];
        for(int i = 0; i < as1.length; i++)
            as1[i] = Util.nullAsNil(contentvalues.getAsString(as[i]));

        return as1;
    }

    private void f(String s)
    {
        Log.d("MicroMsg.SDK.MAutoStorage", (new StringBuilder()).append(getTableName()).append(":").append(s).toString());
    }

    private void g(String s)
    {
        Log.e("MicroMsg.SDK.MAutoStorage", (new StringBuilder()).append(getTableName()).append(":").append(s).toString());
    }

    public static String getCreateSQLs(IAutoDBItem.MAutoDBInfo mautodbinfo, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append((new StringBuilder("CREATE TABLE IF NOT EXISTS ")).append(s).append(" ( ").toString());
        stringbuilder.append(mautodbinfo.sql);
        stringbuilder.append(");");
        return stringbuilder.toString();
    }

    public static List getUpdateSQLs(IAutoDBItem.MAutoDBInfo mautodbinfo, String s, ISQLiteDatabase isqlitedatabase)
    {
        LinkedList linkedlist = new LinkedList();
        HashMap hashmap = new HashMap();
        Cursor cursor = isqlitedatabase.rawQuery((new StringBuilder("PRAGMA table_info( ")).append(s).append(" )").toString(), new String[0]);
        LinkedList linkedlist1;
        if(cursor == null)
        {
            linkedlist1 = linkedlist;
        } else
        {
            for(; cursor.moveToNext(); hashmap.put(cursor.getString(cursor.getColumnIndex("name")), cursor.getString(cursor.getColumnIndex("type"))));
            cursor.close();
            Iterator iterator = mautodbinfo.colsMap.entrySet().iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                String s1 = (String)entry.getValue();
                String s2 = (String)entry.getKey();
                if(s1 != null && s1.length() > 0)
                {
                    String s3 = (String)hashmap.get(s2);
                    if(s3 == null)
                    {
                        linkedlist.add((new StringBuilder("ALTER TABLE ")).append(s).append(" ADD COLUMN ").append(s2).append(" ").append(s1).append(";").toString());
                        hashmap.remove(s2);
                    } else
                    if(!s3.equalsIgnoreCase(s1))
                    {
                        Log.e("MicroMsg.SDK.MAutoStorage", (new StringBuilder("conflicting alter table on column: ")).append(s2).append(", ").append(s3).append("<o-n>").append(s1).toString());
                        hashmap.remove(s2);
                    }
                }
            } while(true);
            linkedlist1 = linkedlist;
        }
        return linkedlist1;
    }

    public boolean delete(long l)
    {
        boolean flag = true;
        ISQLiteDatabase isqlitedatabase = bS;
        String s = getTableName();
        String as[] = new String[flag];
        as[0] = String.valueOf(l);
        if(isqlitedatabase.delete(s, "rowid = ?", as) <= 0)
            flag = false;
        if(flag)
            notify();
        return flag;
    }

    public transient boolean delete(IAutoDBItem iautodbitem, String as[])
    {
        boolean flag;
        ContentValues contentvalues;
        flag = false;
        contentvalues = iautodbitem.convertTo();
        if(contentvalues != null && contentvalues.size() > 0) goto _L2; else goto _L1
_L1:
        g("delete failed, value.size <= 0");
_L4:
        return flag;
_L2:
        if(as == null || as.length <= 0)
        {
            f("delete with primary key");
            ISQLiteDatabase isqlitedatabase = bS;
            String s = getTableName();
            String s1 = (new StringBuilder()).append(bT.primaryKey).append(" = ?").toString();
            String as1[] = new String[1];
            as1[flag] = Util.nullAsNil(contentvalues.getAsString(bT.primaryKey));
            if(isqlitedatabase.delete(s, s1, as1) > 0)
                flag = true;
            if(flag)
                doNotify();
        } else
        {
            StringBuilder stringbuilder = a(contentvalues, as);
            if(stringbuilder == null)
                g("delete failed, check keys failed");
            else
            if(bS.delete(getTableName(), stringbuilder.toString(), a(as, contentvalues)) > 0)
            {
                doNotify(bT.primaryKey);
                flag = true;
            } else
            {
                g("delete failed");
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public boolean get(long l, IAutoDBItem iautodbitem)
    {
        ISQLiteDatabase isqlitedatabase = bS;
        String s = getTableName();
        String as[] = bT.columns;
        String as1[] = new String[1];
        as1[0] = String.valueOf(l);
        Cursor cursor = isqlitedatabase.query(s, as, "rowid = ?", as1, null, null, null);
        boolean flag;
        if(cursor.moveToFirst())
        {
            iautodbitem.convertFrom(cursor);
            cursor.close();
            flag = true;
        } else
        {
            cursor.close();
            flag = false;
        }
        return flag;
    }

    public transient boolean get(IAutoDBItem iautodbitem, String as[])
    {
        ContentValues contentvalues = iautodbitem.convertTo();
        boolean flag;
        if(contentvalues == null || contentvalues.size() <= 0)
        {
            g("get failed, value.size <= 0");
            flag = false;
        } else
        if(as == null || as.length <= 0)
        {
            f("get with primary key");
            ISQLiteDatabase isqlitedatabase = bS;
            String s = getTableName();
            String as1[] = bT.columns;
            String s1 = (new StringBuilder()).append(bT.primaryKey).append(" = ?").toString();
            String as2[] = new String[1];
            as2[0] = Util.nullAsNil(contentvalues.getAsString(bT.primaryKey));
            Cursor cursor = isqlitedatabase.query(s, as1, s1, as2, null, null, null);
            if(cursor.moveToFirst())
            {
                iautodbitem.convertFrom(cursor);
                cursor.close();
                flag = true;
            } else
            {
                cursor.close();
                flag = false;
            }
        } else
        {
            StringBuilder stringbuilder = a(contentvalues, as);
            if(stringbuilder == null)
            {
                g("get failed, check keys failed");
                flag = false;
            } else
            {
                Cursor cursor1 = bS.query(getTableName(), bT.columns, stringbuilder.toString(), a(as, contentvalues), null, null, null);
                if(cursor1.moveToFirst())
                {
                    iautodbitem.convertFrom(cursor1);
                    cursor1.close();
                    flag = true;
                } else
                {
                    cursor1.close();
                    f("get failed, not found");
                    flag = false;
                }
            }
        }
        return flag;
    }

    public Cursor getAll()
    {
        return bS.query(getTableName(), bT.columns, null, null, null, null, null);
    }

    public int getCount()
    {
        int i = 0;
        Cursor cursor = rawQuery((new StringBuilder("select count(*) from ")).append(getTableName()).toString(), new String[0]);
        if(cursor != null)
        {
            cursor.moveToFirst();
            i = cursor.getInt(0);
            cursor.close();
        }
        return i;
    }

    public String getPrimaryKey()
    {
        return bT.primaryKey;
    }

    public String getTableName()
    {
        return bU;
    }

    public boolean insert(IAutoDBItem iautodbitem)
    {
        boolean flag = false;
        ContentValues contentvalues = iautodbitem.convertTo();
        if(contentvalues == null || contentvalues.size() <= 0)
        {
            g("insert failed, value.size <= 0");
        } else
        {
            iautodbitem.systemRowid = bS.insert(getTableName(), bT.primaryKey, contentvalues);
            if(iautodbitem.systemRowid <= 0L)
            {
                g("insert failed");
            } else
            {
                contentvalues.put("rowid", Long.valueOf(iautodbitem.systemRowid));
                doNotify(contentvalues.getAsString(bT.primaryKey));
                flag = true;
            }
        }
        return flag;
    }

    public transient Cursor rawQuery(String s, String as[])
    {
        return bS.rawQuery(s, as);
    }

    public boolean replace(IAutoDBItem iautodbitem)
    {
        boolean flag;
        ContentValues contentvalues;
        flag = true;
        boolean flag1;
        int i;
        int j;
        if(!Util.isNullOrNil(bT.primaryKey))
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue("replace primaryKey == null", flag1);
        contentvalues = iautodbitem.convertTo();
        if(contentvalues == null) goto _L2; else goto _L1
_L1:
        i = contentvalues.size();
        j = iautodbitem.getDBInfo().fields.length;
        int k;
        if(contentvalues.containsKey("rowid"))
            k = ((flag) ? 1 : 0);
        else
            k = 0;
        if(i == k + j) goto _L3; else goto _L2
_L2:
        g("replace failed, cv.size() != item.fields().length");
        flag = false;
_L5:
        return flag;
_L3:
        if(a(contentvalues))
            f("no need replace , fields no change");
        else
        if(bS.replace(getTableName(), bT.primaryKey, contentvalues) > 0L)
        {
            doNotify(bT.primaryKey);
        } else
        {
            g("replace failed");
            flag = false;
        }
        if(true) goto _L5; else goto _L4
_L4:
    }

    public boolean update(long l, IAutoDBItem iautodbitem)
    {
        ContentValues contentvalues = iautodbitem.convertTo();
        if(contentvalues != null && contentvalues.size() > 0) goto _L2; else goto _L1
_L1:
        boolean flag;
        g("update failed, value.size <= 0");
        flag = false;
_L4:
        return flag;
_L2:
        ISQLiteDatabase isqlitedatabase = bS;
        String s = getTableName();
        String as[] = bT.columns;
        String as1[] = new String[1];
        as1[0] = String.valueOf(l);
        Cursor cursor = isqlitedatabase.query(s, as, "rowid = ?", as1, null, null, null);
        if(IAutoDBItem.checkIOEqual(contentvalues, cursor))
        {
            cursor.close();
            f("no need replace , fields no change");
            flag = true;
        } else
        {
            cursor.close();
            ISQLiteDatabase isqlitedatabase1 = bS;
            String s1 = getTableName();
            String as2[] = new String[1];
            as2[0] = String.valueOf(l);
            if(isqlitedatabase1.update(s1, contentvalues, "rowid = ?", as2) > 0)
                flag = true;
            else
                flag = false;
            if(flag)
                doNotify();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public transient boolean update(IAutoDBItem iautodbitem, String as[])
    {
        boolean flag;
        ContentValues contentvalues;
        flag = false;
        contentvalues = iautodbitem.convertTo();
        if(contentvalues != null && contentvalues.size() > 0) goto _L2; else goto _L1
_L1:
        g("update failed, value.size <= 0");
_L4:
        return flag;
_L2:
        if(as == null || as.length <= 0)
        {
            f("update with primary key");
            if(a(contentvalues))
            {
                f("no need replace , fields no change");
                flag = true;
            } else
            {
                ISQLiteDatabase isqlitedatabase = bS;
                String s = getTableName();
                String s1 = (new StringBuilder()).append(bT.primaryKey).append(" = ?").toString();
                String as1[] = new String[1];
                as1[flag] = Util.nullAsNil(contentvalues.getAsString(bT.primaryKey));
                if(isqlitedatabase.update(s, contentvalues, s1, as1) > 0)
                    flag = true;
                if(flag)
                    doNotify();
            }
        } else
        {
            StringBuilder stringbuilder = a(contentvalues, as);
            if(stringbuilder == null)
                g("update failed, check keys failed");
            else
            if(bS.update(getTableName(), contentvalues, stringbuilder.toString(), a(as, contentvalues)) > 0)
            {
                doNotify(bT.primaryKey);
                flag = true;
            } else
            {
                g("update failed");
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private final ISQLiteDatabase bS;
    private final IAutoDBItem.MAutoDBInfo bT;
    private final String bU;
}
