// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import java.util.*;

public class SemiXml
{

    public SemiXml()
    {
    }

    public static Map decode(String s)
    {
        if(s != null && s.startsWith("~SEMI_XML~")) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L6:
        return ((Map) (obj));
_L2:
        String s1;
        int i;
        int j;
        s1 = s.substring(10);
        obj = new HashMap();
        i = 0;
        j = -4 + s1.length();
_L4:
        int k;
        if(i >= j)
            continue; /* Loop/switch isn't completed */
        k = i + 1;
        int l = s1.charAt(i) << 16;
        int i1 = k + 1;
        int j1 = i1 + (l + s1.charAt(k));
        String s2 = s1.substring(i1, j1);
        int k1 = j1 + 1;
        int l1 = s1.charAt(j1) << 16;
        int i2 = k1 + 1;
        i = i2 + (l1 + s1.charAt(k1));
        ((Map) (obj)).put(s2, s1.substring(i2, i));
        if(true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        exception.printStackTrace();
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static String encode(Map map)
    {
        String s;
        if(map == null)
        {
            s = null;
        } else
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("~SEMI_XML~");
            Iterator iterator = map.entrySet().iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                String s1 = (String)entry.getKey();
                String s2 = (String)entry.getValue();
                if(s2 != null)
                {
                    int i = s1.length();
                    int j = s2.length();
                    stringbuilder.append((char)(i >> 16)).append((char)i).append(s1);
                    stringbuilder.append((char)(j >> 16)).append((char)j).append(s2);
                }
            } while(true);
            s = stringbuilder.toString();
        }
        return s;
    }

    public static final String MAGIC_HEAD = "~SEMI_XML~";
}
