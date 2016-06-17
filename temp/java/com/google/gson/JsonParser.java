// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.*;

// Referenced classes of package com.google.gson:
//            JsonIOException, JsonSyntaxException, JsonParseException, Streams, 
//            JsonNull, JsonElement

public final class JsonParser
{

    public JsonParser()
    {
    }

    public JsonElement parse(JsonReader jsonreader)
        throws JsonIOException, JsonSyntaxException
    {
        boolean flag;
        flag = jsonreader.isLenient();
        jsonreader.setLenient(true);
        JsonElement jsonelement = Streams.parse(jsonreader);
        Object obj;
        obj = jsonelement;
        jsonreader.setLenient(flag);
_L2:
        return ((JsonElement) (obj));
        StackOverflowError stackoverflowerror;
        stackoverflowerror;
        throw new JsonParseException((new StringBuilder()).append("Failed parsing JSON source: ").append(jsonreader).append(" to Json").toString(), stackoverflowerror);
        Exception exception;
        exception;
        jsonreader.setLenient(flag);
        throw exception;
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        throw new JsonParseException((new StringBuilder()).append("Failed parsing JSON source: ").append(jsonreader).append(" to Json").toString(), outofmemoryerror);
        JsonParseException jsonparseexception;
        jsonparseexception;
        JsonNull jsonnull;
        if(!(jsonparseexception.getCause() instanceof EOFException))
            break; /* Loop/switch isn't completed */
        jsonnull = JsonNull.createJsonNull();
        obj = jsonnull;
        jsonreader.setLenient(flag);
        if(true) goto _L2; else goto _L1
_L1:
        throw jsonparseexception;
    }

    public JsonElement parse(Reader reader)
        throws JsonIOException, JsonSyntaxException
    {
        JsonElement jsonelement;
        try
        {
            JsonReader jsonreader = new JsonReader(reader);
            jsonelement = parse(jsonreader);
            if(!jsonelement.isJsonNull() && jsonreader.peek() != JsonToken.END_DOCUMENT)
                throw new JsonSyntaxException("Did not consume the entire document.");
        }
        catch(MalformedJsonException malformedjsonexception)
        {
            throw new JsonSyntaxException(malformedjsonexception);
        }
        catch(IOException ioexception)
        {
            throw new JsonIOException(ioexception);
        }
        catch(NumberFormatException numberformatexception)
        {
            throw new JsonSyntaxException(numberformatexception);
        }
        return jsonelement;
    }

    public JsonElement parse(String s)
        throws JsonSyntaxException
    {
        return parse(((Reader) (new StringReader(s))));
    }
}
