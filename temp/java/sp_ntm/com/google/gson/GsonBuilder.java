// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.Type;
import java.util.*;

// Referenced classes of package com.google.gson:
//            InnerClassExclusionStrategy, ExposeAnnotationSerializationExclusionStrategy, ExposeAnnotationDeserializationExclusionStrategy, Gson, 
//            LongSerializationPolicy, ParameterizedTypeHandlerMap, JsonDeserializerExceptionWrapper, VersionExclusionStrategy, 
//            DisjunctionExclusionStrategy, DefaultTypeAdapters, MappedObjectConstructor, ModifierBasedExclusionStrategy, 
//            JsonSerializer, JsonDeserializer, InstanceCreator, Preconditions, 
//            FieldNamingPolicy, SerializedNameAnnotationInterceptingNamingPolicy, FieldNamingStrategy2Adapter, FieldNamingStrategy2, 
//            ExclusionStrategy, FieldNamingStrategy

public final class GsonBuilder
{

    public GsonBuilder()
    {
        exclusionStrategies.add(Gson.DEFAULT_ANON_LOCAL_CLASS_EXCLUSION_STRATEGY);
        exclusionStrategies.add(Gson.DEFAULT_SYNTHETIC_FIELD_EXCLUSION_STRATEGY);
        ignoreVersionsAfter = -1D;
        serializeInnerClasses = true;
        prettyPrinting = false;
        escapeHtmlChars = true;
        modifierBasedExclusionStrategy = Gson.DEFAULT_MODIFIER_BASED_EXCLUSION_STRATEGY;
        excludeFieldsWithoutExposeAnnotation = false;
        longSerializationPolicy = LongSerializationPolicy.DEFAULT;
        fieldNamingPolicy = Gson.DEFAULT_NAMING_POLICY;
        serializeNulls = false;
        dateStyle = 2;
        timeStyle = 2;
        serializeSpecialFloatingPointValues = false;
        generateNonExecutableJson = false;
    }

    private static void addTypeAdaptersForDate(String s, int i, int j, ParameterizedTypeHandlerMap parameterizedtypehandlermap, ParameterizedTypeHandlerMap parameterizedtypehandlermap1)
    {
        DefaultTypeAdapters.DefaultDateTypeAdapter defaultdatetypeadapter = null;
        if(s == null || "".equals(s.trim())) goto _L2; else goto _L1
_L1:
        defaultdatetypeadapter = new DefaultTypeAdapters.DefaultDateTypeAdapter(s);
_L4:
        if(defaultdatetypeadapter != null)
        {
            if(!parameterizedtypehandlermap.hasSpecificHandlerFor(java/util/Date))
                parameterizedtypehandlermap.register(java/util/Date, defaultdatetypeadapter);
            if(!parameterizedtypehandlermap1.hasSpecificHandlerFor(java/util/Date))
                parameterizedtypehandlermap1.register(java/util/Date, defaultdatetypeadapter);
        }
        return;
_L2:
        if(i != 2 && j != 2)
            defaultdatetypeadapter = new DefaultTypeAdapters.DefaultDateTypeAdapter(i, j);
        if(true) goto _L4; else goto _L3
_L3:
    }

    private GsonBuilder registerDeserializer(Type type, JsonDeserializer jsondeserializer)
    {
        deserializers.register(type, new JsonDeserializerExceptionWrapper(jsondeserializer));
        return this;
    }

    private GsonBuilder registerDeserializerForTypeHierarchy(Class class1, JsonDeserializer jsondeserializer)
    {
        deserializers.registerForTypeHierarchy(class1, new JsonDeserializerExceptionWrapper(jsondeserializer));
        return this;
    }

    private GsonBuilder registerInstanceCreator(Type type, InstanceCreator instancecreator)
    {
        instanceCreators.register(type, instancecreator);
        return this;
    }

    private GsonBuilder registerInstanceCreatorForTypeHierarchy(Class class1, InstanceCreator instancecreator)
    {
        instanceCreators.registerForTypeHierarchy(class1, instancecreator);
        return this;
    }

    private GsonBuilder registerSerializer(Type type, JsonSerializer jsonserializer)
    {
        serializers.register(type, jsonserializer);
        return this;
    }

