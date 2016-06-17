// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.SortedSet;
import java.util.StringTokenizer;
import java.util.TreeSet;
import java.util.UUID;

// Referenced classes of package com.google.gson:
//            ParameterizedTypeHandlerMap, LongSerializationPolicy, JsonDeserializerExceptionWrapper, JsonDeserializer, 
//            InstanceCreator, JsonSerializer, JsonParseException, JsonElement, 
//            JsonPrimitive, JsonDeserializationContext, JsonSerializationContext, JsonDeserializationContextDefault, 
//            ObjectConstructor, TypeInfoMap, JsonObject, JsonNull, 
//            TypeInfoCollection, JsonArray, JsonSyntaxException

final class DefaultTypeAdapters
{
    private static class HashSetCreator
        implements InstanceCreator
    {

        public volatile Object createInstance(Type type)
        {
            return createInstance(type);
        }

        public HashSet createInstance(Type type)
        {
            return new HashSet();
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$HashSetCreator.getSimpleName();
        }

        private HashSetCreator()
        {
        }

    }

    private static class TreeSetCreator
        implements InstanceCreator
    {

        public volatile Object createInstance(Type type)
        {
            return createInstance(type);
        }

        public TreeSet createInstance(Type type)
        {
            return new TreeSet();
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$TreeSetCreator.getSimpleName();
        }

        private TreeSetCreator()
        {
        }

    }

