// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.platformtools.Log;
import com.tencent.mm.sdk.platformtools.Util;
import java.lang.reflect.Field;
import java.util.HashMap;

// Referenced classes of package com.tencent.mm.sdk.storage:
//            IAutoDBItem, CursorFieldHelper

public abstract class MAutoDBItem extends IAutoDBItem
{

    public MAutoDBItem()
    {
    }

    public void convertFrom(Cursor cursor)
    {
        int i;
        String as[];
        i = 0;
        as = cursor.getColumnNames();
        if(as != null) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.SDK.MAutoDBItem", "convertFrom: get column names failed");
_L4:
        return;
_L2:
        HashMap hashmap = new HashMap();
        for(int j = 0; j < as.length; j++)
            hashmap.put(as[j], Integer.valueOf(j));

        Field afield[] = getDBInfo().fields;
        int k = afield.length;
        while(i < k) 
        {
            Field field = afield[i];
            String s = getColName(field);
            if(Util.isNullOrNil(s))
                continue;
            int i1 = Util.nullAs((Integer)hashmap.get(s), -1);
            if(i1 >= 0)
                try
                {
                    CursorFieldHelper.setter(field.getType()).invoke(field, this, cursor, i1);
                }
                catch(Exception exception)
                {
                    exception.printStackTrace();
                }
            i++;
        }
        int l = Util.nullAs((Integer)hashmap.get("rowid"), -1);
        if(l >= 0)
            systemRowid = cursor.getLong(l);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public ContentValues convertTo()
    {
        ContentValues contentvalues = new ContentValues();
        Field afield[] = getDBInfo().fields;
        int i = afield.length;
        int j = 0;
        while(j < i) 
        {
            Field field = afield[j];
            try
            {
                CursorFieldHelper.getter(field.getType()).invoke(field, this, contentvalues);
            }
            catch(Exception exception)
            {
                exception.printStackTrace();
            }
            j++;
        }
        if(systemRowid > 0L)
            contentvalues.put("rowid", Long.valueOf(systemRowid));
        return contentvalues;
    }
}
