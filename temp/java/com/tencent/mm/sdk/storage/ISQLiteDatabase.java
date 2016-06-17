// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.storage;

import android.content.ContentValues;
import android.database.Cursor;

public interface ISQLiteDatabase
{

    public abstract int delete(String s, String s1, String as[]);

    public abstract boolean execSQL(String s, String s1);

    public abstract long insert(String s, String s1, ContentValues contentvalues);

    public abstract Cursor query(String s, String as[], String s1, String as1[], String s2, String s3, String s4);

    public abstract Cursor rawQuery(String s, String as[]);

    public abstract long replace(String s, String s1, ContentValues contentvalues);

    public abstract int update(String s, ContentValues contentvalues, String s1, String as[]);
}
