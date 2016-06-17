// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            Preconditions, NullExclusionStrategy, ObjectNavigator, FieldNamingStrategy2, 
//            ExclusionStrategy, ObjectTypePair

final class ObjectNavigatorFactory
{

    public ObjectNavigatorFactory(ExclusionStrategy exclusionstrategy, FieldNamingStrategy2 fieldnamingstrategy2)
    {
        Preconditions.checkNotNull(fieldnamingstrategy2);
        if(exclusionstrategy == null)
            exclusionstrategy = new NullExclusionStrategy();
        strategy = exclusionstrategy;
        fieldNamingPolicy = fieldnamingstrategy2;
    }

    public ObjectNavigator create(ObjectTypePair objecttypepair)
    {
        return new ObjectNavigator(objecttypepair, strategy);
    }

    FieldNamingStrategy2 getFieldNamingPolicy()
    {
        return fieldNamingPolicy;
    }

    private final FieldNamingStrategy2 fieldNamingPolicy;
    private final ExclusionStrategy strategy;
}