    private GsonBuilder registerSerializerForTypeHierarchy(Class class1, JsonSerializer jsonserializer)
    {
        serializers.registerForTypeHierarchy(class1, jsonserializer);
        return this;
    }

    public Gson create()
    {
        LinkedList linkedlist = new LinkedList(exclusionStrategies);
        LinkedList linkedlist1 = new LinkedList(exclusionStrategies);
        linkedlist.add(modifierBasedExclusionStrategy);
        linkedlist1.add(modifierBasedExclusionStrategy);
        if(!serializeInnerClasses)
        {
            linkedlist.add(innerClassExclusionStrategy);
            linkedlist1.add(innerClassExclusionStrategy);
        }
        if(ignoreVersionsAfter != -1D)
        {
            linkedlist.add(new VersionExclusionStrategy(ignoreVersionsAfter));
            linkedlist1.add(new VersionExclusionStrategy(ignoreVersionsAfter));
        }
        if(excludeFieldsWithoutExposeAnnotation)
        {
            linkedlist.add(exposeAnnotationSerializationExclusionStrategy);
            linkedlist1.add(exposeAnnotationDeserializationExclusionStrategy);
        }
        DisjunctionExclusionStrategy disjunctionexclusionstrategy = new DisjunctionExclusionStrategy(linkedlist);
        DisjunctionExclusionStrategy disjunctionexclusionstrategy1 = new DisjunctionExclusionStrategy(linkedlist1);
        ParameterizedTypeHandlerMap parameterizedtypehandlermap = serializers.copyOf();
        ParameterizedTypeHandlerMap parameterizedtypehandlermap1 = deserializers.copyOf();
        addTypeAdaptersForDate(datePattern, dateStyle, timeStyle, parameterizedtypehandlermap, parameterizedtypehandlermap1);
        parameterizedtypehandlermap.registerIfAbsent(DefaultTypeAdapters.getDefaultSerializers(serializeSpecialFloatingPointValues, longSerializationPolicy));
        parameterizedtypehandlermap1.registerIfAbsent(DefaultTypeAdapters.getDefaultDeserializers());
        ParameterizedTypeHandlerMap parameterizedtypehandlermap2 = instanceCreators.copyOf();
        parameterizedtypehandlermap2.registerIfAbsent(DefaultTypeAdapters.getDefaultInstanceCreators());
        parameterizedtypehandlermap.makeUnmodifiable();
        parameterizedtypehandlermap1.makeUnmodifiable();
        instanceCreators.makeUnmodifiable();
        MappedObjectConstructor mappedobjectconstructor = new MappedObjectConstructor(parameterizedtypehandlermap2);
        return new Gson(disjunctionexclusionstrategy, disjunctionexclusionstrategy1, fieldNamingPolicy, mappedobjectconstructor, serializeNulls, parameterizedtypehandlermap, parameterizedtypehandlermap1, generateNonExecutableJson, escapeHtmlChars, prettyPrinting);
    }

    public GsonBuilder disableHtmlEscaping()
    {
        escapeHtmlChars = false;
        return this;
    }

    public GsonBuilder disableInnerClassSerialization()
    {
        serializeInnerClasses = false;
        return this;
    }

    public transient GsonBuilder excludeFieldsWithModifiers(int ai[])
    {
        modifierBasedExclusionStrategy = new ModifierBasedExclusionStrategy(ai);
        return this;
    }

    public GsonBuilder excludeFieldsWithoutExposeAnnotation()
    {
        excludeFieldsWithoutExposeAnnotation = true;
        return this;
    }

    public GsonBuilder generateNonExecutableJson()
    {
        generateNonExecutableJson = true;
        return this;
    }

    public GsonBuilder registerTypeAdapter(Type type, Object obj)
    {
        boolean flag;
        if((obj instanceof JsonSerializer) || (obj instanceof JsonDeserializer) || (obj instanceof InstanceCreator))
            flag = true;
        else
            flag = false;
        Preconditions.checkArgument(flag);
        if(obj instanceof InstanceCreator)
            registerInstanceCreator(type, (InstanceCreator)obj);
        if(obj instanceof JsonSerializer)
            registerSerializer(type, (JsonSerializer)obj);
        if(obj instanceof JsonDeserializer)
            registerDeserializer(type, (JsonDeserializer)obj);
        return this;
    }

