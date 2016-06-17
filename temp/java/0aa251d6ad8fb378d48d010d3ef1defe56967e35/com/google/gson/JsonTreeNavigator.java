// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.io.IOException;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.gson:
//            JsonElement, JsonElementVisitor, JsonArray, JsonObject

final class JsonTreeNavigator
{

    JsonTreeNavigator(JsonElementVisitor jsonelementvisitor, boolean flag)
    {
        visitor = jsonelementvisitor;
        visitNulls = flag;
    }

    private void visitChild(JsonArray jsonarray, JsonElement jsonelement, boolean flag)
        throws IOException
    {
        if(jsonelement.isJsonNull())
        {
            visitor.visitNullArrayMember(jsonarray, flag);
            navigate(jsonelement);
        } else
        if(jsonelement.isJsonArray())
        {
            JsonArray jsonarray1 = jsonelement.getAsJsonArray();
            visitor.visitArrayMember(jsonarray, jsonarray1, flag);
            navigate(jsonarray1);
        } else
        if(jsonelement.isJsonObject())
        {
            JsonObject jsonobject = jsonelement.getAsJsonObject();
            visitor.visitArrayMember(jsonarray, jsonobject, flag);
            navigate(jsonobject);
        } else
        {
            visitor.visitArrayMember(jsonarray, jsonelement.getAsJsonPrimitive(), flag);
        }
    }

    private boolean visitChild(JsonObject jsonobject, String s, JsonElement jsonelement, boolean flag)
        throws IOException
    {
        if(!jsonelement.isJsonNull()) goto _L2; else goto _L1
_L1:
        if(!visitNulls) goto _L4; else goto _L3
_L3:
        visitor.visitNullObjectMember(jsonobject, s, flag);
        navigate(jsonelement.getAsJsonNull());
_L7:
        boolean flag1 = true;
_L5:
        return flag1;
_L4:
        flag1 = false;
        if(true) goto _L5; else goto _L2
_L2:
        if(jsonelement.isJsonArray())
        {
            JsonArray jsonarray = jsonelement.getAsJsonArray();
            visitor.visitObjectMember(jsonobject, s, jsonarray, flag);
            navigate(jsonarray);
        } else
        if(jsonelement.isJsonObject())
        {
            JsonObject jsonobject1 = jsonelement.getAsJsonObject();
            visitor.visitObjectMember(jsonobject, s, jsonobject1, flag);
            navigate(jsonobject1);
        } else
        {
            visitor.visitObjectMember(jsonobject, s, jsonelement.getAsJsonPrimitive(), flag);
        }
        if(true) goto _L7; else goto _L6
_L6:
    }

    public void navigate(JsonElement jsonelement)
        throws IOException
    {
        if(jsonelement.isJsonNull())
            visitor.visitNull();
        else
        if(jsonelement.isJsonArray())
        {
            JsonArray jsonarray = jsonelement.getAsJsonArray();
            visitor.startArray(jsonarray);
            boolean flag1 = true;
            Iterator iterator1 = jsonarray.iterator();
            do
            {
                if(!iterator1.hasNext())
                    break;
                visitChild(jsonarray, (JsonElement)iterator1.next(), flag1);
                if(flag1)
                    flag1 = false;
            } while(true);
            visitor.endArray(jsonarray);
        } else
        if(jsonelement.isJsonObject())
        {
            JsonObject jsonobject = jsonelement.getAsJsonObject();
            visitor.startObject(jsonobject);
            boolean flag = true;
            Iterator iterator = jsonobject.entrySet().iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                if(visitChild(jsonobject, (String)entry.getKey(), (JsonElement)entry.getValue(), flag) && flag)
                    flag = false;
            } while(true);
            visitor.endObject(jsonobject);
        } else
        {
            visitor.visitPrimitive(jsonelement.getAsJsonPrimitive());
        }
    }

    private final boolean visitNulls;
    private final JsonElementVisitor visitor;
}
