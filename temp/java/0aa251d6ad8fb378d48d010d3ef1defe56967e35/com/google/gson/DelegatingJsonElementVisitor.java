// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.io.IOException;

// Referenced classes of package com.google.gson:
//            JsonElementVisitor, Preconditions, JsonArray, JsonObject, 
//            JsonPrimitive

class DelegatingJsonElementVisitor
    implements JsonElementVisitor
{

    protected DelegatingJsonElementVisitor(JsonElementVisitor jsonelementvisitor)
    {
        Preconditions.checkNotNull(jsonelementvisitor);
        _flddelegate = jsonelementvisitor;
    }

    public void endArray(JsonArray jsonarray)
        throws IOException
    {
        _flddelegate.endArray(jsonarray);
    }

    public void endObject(JsonObject jsonobject)
        throws IOException
    {
        _flddelegate.endObject(jsonobject);
    }

    public void startArray(JsonArray jsonarray)
        throws IOException
    {
        _flddelegate.startArray(jsonarray);
    }

    public void startObject(JsonObject jsonobject)
        throws IOException
    {
        _flddelegate.startObject(jsonobject);
    }

    public void visitArrayMember(JsonArray jsonarray, JsonArray jsonarray1, boolean flag)
        throws IOException
    {
        _flddelegate.visitArrayMember(jsonarray, jsonarray1, flag);
    }

    public void visitArrayMember(JsonArray jsonarray, JsonObject jsonobject, boolean flag)
        throws IOException
    {
        _flddelegate.visitArrayMember(jsonarray, jsonobject, flag);
    }

    public void visitArrayMember(JsonArray jsonarray, JsonPrimitive jsonprimitive, boolean flag)
        throws IOException
    {
        _flddelegate.visitArrayMember(jsonarray, jsonprimitive, flag);
    }

    public void visitNull()
        throws IOException
    {
        _flddelegate.visitNull();
    }

    public void visitNullArrayMember(JsonArray jsonarray, boolean flag)
        throws IOException
    {
        _flddelegate.visitNullArrayMember(jsonarray, flag);
    }

    public void visitNullObjectMember(JsonObject jsonobject, String s, boolean flag)
        throws IOException
    {
        _flddelegate.visitNullObjectMember(jsonobject, s, flag);
    }

    public void visitObjectMember(JsonObject jsonobject, String s, JsonArray jsonarray, boolean flag)
        throws IOException
    {
        _flddelegate.visitObjectMember(jsonobject, s, jsonarray, flag);
    }

    public void visitObjectMember(JsonObject jsonobject, String s, JsonObject jsonobject1, boolean flag)
        throws IOException
    {
        _flddelegate.visitObjectMember(jsonobject, s, jsonobject1, flag);
    }

    public void visitObjectMember(JsonObject jsonobject, String s, JsonPrimitive jsonprimitive, boolean flag)
        throws IOException
    {
        _flddelegate.visitObjectMember(jsonobject, s, jsonprimitive, flag);
    }

    public void visitPrimitive(JsonPrimitive jsonprimitive)
        throws IOException
    {
        _flddelegate.visitPrimitive(jsonprimitive);
    }

    private final JsonElementVisitor _flddelegate;
}
