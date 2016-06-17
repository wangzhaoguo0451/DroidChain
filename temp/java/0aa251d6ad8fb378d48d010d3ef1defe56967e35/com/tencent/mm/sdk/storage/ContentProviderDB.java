// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.storage;

import android.content.*;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.tencent.mm.sdk.platformtools.Log;

// Referenced classes of package com.tencent.mm.sdk.storage:
//            ISQLiteDatabase

public abstract class ContentProviderDB
    implements ISQLiteDatabase
{

    public ContentProviderDB(Context context)
    {
        q = context;
    }

    public int delete(String s, String s1, String as[])
    {
        Uri uri = getUriFromTable(s);
        int i;
        if(uri == null)
        {
            Log.e("MicroMsg.SDK.MContentProviderDB", (new StringBuilder("get uri from table failed, table=")).append(s).toString());
            i = 0;
        } else
        {
            i = q.getContentResolver().delete(uri, s1, as);
        }
        return i;
    }

    public boolean execSQL(String s, String s1)
    {
        Log.e("MicroMsg.SDK.MContentProviderDB", (new StringBuilder("do not support, execSQL sql=")).append(s1).toString());
        return false;
    }

    public abstract Uri getUriFromTable(String s);

    public long insert(String s, String s1, ContentValues contentvalues)
    {
        Uri uri = getUriFromTable(s);
        long l;
        if(uri == null)
        {
            Log.e("MicroMsg.SDK.MContentProviderDB", (new StringBuilder("get uri from table failed, table=")).append(s).toString());
            l = -1L;
        } else
        {
            l = ContentUris.parseId(q.getContentResolver().insert(uri, contentvalues));
        }
        return l;
    }

    public Cursor query(String s, String as[], String s1, String as1[], String s2, String s3, String s4)
    {
        Uri uri = getUriFromTable(s);
        if(uri != null) goto _L2; else goto _L1
_L1:
        Object obj;
        Log.e("MicroMsg.SDK.MContentProviderDB", (new StringBuilder("get uri from table failed, table=")).append(s).toString());
        obj = new MatrixCursor(as);
_L4:
        return ((Cursor) (obj));
_L2:
        obj = q.getContentResolver().query(uri, as, s1, as1, s4);
        if(obj == null)
            obj = new MatrixCursor(as);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public Cursor rawQuery(String s, String as[])
    {
        Log.e("MicroMsg.SDK.MContentProviderDB", (new StringBuilder("do not support, rawQuery sql=")).append(s).toString());
        return null;
    }

    public long replace(String s, String s1, ContentValues contentvalues)
    {
        Log.e("MicroMsg.SDK.MContentProviderDB", (new StringBuilder("do not support, replace table=")).append(s).toString());
        return 0L;
    }

    public int update(String s, ContentValues contentvalues, String s1, String as[])
    {
        Uri uri = getUriFromTable(s);
        int i;
        if(uri == null)
        {
            Log.e("MicroMsg.SDK.MContentProviderDB", (new StringBuilder("get uri from table failed, table=")).append(s).toString());
            i = 0;
        } else
        {
            i = q.getContentResolver().update(uri, contentvalues, s1, as);
        }
        return i;
    }

    private final Context q;
}
