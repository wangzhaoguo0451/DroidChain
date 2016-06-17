// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.*;
import java.lang.reflect.Type;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.google.gson:
//            AnonymousAndLocalClassExclusionStrategy, SyntheticFieldExclusionStrategy, ModifierBasedExclusionStrategy, SerializedNameAnnotationInterceptingNamingPolicy, 
//            JavaFieldNamingPolicy, MappedObjectConstructor, DefaultTypeAdapters, JsonIOException, 
//            JsonSyntaxException, ObjectNavigatorFactory, VersionExclusionStrategy, DisjunctionExclusionStrategy, 
//            Primitives, JsonDeserializationContextDefault, JsonDeserializationContext, Streams, 
//            JsonNull, JsonSerializationContextDefault, ExclusionStrategy, FieldNamingStrategy2, 
//            ParameterizedTypeHandlerMap, JsonElement

public final class Gson
{

    public Gson()
    {
        this(DEFAULT_EXCLUSION_STRATEGY, DEFAULT_EXCLUSION_STRATEGY, DEFAULT_NAMING_POLICY, new MappedObjectConstructor(DefaultTypeAdapters.getDefaultInstanceCreators()), false, DefaultTypeAdapters.getDefaultSerializers(), DefaultTypeAdapters.getDefaultDeserializers(), false, true, false);
    }

    Gson(ExclusionStrategy exclusionstrategy, ExclusionStrategy exclusionstrategy1, FieldNamingStrategy2 fieldnamingstrategy2, MappedObjectConstructor mappedobjectconstructor, boolean flag, ParameterizedTypeHandlerMap parameterizedtypehandlermap, ParameterizedTypeHandlerMap parameterizedtypehandlermap1, 
            boolean flag1, boolean flag2, boolean flag3)
    {
        serializationStrategy = exclusionstrategy;
        deserializationStrategy = exclusionstrategy1;
        fieldNamingPolicy = fieldnamingstrategy2;
        objectConstructor = mappedobjectconstructor;
        serializeNulls = flag;
        serializers = parameterizedtypehandlermap;
        deserializers = parameterizedtypehandlermap1;
        generateNonExecutableJson = flag1;
        htmlSafe = flag2;
        prettyPrinting = flag3;
    }

    private static void assertFullConsumption(Object obj, JsonReader jsonreader)
    {
        if(obj != null)
            try
            {
                if(jsonreader.peek() != JsonToken.END_DOCUMENT)
                    throw new JsonIOException("JSON document was not fully consumed.");
            }
            catch(MalformedJsonException malformedjsonexception)
            {
                throw new JsonSyntaxException(malformedjsonexception);
            }
            catch(IOException ioexception)
            {
                throw new JsonIOException(ioexception);
            }
    }

    private ObjectNavigatorFactory createDefaultObjectNavigatorFactory(ExclusionStrategy exclusionstrategy)
    {
        return new ObjectNavigatorFactory(exclusionstrategy, fieldNamingPolicy);
    }

    private static ExclusionStrategy createExclusionStrategy(double d)
    {
        LinkedList linkedlist = new LinkedList();
        linkedlist.add(DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY);
        linkedlist.add(DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY);
        linkedlist.add(DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY);
        if(d != -1D)
            linkedlist.add(new VersionExclusionStrategy(d));
        return new DisjunctionExclusionStrategy(linkedlist);
    }

    private void writeOutNullString(Appendable appendable)
        throws IOException
    {
        appendable.append("null");
    }

    public Object fromJson(JsonElement jsonelement, Class class1)
        throws JsonSyntaxException
    {
        Object obj = fromJson(jsonelement, ((Type) (class1)));
        return Primitives.wrap(class1).cast(obj);
    }

    public Object fromJson(JsonElement jsonelement, Type type)
        throws JsonSyntaxException
    {
        Object obj;
        if(jsonelement == null)
            obj = null;
        else
            obj = (new JsonDeserializationContextDefault(createDefaultObjectNavigatorFactory(deserializationStrategy), deserializers, objectConstructor)).deserialize(jsonelement, type);
        return obj;
    }

    public Object fromJson(JsonReader jsonreader, Type type)
        throws JsonIOException, JsonSyntaxException
    {
        boolean flag;
        flag = jsonreader.isLenient();
        jsonreader.setLenient(true);
        Object obj = fromJson(Streams.parse(jsonreader), type);
        jsonreader.setLenient(flag);
        return obj;
        Exception exception;
        exception;
        jsonreader.setLenient(flag);
        throw exception;
    }

    public Object fromJson(Reader reader, Class class1)
        throws JsonSyntaxException, JsonIOException
    {
        JsonReader jsonreader = new JsonReader(reader);
        Object obj = fromJson(jsonreader, ((Type) (class1)));
        assertFullConsumption(obj, jsonreader);
        return Primitives.wrap(class1).cast(obj);
    }

    public Object fromJson(Reader reader, Type type)
        throws JsonIOException, JsonSyntaxException
    {
        JsonReader jsonreader = new JsonReader(reader);
        Object obj = fromJson(jsonreader, type);
        assertFullConsumption(obj, jsonreader);
        return obj;
    }

    public Object fromJson(String s, Class class1)
        throws JsonSyntaxException
    {
        Object obj = fromJson(s, ((Type) (class1)));
        return Primitives.wrap(class1).cast(obj);
    }

