// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import com.google.gson.annotations.SerializedName;

// Referenced classes of package com.google.gson:
//            FieldNamingStrategy2, JsonFieldNameValidator, Preconditions, FieldAttributes

final class SerializedNameAnnotationInterceptingNamingPolicy
    implements FieldNamingStrategy2
{

    public SerializedNameAnnotationInterceptingNamingPolicy(FieldNamingStrategy2 fieldnamingstrategy2)
    {
        _flddelegate = fieldnamingstrategy2;
    }

    public String translateName(FieldAttributes fieldattributes)
    {
        Preconditions.checkNotNull(fieldattributes);
        SerializedName serializedname = (SerializedName)fieldattributes.getAnnotation(com/google/gson/annotations/SerializedName);
        String s;
        if(serializedname == null)
            s = _flddelegate.translateName(fieldattributes);
        else
            s = fieldNameValidator.validate(serializedname.value());
        return s;
    }

    private static final JsonFieldNameValidator fieldNameValidator = new JsonFieldNameValidator();
    private final FieldNamingStrategy2 _flddelegate;

}
