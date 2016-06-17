// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.database;

import android.content.ContentValues;
import android.provider.BaseColumns;

public class WxDBUtil
{
    public static final class SessionsColumns
        implements BaseColumns
    {

        public static final String CONTENT = "content";
        public static final String CREATE_TIME = "create_time";
        public static final String IS_FROME = "is_frome";
        public static final String THREAD_ID = "thread_id";

        private SessionsColumns()
        {
        }
    }

    public static final class ThreadsColumns
        implements BaseColumns
    {

        public static final String CREATE_DATE = "create_date";
        public static final String IS_FROME = "is_frome";
        public static final String THEME = "theme";

        private ThreadsColumns()
        {
        }
    }


    public WxDBUtil()
    {
    }

    public ContentValues insertToSessions(long l, String s, int i)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("thread_id", Long.valueOf(l));
        contentvalues.put("content", s);
        contentvalues.put("is_frome", Integer.valueOf(i));
        contentvalues.put("create_time", Long.valueOf(System.currentTimeMillis()));
        return contentvalues;
    }

    public ContentValues insertToThrads(String s)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("create_date", Long.valueOf(System.currentTimeMillis()));
        contentvalues.put("theme", s);
        return contentvalues;
    }

    public static final int RECEIVER = 1;
    public static final int SEND = 0;
    public static final String SESSIONS_TABLE_NAME = "sessions";
    public static final String THREADS_TABLE_NAME = "threads";
    public static final String create_table_sessions = "CREATE TABLE sessions (_id INTEGER PRIMARY KEY AUTOINCREMENT,thread_id INTEGER,content TEXT,is_frome INTEGER,create_time INTEGER );";
    public static final String create_table_threads = "CREATE TABLE threads (_id INTEGER PRIMARY KEY AUTOINCREMENT,create_date INTEGER,is_frome INTEGER,theme TEXT );";
}