    public Object fromJson(String s, Type type)
        throws JsonSyntaxException
    {
        Object obj;
        if(s == null)
            obj = null;
        else
            obj = fromJson(((Reader) (new StringReader(s))), type);
        return obj;
    }

    public String toJson(JsonElement jsonelement)
    {
        StringWriter stringwriter = new StringWriter();
        toJson(jsonelement, ((Appendable) (stringwriter)));
        return stringwriter.toString();
    }

    public String toJson(Object obj)
    {
        String s;
        if(obj == null)
        {
            if(serializeNulls)
                s = "null";
            else
                s = "";
        } else
        {
            s = toJson(obj, ((Type) (obj.getClass())));
        }
        return s;
    }

    public String toJson(Object obj, Type type)
    {
        StringWriter stringwriter = new StringWriter();
        toJson(toJsonTree(obj, type), ((Appendable) (stringwriter)));
        return stringwriter.toString();
    }

    public void toJson(JsonElement jsonelement, JsonWriter jsonwriter)
        throws JsonIOException
    {
        boolean flag;
        boolean flag1;
        flag = jsonwriter.isLenient();
        jsonwriter.setLenient(true);
        flag1 = jsonwriter.isHtmlSafe();
        jsonwriter.setHtmlSafe(htmlSafe);
        Streams.write(jsonelement, serializeNulls, jsonwriter);
        jsonwriter.setLenient(flag);
        jsonwriter.setHtmlSafe(flag1);
        return;
        IOException ioexception;
        ioexception;
        throw new JsonIOException(ioexception);
        Exception exception;
        exception;
        jsonwriter.setLenient(flag);
        jsonwriter.setHtmlSafe(flag1);
        throw exception;
    }

    public void toJson(JsonElement jsonelement, Appendable appendable)
        throws JsonIOException
    {
        try
        {
            if(generateNonExecutableJson)
                appendable.append(")]}'\n");
            JsonWriter jsonwriter = new JsonWriter(Streams.writerForAppendable(appendable));
            if(prettyPrinting)
                jsonwriter.setIndent("  ");
            toJson(jsonelement, jsonwriter);
            return;
        }
        catch(IOException ioexception)
        {
            throw new RuntimeException(ioexception);
        }
    }

    public void toJson(Object obj, Appendable appendable)
        throws JsonIOException
    {
        if(obj == null)
            break MISSING_BLOCK_LABEL_17;
        toJson(obj, ((Type) (obj.getClass())), appendable);
        break MISSING_BLOCK_LABEL_42;
        if(serializeNulls)
            writeOutNullString(appendable);
        break MISSING_BLOCK_LABEL_42;
        IOException ioexception;
        ioexception;
        throw new RuntimeException(ioexception);
    }

    public void toJson(Object obj, Type type, JsonWriter jsonwriter)
        throws JsonIOException
    {
        toJson(toJsonTree(obj, type), jsonwriter);
    }

    public void toJson(Object obj, Type type, Appendable appendable)
        throws JsonIOException
    {
        toJson(toJsonTree(obj, type), appendable);
    }

    public JsonElement toJsonTree(Object obj)
    {
        Object obj1;
        if(obj == null)
            obj1 = JsonNull.createJsonNull();
        else
            obj1 = toJsonTree(obj, ((Type) (obj.getClass())));
        return ((JsonElement) (obj1));
    }

    public JsonElement toJsonTree(Object obj, Type type)
    {
        Object obj1;
        if(obj == null)
            obj1 = JsonNull.createJsonNull();
        else
            obj1 = (new JsonSerializationContextDefault(createDefaultObjectNavigatorFactory(serializationStrategy), serializeNulls, serializers)).serialize(obj, type, true);
        return ((JsonElement) (obj1));
    }

    public String toString()
    {
        return (new StringBuilder("{")).append("serializeNulls:").append(serializeNulls).append(",serializers:").append(serializers).append(",deserializers:").append(deserializers).append(",instanceCreators:").append(objectConstructor).append("}").toString();
    }

    static final AnonymousAndLocalClassExclusionStrategy DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY = new AnonymousAndLocalClassExclusionStrategy();
    private static final ExclusionStrategy DEFAULT_EXCLUSION_STRATEGY = createExclusionStrategy(-1D);
    static final boolean DEFAULT_JSON_NON_EXECUTABLE = false;
    static final ModifierBasedExclusionStrategy DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY;
    static final FieldNamingStrategy2 DEFAULT_NAMING_POLICY = new SerializedNameAnnotationInterceptingNamingPolicy(new JavaFieldNamingPolicy());
    static final SyntheticFieldExclusionStrategy DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY = new SyntheticFieldExclusionStrategy(true);
    private static final String JSON_NON_EXECUTABLE_PREFIX = ")]}'\n";
    private static final String NULL_STRING = "null";
    private final ExclusionStrategy deserializationStrategy;
    private final ParameterizedTypeHandlerMap deserializers;
    private final FieldNamingStrategy2 fieldNamingPolicy;
    private final boolean generateNonExecutableJson;
    private final boolean htmlSafe;
    private final MappedObjectConstructor objectConstructor;
    private final boolean prettyPrinting;
    private final ExclusionStrategy serializationStrategy;
    private final boolean serializeNulls;
    private final ParameterizedTypeHandlerMap serializers;

    static 
    {
        int ai[] = new int[2];
        ai[0] = 128;
        ai[1] = 8;
        DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY = new ModifierBasedExclusionStrategy(ai);
    }
}
