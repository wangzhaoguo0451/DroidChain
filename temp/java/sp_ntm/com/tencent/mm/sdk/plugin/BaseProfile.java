// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.plugin;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.storage.IAutoDBItem;
import java.lang.reflect.Field;
import java.util.Map;

public abstract class BaseProfile extends IAutoDBItem
{

    public BaseProfile()
    {
    }

    public static com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo initAutoDBInfo(Class class1)
    {
        com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo mautodbinfo = new com.tencent.mm.sdk.storage.IAutoDBItem.MAutoDBInfo();
        mautodbinfo.fields = new Field[11];
        mautodbinfo.columns = new String[12];
        StringBuilder stringbuilder = new StringBuilder();
        mautodbinfo.columns[0] = "username";
        mautodbinfo.colsMap.put("username", "TEXT");
        stringbuilder.append(" username TEXT");
        stringbuilder.append(", ");
        mautodbinfo.columns[1] = "bindqq";
        mautodbinfo.colsMap.put("bindqq", "LONG");
        stringbuilder.append(" bindqq LONG");
        stringbuilder.append(", ");
        mautodbinfo.columns[2] = "bindmobile";
        mautodbinfo.colsMap.put("bindmobile", "TEXT");
        stringbuilder.append(" bindmobile TEXT");
        stringbuilder.append(", ");
        mautodbinfo.columns[3] = "bindemail";
        mautodbinfo.colsMap.put("bindemail", "TEXT");
        stringbuilder.append(" bindemail TEXT");
        stringbuilder.append(", ");
        mautodbinfo.columns[4] = "alias";
        mautodbinfo.colsMap.put("alias", "TEXT");
        stringbuilder.append(" alias TEXT");
        stringbuilder.append(", ");
        mautodbinfo.columns[5] = "nickname";
        mautodbinfo.colsMap.put("nickname", "TEXT");
        stringbuilder.append(" nickname TEXT");
        stringbuilder.append(", ");
        mautodbinfo.columns[6] = "signature";
        mautodbinfo.colsMap.put("signature", "TEXT");
        stringbuilder.append(" signature TEXT");
        stringbuilder.append(", ");
        mautodbinfo.columns[7] = "province";
        mautodbinfo.colsMap.put("province", "TEXT");
        stringbuilder.append(" province TEXT");
        stringbuilder.append(", ");
        mautodbinfo.columns[8] = "city";
        mautodbinfo.colsMap.put("city", "TEXT");
        stringbuilder.append(" city TEXT");
        stringbuilder.append(", ");
        mautodbinfo.columns[9] = "weibo";
        mautodbinfo.colsMap.put("weibo", "TEXT");
        stringbuilder.append(" weibo TEXT");
        stringbuilder.append(", ");
        mautodbinfo.columns[10] = "avatar";
        mautodbinfo.colsMap.put("avatar", "TEXT");
        stringbuilder.append(" avatar TEXT");
        mautodbinfo.columns[11] = "rowid";
        mautodbinfo.sql = stringbuilder.toString();
        return mautodbinfo;
    }

    public void convertFrom(Cursor cursor)
    {
        int i = cursor.getColumnIndex("username");
        if(i >= 0)
            field_username = cursor.getString(i);
        int j = cursor.getColumnIndex("bindqq");
        if(j >= 0)
            field_bindqq = cursor.getLong(j);
        int k = cursor.getColumnIndex("bindmobile");
        if(k >= 0)
            field_bindmobile = cursor.getString(k);
        int l = cursor.getColumnIndex("bindemail");
        if(l >= 0)
            field_bindemail = cursor.getString(l);
        int i1 = cursor.getColumnIndex("alias");
        if(i1 >= 0)
            field_alias = cursor.getString(i1);
        int j1 = cursor.getColumnIndex("nickname");
        if(j1 >= 0)
            field_nickname = cursor.getString(j1);
        int k1 = cursor.getColumnIndex("signature");
        if(k1 >= 0)
            field_signature = cursor.getString(k1);
        int l1 = cursor.getColumnIndex("province");
        if(l1 >= 0)
            field_province = cursor.getString(l1);
        int i2 = cursor.getColumnIndex("city");
        if(i2 >= 0)
            field_city = cursor.getString(i2);
        int j2 = cursor.getColumnIndex("weibo");
        if(j2 >= 0)
            field_weibo = cursor.getString(j2);
        int k2 = cursor.getColumnIndex("avatar");
        if(k2 >= 0)
            field_avatar = cursor.getString(k2);
        int l2 = cursor.getColumnIndex("rowid");
        if(l2 >= 0)
            systemRowid = cursor.getLong(l2);
    }

    public ContentValues convertTo()
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("username", field_username);
        contentvalues.put("bindqq", Long.valueOf(field_bindqq));
        contentvalues.put("bindmobile", field_bindmobile);
        contentvalues.put("bindemail", field_bindemail);
        contentvalues.put("alias", field_alias);
        contentvalues.put("nickname", field_nickname);
        contentvalues.put("signature", field_signature);
        contentvalues.put("province", field_province);
        contentvalues.put("city", field_city);
        contentvalues.put("weibo", field_weibo);
        contentvalues.put("avatar", field_avatar);
        if(systemRowid > 0L)
            contentvalues.put("rowid", Long.valueOf(systemRowid));
        return contentvalues;
    }

    public void reset()
    {
    }

    public static final String COL_ALIAS = "alias";
    public static final String COL_AVATAR = "avatar";
    public static final String COL_BINDEMAIL = "bindemail";
    public static final String COL_BINDMOBILE = "bindmobile";
    public static final String COL_BINDQQ = "bindqq";
    public static final String COL_CITY = "city";
    public static final String COL_NICKNAME = "nickname";
    public static final String COL_PROVINCE = "province";
    public static final String COL_SIGNATURE = "signature";
    public static final String COL_USERNAME = "username";
    public static final String COL_WEIBO = "weibo";
    public static final String INDEX_CREATE[] = new String[0];
    public static final String TABLE_NAME = "Profile";
    public String field_alias;
    public String field_avatar;
    public String field_bindemail;
    public String field_bindmobile;
    public long field_bindqq;
    public String field_city;
    public String field_nickname;
    public String field_province;
    public String field_signature;
    public String field_username;
    public String field_weibo;

}