    GsonBuilder registerTypeHierarchyAdapter(Class class1, Object obj)
    {
        boolean flag;
        if((obj instanceof JsonSerializer) || (obj instanceof JsonDeserializer) || (obj instanceof InstanceCreator))
            flag = true;
        else
            flag = false;
        Preconditions.checkArgument(flag);
        if(obj instanceof InstanceCreator)
            registerInstanceCreatorForTypeHierarchy(class1, (InstanceCreator)obj);
        if(obj instanceof JsonSerializer)
            registerSerializerForTypeHierarchy(class1, (JsonSerializer)obj);
        if(obj instanceof JsonDeserializer)
            registerDeserializerForTypeHierarchy(class1, (JsonDeserializer)obj);
        return this;
    }

    public GsonBuilder serializeNulls()
    {
        serializeNulls = true;
        return this;
    }

    public GsonBuilder serializeSpecialFloatingPointValues()
    {
        serializeSpecialFloatingPointValues = true;
        return this;
    }

    public GsonBuilder setDateFormat(int i)
    {
        dateStyle = i;
        datePattern = null;
        return this;
    }

    public GsonBuilder setDateFormat(int i, int j)
    {
        dateStyle = i;
        timeStyle = j;
        datePattern = null;
        return this;
    }

    public GsonBuilder setDateFormat(String s)
    {
        datePattern = s;
        return this;
    }

    public transient GsonBuilder setExclusionStrategies(ExclusionStrategy aexclusionstrategy[])
    {
        int i = aexclusionstrategy.length;
        for(int j = 0; j < i; j++)
        {
            ExclusionStrategy exclusionstrategy = aexclusionstrategy[j];
            exclusionStrategies.add(exclusionstrategy);
        }

        return this;
    }

    public GsonBuilder setFieldNamingPolicy(FieldNamingPolicy fieldnamingpolicy)
    {
        return setFieldNamingStrategy(fieldnamingpolicy.getFieldNamingPolicy());
    }

    GsonBuilder setFieldNamingStrategy(FieldNamingStrategy2 fieldnamingstrategy2)
    {
        fieldNamingPolicy = new SerializedNameAnnotationInterceptingNamingPolicy(fieldnamingstrategy2);
        return this;
    }

    public GsonBuilder setFieldNamingStrategy(FieldNamingStrategy fieldnamingstrategy)
    {
        return setFieldNamingStrategy(((FieldNamingStrategy2) (new FieldNamingStrategy2Adapter(fieldnamingstrategy))));
    }

    public GsonBuilder setLongSerializationPolicy(LongSerializationPolicy longserializationpolicy)
    {
        longSerializationPolicy = longserializationpolicy;
        return this;
    }

    public GsonBuilder setPrettyPrinting()
    {
        prettyPrinting = true;
        return this;
    }

    public GsonBuilder setVersion(double d)
    {
        ignoreVersionsAfter = d;
        return this;
    }

    private static final ExposeAnnotationDeserializationExclusionStrategy exposeAnnotationDeserializationExclusionStrategy = new ExposeAnnotationDeserializationExclusionStrategy();
    private static final ExposeAnnotationSerializationExclusionStrategy exposeAnnotationSerializationExclusionStrategy = new ExposeAnnotationSerializationExclusionStrategy();
    private static final InnerClassExclusionStrategy innerClassExclusionStrategy = new InnerClassExclusionStrategy();
    private String datePattern;
    private int dateStyle;
    private final ParameterizedTypeHandlerMap deserializers = new ParameterizedTypeHandlerMap();
    private boolean escapeHtmlChars;
    private boolean excludeFieldsWithoutExposeAnnotation;
    private final Collection exclusionStrategies = new HashSet();
    private FieldNamingStrategy2 fieldNamingPolicy;
    private boolean generateNonExecutableJson;
    private double ignoreVersionsAfter;
    private final ParameterizedTypeHandlerMap instanceCreators = new ParameterizedTypeHandlerMap();
    private LongSerializationPolicy longSerializationPolicy;
    private ModifierBasedExclusionStrategy modifierBasedExclusionStrategy;
    private boolean prettyPrinting;
    private boolean serializeInnerClasses;
    private boolean serializeNulls;
    private boolean serializeSpecialFloatingPointValues;
    private final ParameterizedTypeHandlerMap serializers = new ParameterizedTypeHandlerMap();
    private int timeStyle;

}
