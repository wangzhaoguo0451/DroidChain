// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk;

import android.content.*;
import android.database.Cursor;
import java.util.*;

public class MMSharedPreferences
    implements SharedPreferences
{
    private static class REditor
        implements android.content.SharedPreferences.Editor
    {

        public void apply()
        {
        }

        public android.content.SharedPreferences.Editor clear()
        {
            n = true;
            return this;
        }

        public boolean commit()
        {
            ContentValues contentvalues = new ContentValues();
            if(n)
            {
                i.delete(com.tencent.mm.sdk.plugin.MMPluginProviderConstants.SharedPref.CONTENT_URI, null, null);
                n = false;
            }
            ContentResolver contentresolver1;
            android.net.Uri uri1;
            String as1[];
            for(Iterator iterator = m.iterator(); iterator.hasNext(); contentresolver1.delete(uri1, "key = ?", as1))
            {
                String s = (String)iterator.next();
                contentresolver1 = i;
                uri1 = com.tencent.mm.sdk.plugin.MMPluginProviderConstants.SharedPref.CONTENT_URI;
                as1 = new String[1];
                as1[0] = s;
            }

            Iterator iterator1 = l.entrySet().iterator();
            do
            {
                if(!iterator1.hasNext())
                    break;
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
                if(com.tencent.mm.sdk.plugin.MMPluginProviderConstants.Resolver.unresolveObj(contentvalues, entry.getValue()))
                {
                    ContentResolver contentresolver = i;
                    android.net.Uri uri = com.tencent.mm.sdk.plugin.MMPluginProviderConstants.SharedPref.CONTENT_URI;
                    String as[] = new String[1];
                    as[0] = (String)entry.getKey();
                    contentresolver.update(uri, contentvalues, "key = ?", as);
                }
            } while(true);
            return true;
        }

        public android.content.SharedPreferences.Editor putBoolean(String s, boolean flag)
        {
            l.put(s, Boolean.valueOf(flag));
            m.remove(s);
            return this;
        }

        public android.content.SharedPreferences.Editor putFloat(String s, float f)
        {
            l.put(s, Float.valueOf(f));
            m.remove(s);
            return this;
        }

        public android.content.SharedPreferences.Editor putInt(String s, int i1)
        {
            l.put(s, Integer.valueOf(i1));
            m.remove(s);
            return this;
        }

        public android.content.SharedPreferences.Editor putLong(String s, long l1)
        {
            l.put(s, Long.valueOf(l1));
            m.remove(s);
            return this;
        }

        public android.content.SharedPreferences.Editor putString(String s, String s1)
        {
            l.put(s, s1);
            m.remove(s);
            return this;
        }

        public android.content.SharedPreferences.Editor putStringSet(String s, Set set)
        {
            return null;
        }

        public android.content.SharedPreferences.Editor remove(String s)
        {
            m.add(s);
            return this;
        }

        private ContentResolver i;
        private Map l;
        private Set m;
        private boolean n;

        public REditor(ContentResolver contentresolver)
        {
            l = new HashMap();
            m = new HashSet();
            n = false;
            i = contentresolver;
        }
    }


    public MMSharedPreferences(Context context)
    {
        String as[] = new String[4];
        as[0] = "_id";
        as[1] = "key";
        as[2] = "type";
        as[3] = "value";
        columns = as;
        k = null;
        i = context.getContentResolver();
    }

    private Object getValue(String s)
    {
        Object obj;
        Cursor cursor;
        int l;
        int i1;
        ContentResolver contentresolver = i;
        android.net.Uri uri = com.tencent.mm.sdk.plugin.MMPluginProviderConstants.SharedPref.CONTENT_URI;
        String as[] = columns;
        String as1[] = new String[1];
        as1[0] = s;
        cursor = contentresolver.query(uri, as, "key = ?", as1, null);
        if(cursor == null)
        {
            obj = null;
            break MISSING_BLOCK_LABEL_133;
        }
        l = cursor.getColumnIndex("type");
        i1 = cursor.getColumnIndex("value");
        if(!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        obj = com.tencent.mm.sdk.plugin.MMPluginProviderConstants.Resolver.resolveObj(cursor.getInt(l), cursor.getString(i1));
_L4:
        cursor.close();
        break MISSING_BLOCK_LABEL_133;
        Exception exception;
        exception;
        exception.printStackTrace();
        obj = null;
        break MISSING_BLOCK_LABEL_133;
_L2:
        obj = null;
        if(true) goto _L4; else goto _L3
_L3:
        return obj;
    }

    public boolean contains(String s)
    {
        boolean flag;
        if(getValue(s) != null)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public android.content.SharedPreferences.Editor edit()
    {
        if(k == null)
            k = new REditor(i);
        return k;
    }

    public Map getAll()
    {
        Exception exception;
        HashMap hashmap;
        Cursor cursor;
        cursor = i.query(com.tencent.mm.sdk.plugin.MMPluginProviderConstants.SharedPref.CONTENT_URI, columns, null, null, null);
        if(cursor == null)
        {
            hashmap = null;
            break MISSING_BLOCK_LABEL_132;
        }
        int l = cursor.getColumnIndex("key");
        int i1 = cursor.getColumnIndex("type");
        int j1 = cursor.getColumnIndex("value");
        Object obj;
        for(; cursor.moveToNext(); j.put(cursor.getString(l), obj))
            obj = com.tencent.mm.sdk.plugin.MMPluginProviderConstants.Resolver.resolveObj(cursor.getInt(i1), cursor.getString(j1));

        try
        {
            cursor.close();
            hashmap = j;
        }
        // Misplaced declaration of an exception variable
        catch(Exception exception)
        {
            exception.printStackTrace();
            hashmap = j;
        }
        return hashmap;
    }

    public boolean getBoolean(String s, boolean flag)
    {
        Object obj = getValue(s);
        if(obj != null && (obj instanceof Boolean))
            flag = ((Boolean)obj).booleanValue();
        return flag;
    }

    public float getFloat(String s, float f)
    {
        Object obj = getValue(s);
        if(obj != null && (obj instanceof Float))
            f = ((Float)obj).floatValue();
        return f;
    }

    public int getInt(String s, int l)
    {
        Object obj = getValue(s);
        if(obj != null && (obj instanceof Integer))
            l = ((Integer)obj).intValue();
        return l;
    }

    public long getLong(String s, long l)
    {
        Object obj = getValue(s);
        if(obj != null && (obj instanceof Long))
            l = ((Long)obj).longValue();
        return l;
    }

    public String getString(String s, String s1)
    {
        Object obj = getValue(s);
        String s2;
        if(obj != null && (obj instanceof String))
            s2 = (String)obj;
        else
            s2 = s1;
        return s2;
    }

    public Set getStringSet(String s, Set set)
    {
        return null;
    }

    public void registerOnSharedPreferenceChangeListener(android.content.SharedPreferences.OnSharedPreferenceChangeListener onsharedpreferencechangelistener)
    {
    }

    public void unregisterOnSharedPreferenceChangeListener(android.content.SharedPreferences.OnSharedPreferenceChangeListener onsharedpreferencechangelistener)
    {
    }

    private final String columns[];
    private final ContentResolver i;
    private final HashMap j = new HashMap();
    private REditor k;
}
