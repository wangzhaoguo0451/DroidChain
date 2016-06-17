// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            FieldNamingStrategy2, Preconditions, FieldAttributes, FieldNamingStrategy

final class FieldNamingStrategy2Adapter
    implements FieldNamingStrategy2
{

    public FieldNamingStrategy2Adapter(FieldNamingStrategy fieldnamingstrategy)
    {
        Preconditions.checkNotNull(fieldnamingstrategy);
        adaptee = fieldnamingstrategy;
    }

    public String translateName(FieldAttributes fieldattributes)
    {
        return adaptee.translateName(fieldattributes.getFieldObject());
    }

    private final FieldNamingStrategy adaptee;
}
