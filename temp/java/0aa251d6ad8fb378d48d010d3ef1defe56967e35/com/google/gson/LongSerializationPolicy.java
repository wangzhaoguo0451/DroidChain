// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;


// Referenced classes of package com.google.gson:
//            JsonElement, JsonPrimitive

public final class LongSerializationPolicy extends Enum
{
    private static class StringStrategy
        implements Strategy
    {

        public JsonElement serialize(Long long1)
        {
            return new JsonPrimitive(String.valueOf(long1));
        }

        private StringStrategy()
        {
        }

    }

    private static class DefaultStrategy
        implements Strategy
    {

        public JsonElement serialize(Long long1)
        {
            return new JsonPrimitive(long1);
        }

        private DefaultStrategy()
        {
        }

    }

    private static interface Strategy
    {

        public abstract JsonElement serialize(Long long1);
    }


    private LongSerializationPolicy(String s, int i, Strategy strategy1)
    {
        super(s, i);
        strategy = strategy1;
    }

    public static LongSerializationPolicy valueOf(String s)
    {
        return (LongSerializationPolicy)Enum.valueOf(com/google/gson/LongSerializationPolicy, s);
    }

    public static LongSerializationPolicy[] values()
    {
        return (LongSerializationPolicy[])$VALUES.clone();
    }

    public JsonElement serialize(Long long1)
    {
        return strategy.serialize(long1);
    }

    private static final LongSerializationPolicy $VALUES[];
    public static final LongSerializationPolicy DEFAULT;
    public static final LongSerializationPolicy STRING;
    private final Strategy strategy;

    static 
    {
        DEFAULT = new LongSerializationPolicy("DEFAULT", 0, new DefaultStrategy());
        STRING = new LongSerializationPolicy("STRING", 1, new StringStrategy());
        LongSerializationPolicy alongserializationpolicy[] = new LongSerializationPolicy[2];
        alongserializationpolicy[0] = DEFAULT;
        alongserializationpolicy[1] = STRING;
        $VALUES = alongserializationpolicy;
    }
}
