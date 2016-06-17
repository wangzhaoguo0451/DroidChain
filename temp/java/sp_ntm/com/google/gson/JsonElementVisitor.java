// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.io.IOException;

// Referenced classes of package com.google.gson:
//            JsonArray, JsonObject, JsonPrimitive

interface JsonElementVisitor
{

    public abstract void endArray(JsonArray jsonarray)
        throws IOException;

    public abstract void endObject(JsonObject jsonobject)
        throws IOException;

    public abstract void startArray(JsonArray jsonarray)
        throws IOException;

    public abstract void startObject(JsonObject jsonobject)
        throws IOException;

    public abstract void visitArrayMember(JsonArray jsonarray, JsonArray jsonarray1, boolean flag)
        throws IOException;

    public abstract void visitArrayMember(JsonArray jsonarray, JsonObject jsonobject, boolean flag)
        throws IOException;

    public abstract void visitArrayMember(JsonArray jsonarray, JsonPrimitive jsonprimitive, boolean flag)
        throws IOException;

    public abstract void visitNull()
        throws IOException;

    public abstract void visitNullArrayMember(JsonArray jsonarray, boolean flag)
        throws IOException;

    public abstract void visitNullObjectMember(JsonObject jsonobject, String s, boolean flag)
        throws IOException;

    public abstract void visitObjectMember(JsonObject jsonobject, String s, JsonArray jsonarray, boolean flag)
        throws IOException;

    public abstract void visitObjectMember(JsonObject jsonobject, String s, JsonObject jsonobject1, boolean flag)
        throws IOException;

    public abstract void visitObjectMember(JsonObject jsonobject, String s, JsonPrimitive jsonprimitive, boolean flag)
        throws IOException;

    public abstract void visitPrimitive(JsonPrimitive jsonprimitive)
        throws IOException;
}
