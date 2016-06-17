// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            FieldAttributes

final class CircularReferenceException extends RuntimeException
{

    CircularReferenceException(Object obj)
    {
        super("circular reference error");
        offendingNode = obj;
    }

    public IllegalStateException createDetailedException(FieldAttributes fieldattributes)
    {
        StringBuilder stringbuilder = new StringBuilder(getMessage());
        if(fieldattributes != null)
            stringbuilder.append("\n  ").append("Offending field: ").append((new StringBuilder()).append(fieldattributes.getName()).append("\n").toString());
        if(offendingNode != null)
            stringbuilder.append("\n  ").append("Offending object: ").append(offendingNode);
        return new IllegalStateException(stringbuilder.toString(), this);
    }

    private static final long serialVersionUID = 0x674f9ec8bf47aeb9L;
    private final Object offendingNode;
}