    private static class BooleanTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public Boolean deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return Boolean.valueOf(jsonelement.getAsBoolean());
        }

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public JsonElement serialize(Boolean boolean1, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return new JsonPrimitive(boolean1);
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Boolean)obj, type, jsonserializationcontext);
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$BooleanTypeAdapter.getSimpleName();
        }

        private BooleanTypeAdapter()
        {
        }

    }

    private static class StringTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public String deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return jsonelement.getAsString();
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((String)obj, type, jsonserializationcontext);
        }

        public JsonElement serialize(String s, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return new JsonPrimitive(s);
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$StringTypeAdapter.getSimpleName();
        }

        private StringTypeAdapter()
        {
        }

    }

    private static class CharacterTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public Character deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return Character.valueOf(jsonelement.getAsCharacter());
        }

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public JsonElement serialize(Character character, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return new JsonPrimitive(character);
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Character)obj, type, jsonserializationcontext);
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$CharacterTypeAdapter.getSimpleName();
        }

        private CharacterTypeAdapter()
        {
        }

    }

    private static class DoubleDeserializer
        implements JsonDeserializer
    {

        public Double deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return Double.valueOf(jsonelement.getAsDouble());
        }

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$DoubleDeserializer.getSimpleName();
        }

        private DoubleDeserializer()
        {
        }

    }

    static class DoubleSerializer
        implements JsonSerializer
    {

        public JsonElement serialize(Double double1, Type type, JsonSerializationContext jsonserializationcontext)
        {
            if(!serializeSpecialFloatingPointValues && (Double.isNaN(double1.doubleValue()) || Double.isInfinite(double1.doubleValue())))
                throw new IllegalArgumentException((new StringBuilder()).append(double1).append(" is not a valid double value as per JSON specification. To override this").append(" behavior, use GsonBuilder.serializeSpecialDoubleValues() method.").toString());
            else
                return new JsonPrimitive(double1);
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Double)obj, type, jsonserializationcontext);
        }

        private final boolean serializeSpecialFloatingPointValues;

        DoubleSerializer(boolean flag)
        {
            serializeSpecialFloatingPointValues = flag;
        }
    }

    private static class FloatDeserializer
        implements JsonDeserializer
    {

        public Float deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return Float.valueOf(jsonelement.getAsFloat());
        }

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$FloatDeserializer.getSimpleName();
        }

        private FloatDeserializer()
        {
        }

    }

    static class FloatSerializer
        implements JsonSerializer
    {

        public JsonElement serialize(Float float1, Type type, JsonSerializationContext jsonserializationcontext)
        {
            if(!serializeSpecialFloatingPointValues && (Float.isNaN(float1.floatValue()) || Float.isInfinite(float1.floatValue())))
                throw new IllegalArgumentException((new StringBuilder()).append(float1).append(" is not a valid float value as per JSON specification. To override this").append(" behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method.").toString());
            else
                return new JsonPrimitive(float1);
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Float)obj, type, jsonserializationcontext);
        }

        private final boolean serializeSpecialFloatingPointValues;

        FloatSerializer(boolean flag)
        {
            serializeSpecialFloatingPointValues = flag;
        }
    }

    private static class ByteTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public Byte deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return Byte.valueOf(jsonelement.getAsByte());
        }

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public JsonElement serialize(Byte byte1, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return new JsonPrimitive(byte1);
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Byte)obj, type, jsonserializationcontext);
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$ByteTypeAdapter.getSimpleName();
        }

        private ByteTypeAdapter()
        {
        }

    }

    private static class ShortTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public Short deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return Short.valueOf(jsonelement.getAsShort());
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Short)obj, type, jsonserializationcontext);
        }

        public JsonElement serialize(Short short1, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return new JsonPrimitive(short1);
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$ShortTypeAdapter.getSimpleName();
        }

        private ShortTypeAdapter()
        {
        }

    }

    private static class IntegerTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public Integer deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return Integer.valueOf(jsonelement.getAsInt());
        }

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public JsonElement serialize(Integer integer, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return new JsonPrimitive(integer);
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Integer)obj, type, jsonserializationcontext);
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$IntegerTypeAdapter.getSimpleName();
        }

        private IntegerTypeAdapter()
        {
        }

    }

    private static class LongDeserializer
        implements JsonDeserializer
    {

        public Long deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return Long.valueOf(jsonelement.getAsLong());
        }

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$LongDeserializer.getSimpleName();
        }

        private LongDeserializer()
        {
        }

    }

    private static class LongSerializer
        implements JsonSerializer
    {

        public JsonElement serialize(Long long1, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return longSerializationPolicy.serialize(long1);
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Long)obj, type, jsonserializationcontext);
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$LongSerializer.getSimpleName();
        }

        private final LongSerializationPolicy longSerializationPolicy;

        private LongSerializer(LongSerializationPolicy longserializationpolicy)
        {
            longSerializationPolicy = longserializationpolicy;
        }

    }

    private static class NumberTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public Number deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return jsonelement.getAsNumber();
        }

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public JsonElement serialize(Number number, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return new JsonPrimitive(number);
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Number)obj, type, jsonserializationcontext);
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$NumberTypeAdapter.getSimpleName();
        }

        private NumberTypeAdapter()
        {
        }

    }

    private static class BigIntegerTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public BigInteger deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return jsonelement.getAsBigInteger();
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((BigInteger)obj, type, jsonserializationcontext);
        }

        public JsonElement serialize(BigInteger biginteger, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return new JsonPrimitive(biginteger);
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$BigIntegerTypeAdapter.getSimpleName();
        }

        private BigIntegerTypeAdapter()
        {
        }

    }

    private static class BigDecimalTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public BigDecimal deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return jsonelement.getAsBigDecimal();
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((BigDecimal)obj, type, jsonserializationcontext);
        }

        public JsonElement serialize(BigDecimal bigdecimal, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return new JsonPrimitive(bigdecimal);
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$BigDecimalTypeAdapter.getSimpleName();
        }

        private BigDecimalTypeAdapter()
        {
        }

    }

    static class MapTypeAdapter
        implements JsonSerializer, JsonDeserializer, InstanceCreator
    {

        private Map constructMapType(Type type, JsonDeserializationContext jsondeserializationcontext)
        {
            return (Map)((JsonDeserializationContextDefault)jsondeserializationcontext).getObjectConstructor().construct(type);
        }

        public volatile Object createInstance(Type type)
        {
            return createInstance(type);
        }

        public Map createInstance(Type type)
        {
            return new LinkedHashMap();
        }

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public Map deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            Map map = constructMapType(type, jsondeserializationcontext);
            TypeInfoMap typeinfomap = new TypeInfoMap(type);
            java.util.Map.Entry entry;
            for(Iterator iterator = jsonelement.getAsJsonObject().entrySet().iterator(); iterator.hasNext(); map.put(jsondeserializationcontext.deserialize(new JsonPrimitive((String)entry.getKey()), typeinfomap.getKeyType()), jsondeserializationcontext.deserialize((JsonElement)entry.getValue(), typeinfomap.getValueType())))
                entry = (java.util.Map.Entry)iterator.next();

            return map;
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Map)obj, type, jsonserializationcontext);
        }

        public JsonElement serialize(Map map, Type type, JsonSerializationContext jsonserializationcontext)
        {
            JsonObject jsonobject = new JsonObject();
            Type type1 = null;
            if(type instanceof ParameterizedType)
                type1 = (new TypeInfoMap(type)).getValueType();
            Iterator iterator = map.entrySet().iterator();
            while(iterator.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                Object obj = entry.getValue();
                Object obj2;
                if(obj == null)
                {
                    obj2 = JsonNull.createJsonNull();
                } else
                {
                    Object obj1;
                    if(type1 == null)
                        obj1 = obj.getClass();
                    else
                        obj1 = type1;
                    obj2 = jsonserializationcontext.serialize(obj, ((Type) (obj1)));
                }
                jsonobject.add(String.valueOf(entry.getKey()), ((JsonElement) (obj2)));
            }
            return jsonobject;
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$MapTypeAdapter.getSimpleName();
        }

        MapTypeAdapter()
        {
        }
    }

    private static class PropertiesCreator
        implements InstanceCreator
    {

        public volatile Object createInstance(Type type)
        {
            return createInstance(type);
        }

        public Properties createInstance(Type type)
        {
            return new Properties();
        }

        private PropertiesCreator()
        {
        }

    }

    private static class CollectionTypeAdapter
        implements JsonSerializer, JsonDeserializer, InstanceCreator
    {

        private Collection constructCollectionType(Type type, JsonDeserializationContext jsondeserializationcontext)
        {
            return (Collection)((JsonDeserializationContextDefault)jsondeserializationcontext).getObjectConstructor().construct(type);
        }

        public volatile Object createInstance(Type type)
        {
            return createInstance(type);
        }

        public Collection createInstance(Type type)
        {
            return new LinkedList();
        }

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public Collection deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            Collection collection;
            if(jsonelement.isJsonNull())
            {
                collection = null;
            } else
            {
                collection = constructCollectionType(type, jsondeserializationcontext);
                Type type1 = (new TypeInfoCollection(type)).getElementType();
                Iterator iterator = jsonelement.getAsJsonArray().iterator();
                while(iterator.hasNext()) 
                {
                    JsonElement jsonelement1 = (JsonElement)iterator.next();
                    if(jsonelement1 == null || jsonelement1.isJsonNull())
                        collection.add(null);
                    else
                        collection.add(jsondeserializationcontext.deserialize(jsonelement1, type1));
                }
            }
            return collection;
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Collection)obj, type, jsonserializationcontext);
        }

        public JsonElement serialize(Collection collection, Type type, JsonSerializationContext jsonserializationcontext)
        {
            Object obj;
            if(collection == null)
            {
                obj = JsonNull.createJsonNull();
            } else
            {
                obj = new JsonArray();
                Type type1 = null;
                if(type instanceof ParameterizedType)
                    type1 = (new TypeInfoCollection(type)).getElementType();
                Iterator iterator = collection.iterator();
                while(iterator.hasNext()) 
                {
                    Object obj1 = iterator.next();
                    if(obj1 == null)
                    {
                        ((JsonArray) (obj)).add(JsonNull.createJsonNull());
                    } else
                    {
                        Object obj2;
                        if(type1 == null || type1 == java/lang/Object)
                            obj2 = obj1.getClass();
                        else
                            obj2 = type1;
                        ((JsonArray) (obj)).add(jsonserializationcontext.serialize(obj1, ((Type) (obj2))));
                    }
                }
            }
            return ((JsonElement) (obj));
        }

        private CollectionTypeAdapter()
        {
        }

    }

    private static class LocaleTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public Locale deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            StringTokenizer stringtokenizer = new StringTokenizer(jsonelement.getAsString(), "_");
            String s = null;
            String s1 = null;
            String s2 = null;
            if(stringtokenizer.hasMoreElements())
                s = stringtokenizer.nextToken();
            if(stringtokenizer.hasMoreElements())
                s1 = stringtokenizer.nextToken();
            if(stringtokenizer.hasMoreElements())
                s2 = stringtokenizer.nextToken();
            Locale locale;
            if(s1 == null && s2 == null)
                locale = new Locale(s);
            else
            if(s2 == null)
                locale = new Locale(s, s1);
            else
                locale = new Locale(s, s1, s2);
            return locale;
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Locale)obj, type, jsonserializationcontext);
        }

        public JsonElement serialize(Locale locale, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return new JsonPrimitive(locale.toString());
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$LocaleTypeAdapter.getSimpleName();
        }

        private LocaleTypeAdapter()
        {
        }

    }

    private static class UuidTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public UUID deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return UUID.fromString(jsonelement.getAsString());
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((UUID)obj, type, jsonserializationcontext);
        }

        public JsonElement serialize(UUID uuid, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return new JsonPrimitive(uuid.toString());
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$UuidTypeAdapter.getSimpleName();
        }

        private UuidTypeAdapter()
        {
        }

    }

    private static class UriTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public URI deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            URI uri;
            try
            {
                uri = new URI(jsonelement.getAsString());
            }
            catch(URISyntaxException urisyntaxexception)
            {
                throw new JsonSyntaxException(urisyntaxexception);
            }
            return uri;
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((URI)obj, type, jsonserializationcontext);
        }

        public JsonElement serialize(URI uri, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return new JsonPrimitive(uri.toASCIIString());
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$UriTypeAdapter.getSimpleName();
        }

        private UriTypeAdapter()
        {
        }

    }

    private static class UrlTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public URL deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            URL url;
            try
            {
                url = new URL(jsonelement.getAsString());
            }
            catch(MalformedURLException malformedurlexception)
            {
                throw new JsonSyntaxException(malformedurlexception);
            }
            return url;
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((URL)obj, type, jsonserializationcontext);
        }

        public JsonElement serialize(URL url, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return new JsonPrimitive(url.toExternalForm());
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$UrlTypeAdapter.getSimpleName();
        }

        private UrlTypeAdapter()
        {
        }

    }

    private static class EnumTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public Enum deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return Enum.valueOf((Class)type, jsonelement.getAsString());
        }

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public JsonElement serialize(Enum enum, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return new JsonPrimitive(enum.name());
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Enum)obj, type, jsonserializationcontext);
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$EnumTypeAdapter.getSimpleName();
        }

        private EnumTypeAdapter()
        {
        }

    }

    private static class GregorianCalendarTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public GregorianCalendar deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            JsonObject jsonobject = jsonelement.getAsJsonObject();
            return new GregorianCalendar(jsonobject.get("year").getAsInt(), jsonobject.get("month").getAsInt(), jsonobject.get("dayOfMonth").getAsInt(), jsonobject.get("hourOfDay").getAsInt(), jsonobject.get("minute").getAsInt(), jsonobject.get("second").getAsInt());
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((GregorianCalendar)obj, type, jsonserializationcontext);
        }

        public JsonElement serialize(GregorianCalendar gregoriancalendar, Type type, JsonSerializationContext jsonserializationcontext)
        {
            JsonObject jsonobject = new JsonObject();
            jsonobject.addProperty("year", Integer.valueOf(gregoriancalendar.get(1)));
            jsonobject.addProperty("month", Integer.valueOf(gregoriancalendar.get(2)));
            jsonobject.addProperty("dayOfMonth", Integer.valueOf(gregoriancalendar.get(5)));
            jsonobject.addProperty("hourOfDay", Integer.valueOf(gregoriancalendar.get(11)));
            jsonobject.addProperty("minute", Integer.valueOf(gregoriancalendar.get(12)));
            jsonobject.addProperty("second", Integer.valueOf(gregoriancalendar.get(13)));
            return jsonobject;
        }

        public String toString()
        {
            return com/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter.getSimpleName();
        }

        private static final String DAY_OF_MONTH = "dayOfMonth";
        private static final String HOUR_OF_DAY = "hourOfDay";
        private static final String MINUTE = "minute";
        private static final String MONTH = "month";
        private static final String SECOND = "second";
        private static final String YEAR = "year";

        private GregorianCalendarTypeAdapter()
        {
        }

    }

    static class DefaultTimeTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public Time deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            if(!(jsonelement instanceof JsonPrimitive))
                throw new JsonParseException("The date should be a string value");
            DateFormat dateformat = format;
            dateformat;
            JVM INSTR monitorenter ;
            Time time = new Time(format.parse(jsonelement.getAsString()).getTime());
            return time;
            ParseException parseexception;
            parseexception;
            throw new JsonSyntaxException(parseexception);
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Time)obj, type, jsonserializationcontext);
        }

        public JsonElement serialize(Time time, Type type, JsonSerializationContext jsonserializationcontext)
        {
            DateFormat dateformat = format;
            dateformat;
            JVM INSTR monitorenter ;
            JsonPrimitive jsonprimitive = new JsonPrimitive(format.format(time));
            return jsonprimitive;
        }

        private final DateFormat format = new SimpleDateFormat("hh:mm:ss a");

        DefaultTimeTypeAdapter()
        {
        }
    }

    static class DefaultTimestampDeserializer
        implements JsonDeserializer
    {

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public Timestamp deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return new Timestamp(((Date)jsondeserializationcontext.deserialize(jsonelement, java/util/Date)).getTime());
        }

        DefaultTimestampDeserializer()
        {
        }
    }

    static class DefaultJavaSqlDateTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public java.sql.Date deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            if(!(jsonelement instanceof JsonPrimitive))
                throw new JsonParseException("The date should be a string value");
            DateFormat dateformat = format;
            dateformat;
            JVM INSTR monitorenter ;
            java.sql.Date date = new java.sql.Date(format.parse(jsonelement.getAsString()).getTime());
            return date;
            ParseException parseexception;
            parseexception;
            throw new JsonSyntaxException(parseexception);
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((java.sql.Date)obj, type, jsonserializationcontext);
        }

        public JsonElement serialize(java.sql.Date date, Type type, JsonSerializationContext jsonserializationcontext)
        {
            DateFormat dateformat = format;
            dateformat;
            JVM INSTR monitorenter ;
            JsonPrimitive jsonprimitive = new JsonPrimitive(format.format(date));
            return jsonprimitive;
        }

        private final DateFormat format = new SimpleDateFormat("MMM d, yyyy");

        DefaultJavaSqlDateTypeAdapter()
        {
        }
    }

    static class DefaultDateTypeAdapter
        implements JsonSerializer, JsonDeserializer
    {

        public volatile Object deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            return deserialize(jsonelement, type, jsondeserializationcontext);
        }

        public Date deserialize(JsonElement jsonelement, Type type, JsonDeserializationContext jsondeserializationcontext)
            throws JsonParseException
        {
            if(!(jsonelement instanceof JsonPrimitive))
                throw new JsonParseException("The date should be a string value");
            DateFormat dateformat = format;
            dateformat;
            JVM INSTR monitorenter ;
            Date date = format.parse(jsonelement.getAsString());
            return date;
            ParseException parseexception;
            parseexception;
            throw new JsonSyntaxException(parseexception);
        }

        public volatile JsonElement serialize(Object obj, Type type, JsonSerializationContext jsonserializationcontext)
        {
            return serialize((Date)obj, type, jsonserializationcontext);
        }

        public JsonElement serialize(Date date, Type type, JsonSerializationContext jsonserializationcontext)
        {
            DateFormat dateformat = format;
            dateformat;
            JVM INSTR monitorenter ;
            JsonPrimitive jsonprimitive = new JsonPrimitive(format.format(date));
            return jsonprimitive;
        }

        public String toString()
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append(com/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter.getSimpleName());
            stringbuilder.append('(').append(format.getClass().getSimpleName()).append(')');
            return stringbuilder.toString();
        }

        private final DateFormat format;

        DefaultDateTypeAdapter()
        {
            format = DateFormat.getDateTimeInstance();
        }

        DefaultDateTypeAdapter(int i)
        {
            format = DateFormat.getDateInstance(i);
        }

        public DefaultDateTypeAdapter(int i, int j)
        {
            format = DateFormat.getDateTimeInstance(i, j);
        }

        DefaultDateTypeAdapter(String s)
        {
            format = new SimpleDateFormat(s);
        }
    }


    DefaultTypeAdapters()
    {
    }

    private static ParameterizedTypeHandlerMap createDefaultDeserializers()
    {
        ParameterizedTypeHandlerMap parameterizedtypehandlermap = new ParameterizedTypeHandlerMap();
        parameterizedtypehandlermap.registerForTypeHierarchy(java/lang/Enum, wrapDeserializer(ENUM_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/net/URL, wrapDeserializer(URL_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/net/URI, wrapDeserializer(URI_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/util/UUID, wrapDeserializer(UUUID_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/util/Locale, wrapDeserializer(LOCALE_TYPE_ADAPTER));
        parameterizedtypehandlermap.registerForTypeHierarchy(java/util/Collection, wrapDeserializer(COLLECTION_TYPE_ADAPTER));
        parameterizedtypehandlermap.registerForTypeHierarchy(java/util/Map, wrapDeserializer(MAP_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/util/Date, wrapDeserializer(DATE_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/sql/Date, wrapDeserializer(JAVA_SQL_DATE_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/sql/Timestamp, wrapDeserializer(TIMESTAMP_DESERIALIZER));
        parameterizedtypehandlermap.register(java/sql/Time, wrapDeserializer(TIME_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/util/Calendar, GREGORIAN_CALENDAR_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/util/GregorianCalendar, GREGORIAN_CALENDAR_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/math/BigDecimal, wrapDeserializer(BIG_DECIMAL_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/math/BigInteger, wrapDeserializer(BIG_INTEGER_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/lang/Boolean, wrapDeserializer(BOOLEAN_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(Boolean.TYPE, wrapDeserializer(BOOLEAN_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/lang/Byte, wrapDeserializer(BYTE_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(Byte.TYPE, wrapDeserializer(BYTE_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/lang/Character, wrapDeserializer(CHARACTER_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(Character.TYPE, wrapDeserializer(CHARACTER_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/lang/Double, wrapDeserializer(DOUBLE_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(Double.TYPE, wrapDeserializer(DOUBLE_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/lang/Float, wrapDeserializer(FLOAT_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(Float.TYPE, wrapDeserializer(FLOAT_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/lang/Integer, wrapDeserializer(INTEGER_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(Integer.TYPE, wrapDeserializer(INTEGER_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/lang/Long, wrapDeserializer(LONG_DESERIALIZER));
        parameterizedtypehandlermap.register(Long.TYPE, wrapDeserializer(LONG_DESERIALIZER));
        parameterizedtypehandlermap.register(java/lang/Number, wrapDeserializer(NUMBER_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/lang/Short, wrapDeserializer(SHORT_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(Short.TYPE, wrapDeserializer(SHORT_TYPE_ADAPTER));
        parameterizedtypehandlermap.register(java/lang/String, wrapDeserializer(STRING_TYPE_ADAPTER));
        parameterizedtypehandlermap.makeUnmodifiable();
        return parameterizedtypehandlermap;
    }

    private static ParameterizedTypeHandlerMap createDefaultInstanceCreators()
    {
        ParameterizedTypeHandlerMap parameterizedtypehandlermap = new ParameterizedTypeHandlerMap();
        parameterizedtypehandlermap.registerForTypeHierarchy(java/util/Map, MAP_TYPE_ADAPTER);
        parameterizedtypehandlermap.registerForTypeHierarchy(java/util/Collection, COLLECTION_TYPE_ADAPTER);
        parameterizedtypehandlermap.registerForTypeHierarchy(java/util/Set, HASH_SET_CREATOR);
        parameterizedtypehandlermap.registerForTypeHierarchy(java/util/SortedSet, TREE_SET_CREATOR);
        parameterizedtypehandlermap.register(java/util/Properties, PROPERTIES_CREATOR);
        parameterizedtypehandlermap.makeUnmodifiable();
        return parameterizedtypehandlermap;
    }

    private static ParameterizedTypeHandlerMap createDefaultSerializers()
    {
        ParameterizedTypeHandlerMap parameterizedtypehandlermap = new ParameterizedTypeHandlerMap();
        parameterizedtypehandlermap.registerForTypeHierarchy(java/lang/Enum, ENUM_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/net/URL, URL_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/net/URI, URI_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/util/UUID, UUUID_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/util/Locale, LOCALE_TYPE_ADAPTER);
        parameterizedtypehandlermap.registerForTypeHierarchy(java/util/Collection, COLLECTION_TYPE_ADAPTER);
        parameterizedtypehandlermap.registerForTypeHierarchy(java/util/Map, MAP_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/util/Date, DATE_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/sql/Date, JAVA_SQL_DATE_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/sql/Timestamp, DATE_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/sql/Time, TIME_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/util/Calendar, GREGORIAN_CALENDAR_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/util/GregorianCalendar, GREGORIAN_CALENDAR_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/math/BigDecimal, BIG_DECIMAL_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/math/BigInteger, BIG_INTEGER_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/lang/Boolean, BOOLEAN_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(Boolean.TYPE, BOOLEAN_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/lang/Byte, BYTE_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(Byte.TYPE, BYTE_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/lang/Character, CHARACTER_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(Character.TYPE, CHARACTER_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/lang/Integer, INTEGER_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(Integer.TYPE, INTEGER_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/lang/Number, NUMBER_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/lang/Short, SHORT_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(Short.TYPE, SHORT_TYPE_ADAPTER);
        parameterizedtypehandlermap.register(java/lang/String, STRING_TYPE_ADAPTER);
        parameterizedtypehandlermap.makeUnmodifiable();
        return parameterizedtypehandlermap;
    }

    static ParameterizedTypeHandlerMap getDefaultDeserializers()
    {
        return DEFAULT_DESERIALIZERS;
    }

    static ParameterizedTypeHandlerMap getDefaultInstanceCreators()
    {
        return DEFAULT_INSTANCE_CREATORS;
    }

    static ParameterizedTypeHandlerMap getDefaultSerializers()
    {
        return getDefaultSerializers(false, LongSerializationPolicy.DEFAULT);
    }

    static ParameterizedTypeHandlerMap getDefaultSerializers(boolean flag, LongSerializationPolicy longserializationpolicy)
    {
        ParameterizedTypeHandlerMap parameterizedtypehandlermap = new ParameterizedTypeHandlerMap();
        DoubleSerializer doubleserializer = new DoubleSerializer(flag);
        parameterizedtypehandlermap.registerIfAbsent(java/lang/Double, doubleserializer);
        parameterizedtypehandlermap.registerIfAbsent(Double.TYPE, doubleserializer);
        FloatSerializer floatserializer = new FloatSerializer(flag);
        parameterizedtypehandlermap.registerIfAbsent(java/lang/Float, floatserializer);
        parameterizedtypehandlermap.registerIfAbsent(Float.TYPE, floatserializer);
        LongSerializer longserializer = new LongSerializer(longserializationpolicy);
        parameterizedtypehandlermap.registerIfAbsent(java/lang/Long, longserializer);
        parameterizedtypehandlermap.registerIfAbsent(Long.TYPE, longserializer);
        parameterizedtypehandlermap.registerIfAbsent(DEFAULT_SERIALIZERS);
        return parameterizedtypehandlermap;
    }

    private static JsonDeserializer wrapDeserializer(JsonDeserializer jsondeserializer)
    {
        return new JsonDeserializerExceptionWrapper(jsondeserializer);
    }

    private static final BigDecimalTypeAdapter BIG_DECIMAL_TYPE_ADAPTER = new BigDecimalTypeAdapter();
    private static final BigIntegerTypeAdapter BIG_INTEGER_TYPE_ADAPTER = new BigIntegerTypeAdapter();
    private static final BooleanTypeAdapter BOOLEAN_TYPE_ADAPTER = new BooleanTypeAdapter();
    private static final ByteTypeAdapter BYTE_TYPE_ADAPTER = new ByteTypeAdapter();
    private static final CharacterTypeAdapter CHARACTER_TYPE_ADAPTER = new CharacterTypeAdapter();
    private static final CollectionTypeAdapter COLLECTION_TYPE_ADAPTER = new CollectionTypeAdapter();
    private static final DefaultDateTypeAdapter DATE_TYPE_ADAPTER = new DefaultDateTypeAdapter();
    private static final ParameterizedTypeHandlerMap DEFAULT_DESERIALIZERS = createDefaultDeserializers();
    private static final ParameterizedTypeHandlerMap DEFAULT_INSTANCE_CREATORS = createDefaultInstanceCreators();
    private static final ParameterizedTypeHandlerMap DEFAULT_SERIALIZERS = createDefaultSerializers();
    private static final DoubleDeserializer DOUBLE_TYPE_ADAPTER = new DoubleDeserializer();
    private static final EnumTypeAdapter ENUM_TYPE_ADAPTER = new EnumTypeAdapter();
    private static final FloatDeserializer FLOAT_TYPE_ADAPTER = new FloatDeserializer();
    private static final GregorianCalendarTypeAdapter GREGORIAN_CALENDAR_TYPE_ADAPTER = new GregorianCalendarTypeAdapter();
    private static final HashSetCreator HASH_SET_CREATOR = new HashSetCreator();
    private static final IntegerTypeAdapter INTEGER_TYPE_ADAPTER = new IntegerTypeAdapter();
    private static final DefaultJavaSqlDateTypeAdapter JAVA_SQL_DATE_TYPE_ADAPTER = new DefaultJavaSqlDateTypeAdapter();
    private static final LocaleTypeAdapter LOCALE_TYPE_ADAPTER = new LocaleTypeAdapter();
    private static final LongDeserializer LONG_DESERIALIZER = new LongDeserializer();
    private static final MapTypeAdapter MAP_TYPE_ADAPTER = new MapTypeAdapter();
    private static final NumberTypeAdapter NUMBER_TYPE_ADAPTER = new NumberTypeAdapter();
    private static final PropertiesCreator PROPERTIES_CREATOR = new PropertiesCreator();
    private static final ShortTypeAdapter SHORT_TYPE_ADAPTER = new ShortTypeAdapter();
    private static final StringTypeAdapter STRING_TYPE_ADAPTER = new StringTypeAdapter();
    private static final DefaultTimestampDeserializer TIMESTAMP_DESERIALIZER = new DefaultTimestampDeserializer();
    private static final DefaultTimeTypeAdapter TIME_TYPE_ADAPTER = new DefaultTimeTypeAdapter();
    private static final TreeSetCreator TREE_SET_CREATOR = new TreeSetCreator();
    private static final UriTypeAdapter URI_TYPE_ADAPTER = new UriTypeAdapter();
    private static final UrlTypeAdapter URL_TYPE_ADAPTER = new UrlTypeAdapter();
    private static final UuidTypeAdapter UUUID_TYPE_ADAPTER = new UuidTypeAdapter();

}
