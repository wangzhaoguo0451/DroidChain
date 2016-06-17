// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.database;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class WxDBHelper extends SQLiteOpenHelper
{

    public WxDBHelper(Context context)
    {
        super(context, "weixin.db", null, 1);
    }

    /**
     * @deprecated Method getInstance is deprecated
     */

    public static WxDBHelper getInstance(Context context)
    {
        com/weixin/wxjx/database/WxDBHelper;
        JVM INSTR monitorenter ;
        WxDBHelper wxdbhelper;
        if(wxDBHelper == null)
            wxDBHelper = new WxDBHelper(context);
        wxdbhelper = wxDBHelper;
        com/weixin/wxjx/database/WxDBHelper;
        JVM INSTR monitorexit ;
        return wxdbhelper;
        Exception exception;
        exception;
        throw exception;
    }

    public void delRecordInSessions(long l)
    {
        SQLiteDatabase sqlitedatabase = getWritableDatabase();
        String as[] = new String[1];
        as[0] = String.valueOf(l);
        sqlitedatabase.delete("sessions", "thread_id =? ", as);
        sqlitedatabase.close();
    }

    public boolean delRecordInThreads(long l)
    {
        SQLiteDatabase sqlitedatabase = getWritableDatabase();
        String as[] = new String[1];
        as[0] = String.valueOf(l);
        boolean flag;
        if(sqlitedatabase.delete("threads", "_id =? ", as) > 0)
            flag = true;
        else
            flag = false;
        sqlitedatabase.close();
        return flag;
    }

    public long insert(ContentValues contentvalues, String s)
    {
        SQLiteDatabase sqlitedatabase = getWritableDatabase();
        long l = sqlitedatabase.insert(s, null, contentvalues);
        sqlitedatabase.close();
        return l;
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE threads (_id INTEGER PRIMARY KEY AUTOINCREMENT,create_date INTEGER,is_frome INTEGER,theme TEXT );");
        sqlitedatabase.execSQL("CREATE TABLE sessions (_id INTEGER PRIMARY KEY AUTOINCREMENT,thread_id INTEGER,content TEXT,is_frome INTEGER,create_time INTEGER );");
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
    }

    public Cursor queryAll(String s, String s1, String as[], String s2)
    {
        return getWritableDatabase().query(s, null, s1, as, null, null, s2);
    }

    private static final String DB_NAME = "weixin.db";
    private static final int DB_VERSION = 1;
    private static WxDBHelper wxDBHelper = null;

}
