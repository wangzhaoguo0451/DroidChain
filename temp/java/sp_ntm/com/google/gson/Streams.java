// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.google.gson.stream.MalformedJsonException;
import java.io.*;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.google.gson:
//            JsonParseException, JsonNull, JsonIOException, JsonSyntaxException, 
//            JsonPrimitive, JsonArray, JsonObject, JsonElement

final class Streams
{
    private static class AppendableWriter extends Writer
    {
        static class CurrentWrite
            implements CharSequence
        {

            public char charAt(int i)
            {
                return chars[i];
            }

            public int length()
            {
                return chars.length;
            }

            public CharSequence subSequence(int i, int j)
            {
                return new String(chars, i, j - i);
            }

            char chars[];

            CurrentWrite()
            {
            }
        }


        public void close()
        {
        }

        public void flush()
        {
        }

        public void write(int i)
            throws IOException
        {
            appendable.append((char)i);
        }

        public void write(char ac[], int i, int j)
            throws IOException
        {
            currentWrite.chars = ac;
            appendable.append(currentWrite, i, i + j);
        }

        private final Appendable appendable;
        private final CurrentWrite currentWrite;

        private AppendableWriter(Appendable appendable1)
        {
            currentWrite = new CurrentWrite();
            appendable = appendable1;
        }

    }


    Streams()
    {
    }

    static JsonElement parse(JsonReader jsonreader)
        throws JsonParseException
    {
        boolean flag = true;
        JsonElement jsonelement;
        jsonreader.peek();
        flag = false;
        jsonelement = parseRecursive(jsonreader);
        Object obj = jsonelement;
_L2:
        return ((JsonElement) (obj));
        EOFException eofexception;
        eofexception;
        if(flag)
            obj = JsonNull.createJsonNull();
        else
            throw new JsonIOException(eofexception);
        if(true) goto _L2; else goto _L1
_L1:
        MalformedJsonException malformedjsonexception;
        malformedjsonexception;
        throw new JsonSyntaxException(malformedjsonexception);
        IOException ioexception;
        ioexception;
        throw new JsonIOException(ioexception);
        NumberFormatException numberformatexception;
        numberformatexception;
        throw new JsonSyntaxException(numberformatexception);
    }

    private static JsonElement parseRecursive(JsonReader jsonreader)
        throws IOException
    {
        class _cls1
        {

            static final int $SwitchMap$com$google$gson$stream$JsonToken[];

            static 
            {
                $SwitchMap$com$google$gson$stream$JsonToken = new int[JsonToken.values().length];
                NoSuchFieldError nosuchfielderror9;
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.STRING.ordinal()] = 1;
                }
                catch(NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NUMBER.ordinal()] = 2;
                }
                catch(NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BOOLEAN.ordinal()] = 3;
                }
                catch(NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NULL.ordinal()] = 4;
                }
                catch(NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_ARRAY.ordinal()] = 5;
                }
                catch(NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_OBJECT.ordinal()] = 6;
                }
                catch(NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_DOCUMENT.ordinal()] = 7;
                }
                catch(NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NAME.ordinal()] = 8;
                }
                catch(NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_OBJECT.ordinal()] = 9;
                }
                catch(NoSuchFieldError nosuchfielderror8) { }
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_ARRAY.ordinal()] = 10;
_L2:
                return;
                nosuchfielderror9;
                if(true) goto _L2; else goto _L1
_L1:
            }
        }

        _cls1..SwitchMap.com.google.gson.stream.JsonToken[jsonreader.peek().ordinal()];
        JVM INSTR tableswitch 1 6: default 48
    //                   1 56
    //                   2 70
    //                   3 88
    //                   4 106
    //                   5 117
    //                   6 154;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        throw new IllegalArgumentException();
_L2:
        Object obj = new JsonPrimitive(jsonreader.nextString());
_L9:
        return ((JsonElement) (obj));
_L3:
        obj = new JsonPrimitive(JsonPrimitive.stringToNumber(jsonreader.nextString()));
        continue; /* Loop/switch isn't completed */
_L4:
        obj = new JsonPrimitive(Boolean.valueOf(jsonreader.nextBoolean()));
        continue; /* Loop/switch isn't completed */
_L5:
        jsonreader.nextNull();
        obj = JsonNull.createJsonNull();
        continue; /* Loop/switch isn't completed */
_L6:
        obj = new JsonArray();
        jsonreader.beginArray();
        for(; jsonreader.hasNext(); ((JsonArray) (obj)).add(parseRecursive(jsonreader)));
        jsonreader.endArray();
        continue; /* Loop/switch isn't completed */
_L7:
        JsonObject jsonobject = new JsonObject();
        jsonreader.beginObject();
        for(; jsonreader.hasNext(); jsonobject.add(jsonreader.nextName(), parseRecursive(jsonreader)));
        jsonreader.endObject();
        obj = jsonobject;
        if(true) goto _L9; else goto _L8
_L8:
    }

    static void write(JsonElement jsonelement, boolean flag, JsonWriter jsonwriter)
        throws IOException
    {
        if(jsonelement == null || jsonelement.isJsonNull())
        {
            if(flag)
                jsonwriter.nullValue();
        } else
        if(jsonelement.isJsonPrimitive())
        {
            JsonPrimitive jsonprimitive = jsonelement.getAsJsonPrimitive();
            if(jsonprimitive.isNumber())
                jsonwriter.value(jsonprimitive.getAsNumber());
            else
            if(jsonprimitive.isBoolean())
                jsonwriter.value(jsonprimitive.getAsBoolean());
            else
                jsonwriter.value(jsonprimitive.getAsString());
        } else
        if(jsonelement.isJsonArray())
        {
            jsonwriter.beginArray();
            for(Iterator iterator1 = jsonelement.getAsJsonArray().iterator(); iterator1.hasNext();)
            {
                JsonElement jsonelement2 = (JsonElement)iterator1.next();
                if(jsonelement2.isJsonNull())
                    jsonwriter.nullValue();
                else
                    write(jsonelement2, flag, jsonwriter);
            }

            jsonwriter.endArray();
        } else
        if(jsonelement.isJsonObject())
        {
            jsonwriter.beginObject();
            Iterator iterator = jsonelement.getAsJsonObject().entrySet().iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                JsonElement jsonelement1 = (JsonElement)entry.getValue();
                if(flag || !jsonelement1.isJsonNull())
                {
                    jsonwriter.name((String)entry.getKey());
                    write(jsonelement1, flag, jsonwriter);
                }
            } while(true);
            jsonwriter.endObject();
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Couldn't write ").append(jsonelement.getClass()).toString());
        }
    }

    static Writer writerForAppendable(Appendable appendable)
    {
        Object obj;
        if(appendable instanceof Writer)
            obj = (Writer)appendable;
        else
            obj = new AppendableWriter(appendable, null);
        return ((Writer) (obj));
    }
}
