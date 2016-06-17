// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.gson.stream;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.gson.stream:
//            JsonScope, JsonToken, MalformedJsonException

public final class JsonReader
    implements Closeable
{

    public JsonReader(Reader reader)
    {
        lenient = false;
        pos = 0;
        limit = 0;
        push(JsonScope.EMPTY_DOCUMENT);
        skipping = false;
        if(reader == null)
        {
            throw new NullPointerException("in == null");
        } else
        {
            in = reader;
            return;
        }
    }

    private JsonToken advance()
        throws IOException
    {
        quickPeek();
        JsonToken jsontoken = token;
        hasToken = false;
        token = null;
        value = null;
        name = null;
        return jsontoken;
    }

    private void checkLenient()
        throws IOException
    {
        if(!lenient)
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        else
            return;
    }

    private void consumeNonExecutePrefix()
        throws IOException
    {
        nextNonWhitespace();
        pos = -1 + pos;
        if(pos + NON_EXECUTE_PREFIX.length <= limit || fillBuffer(NON_EXECUTE_PREFIX.length)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        for(int i = 0; i < NON_EXECUTE_PREFIX.length; i++)
            if(buffer[i + pos] != NON_EXECUTE_PREFIX[i])
                continue; /* Loop/switch isn't completed */

        pos = pos + NON_EXECUTE_PREFIX.length;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private void decodeLiteral()
        throws IOException
    {
        if(value.equalsIgnoreCase("null"))
            token = JsonToken.NULL;
        else
        if(value.equalsIgnoreCase("true") || value.equalsIgnoreCase("false"))
            token = JsonToken.BOOLEAN;
        else
            try
            {
                Double.parseDouble(value);
                token = JsonToken.NUMBER;
            }
            catch(NumberFormatException numberformatexception)
            {
                throw syntaxError("invalid number or unquoted string");
            }
    }

    private void expect(JsonToken jsontoken)
        throws IOException
    {
        quickPeek();
        if(token != jsontoken)
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected ").append(jsontoken).append(" but was ").append(peek()).toString());
        } else
        {
            advance();
            return;
        }
    }

    private boolean fillBuffer(int i)
        throws IOException
    {
        boolean flag = false;
        if(limit != pos)
        {
            limit = limit - pos;
            System.arraycopy(buffer, pos, buffer, 0, limit);
        } else
        {
            limit = 0;
        }
        pos = 0;
        do
        {
            int j = in.read(buffer, limit, buffer.length - limit);
            if(j == -1)
                break;
            limit = j + limit;
            if(limit < i)
                continue;
            flag = true;
            break;
        } while(true);
        return flag;
    }

    private CharSequence getSnippet()
    {
        StringBuilder stringbuilder = new StringBuilder();
        int i = Math.min(pos, 20);
        stringbuilder.append(buffer, pos - i, i);
        int j = Math.min(limit - pos, 20);
        stringbuilder.append(buffer, pos, j);
        return stringbuilder;
    }

    private JsonToken nextInArray(boolean flag)
        throws IOException
    {
        if(!flag) goto _L2; else goto _L1
_L1:
        replaceTop(JsonScope.NONEMPTY_ARRAY);
_L7:
        nextNonWhitespace();
        JVM INSTR lookupswitch 3: default 48
    //                   44: 166
    //                   59: 166
    //                   93: 140;
           goto _L3 _L4 _L4 _L5
_L3:
        JsonToken jsontoken;
        pos = -1 + pos;
        jsontoken = nextValue();
_L10:
        return jsontoken;
_L2:
        nextNonWhitespace();
        JVM INSTR lookupswitch 3: default 104
    //                   44: 11
    //                   59: 133
    //                   93: 111;
           goto _L6 _L7 _L8 _L9
_L6:
        throw syntaxError("Unterminated array");
_L9:
        pop();
        hasToken = true;
        jsontoken = JsonToken.END_ARRAY;
        token = jsontoken;
          goto _L10
_L8:
        checkLenient();
          goto _L7
_L5:
        if(!flag) goto _L4; else goto _L11
_L11:
        pop();
        hasToken = true;
        jsontoken = JsonToken.END_ARRAY;
        token = jsontoken;
          goto _L10
_L4:
        checkLenient();
        pos = -1 + pos;
        hasToken = true;
        value = "null";
        jsontoken = JsonToken.NULL;
        token = jsontoken;
          goto _L10
    }

    private JsonToken nextInObject(boolean flag)
        throws IOException
    {
        if(!flag) goto _L2; else goto _L1
_L1:
        nextNonWhitespace();
        JVM INSTR tableswitch 125 125: default 28
    //                   125 112;
           goto _L3 _L4
_L3:
        pos = -1 + pos;
          goto _L5
_L4:
        pop();
        hasToken = true;
        jsontoken = JsonToken.END_OBJECT;
        token = jsontoken;
_L7:
        return jsontoken;
_L2:
        switch(nextNonWhitespace())
        {
        default:
            throw syntaxError("Unterminated object");

        case 44: // ','
        case 59: // ';'
            break; /* Loop/switch isn't completed */

        case 125: // '}'
            pop();
            hasToken = true;
            jsontoken = JsonToken.END_OBJECT;
            token = jsontoken;
            break;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        int i = nextNonWhitespace();
        JsonToken jsontoken;
        switch(i)
        {
        default:
            checkLenient();
            pos = -1 + pos;
            name = nextLiteral();
            if(name.length() == 0)
                throw syntaxError("Expected name");
            break;

        case 39: // '\''
            checkLenient();
            // fall through

        case 34: // '"'
            name = nextString((char)i);
            break;
        }
        replaceTop(JsonScope.DANGLING_NAME);
        hasToken = true;
        jsontoken = JsonToken.NAME;
        token = jsontoken;
        if(true) goto _L7; else goto _L6
_L6:
        if(true) goto _L5; else goto _L8
_L8:
    }

    private String nextLiteral()
        throws IOException
    {
        StringBuilder stringbuilder = null;
_L7:
        int i = pos;
_L3:
        if(pos >= limit) goto _L2; else goto _L1
_L1:
        char ac[];
        int j;
        ac = buffer;
        j = pos;
        pos = j + 1;
        ac[j];
        JVM INSTR lookupswitch 16: default 180
    //                   9: 183
    //                   10: 183
    //                   12: 183
    //                   13: 183
    //                   32: 183
    //                   35: 208
    //                   44: 183
    //                   47: 208
    //                   58: 183
    //                   59: 208
    //                   61: 208
    //                   91: 183
    //                   92: 208
    //                   93: 183
    //                   123: 183
    //                   125: 183;
           goto _L3 _L4 _L4 _L4 _L4 _L4 _L5 _L4 _L5 _L4 _L5 _L5 _L4 _L5 _L4 _L4 _L4
_L4:
        String s;
        pos = -1 + pos;
        if(skipping)
            s = "skipped!";
        else
        if(stringbuilder == null)
        {
            s = new String(buffer, i, pos - i);
        } else
        {
            stringbuilder.append(buffer, i, pos - i);
            s = stringbuilder.toString();
        }
_L8:
        return s;
_L5:
        checkLenient();
          goto _L4
_L2:
        if(stringbuilder == null)
            stringbuilder = new StringBuilder();
        stringbuilder.append(buffer, i, pos - i);
        if(fillBuffer(1)) goto _L7; else goto _L6
_L6:
        s = stringbuilder.toString();
          goto _L8
    }

    private int nextNonWhitespace()
        throws IOException
    {
_L10:
        if(pos >= limit && !fillBuffer(1)) goto _L2; else goto _L1
_L1:
        char c;
        char ac[] = buffer;
        int i = pos;
        pos = i + 1;
        c = ac[i];
        c;
        JVM INSTR lookupswitch 6: default 100
    //                   9: 0
    //                   10: 0
    //                   13: 0
    //                   32: 0
    //                   35: 219
    //                   47: 102;
           goto _L3 _L4 _L4 _L4 _L4 _L5 _L6
_L4:
        continue; /* Loop/switch isn't completed */
_L8:
        return c;
_L6:
        if(pos != limit || fillBuffer(1))
        {
            checkLenient();
            switch(buffer[pos])
            {
            case 42: // '*'
                pos = 1 + pos;
                if(!skipTo("*/"))
                    throw syntaxError("Unterminated comment");
                pos = 2 + pos;
                continue; /* Loop/switch isn't completed */

            case 47: // '/'
                pos = 1 + pos;
                skipToEndOfLine();
                continue; /* Loop/switch isn't completed */
            }
        }
_L3:
        if(true) goto _L8; else goto _L7
_L7:
_L5:
        checkLenient();
        skipToEndOfLine();
        continue; /* Loop/switch isn't completed */
_L2:
        throw new EOFException("End of input");
        if(true) goto _L10; else goto _L9
_L9:
    }

    private String nextString(char c)
        throws IOException
    {
        StringBuilder stringbuilder = null;
        do
        {
            int i = pos;
            do
            {
                if(pos >= limit)
                    break;
                char ac[] = buffer;
                int j = pos;
                pos = j + 1;
                char c1 = ac[j];
                if(c1 == c)
                {
                    String s;
                    if(skipping)
                        s = "skipped!";
                    else
                    if(stringbuilder == null)
                    {
                        s = new String(buffer, i, -1 + (pos - i));
                    } else
                    {
                        stringbuilder.append(buffer, i, -1 + (pos - i));
                        s = stringbuilder.toString();
                    }
                    return s;
                }
                if(c1 == '\\')
                {
                    if(stringbuilder == null)
                        stringbuilder = new StringBuilder();
                    stringbuilder.append(buffer, i, -1 + (pos - i));
                    stringbuilder.append(readEscapeCharacter());
                    i = pos;
                }
            } while(true);
            if(stringbuilder == null)
                stringbuilder = new StringBuilder();
            stringbuilder.append(buffer, i, pos - i);
        } while(fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    private JsonToken nextValue()
        throws IOException
    {
        int i = nextNonWhitespace();
        i;
        JVM INSTR lookupswitch 4: default 48
    //                   34: 118
    //                   39: 114
    //                   91: 90
    //                   123: 66;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        JsonToken jsontoken;
        pos = -1 + pos;
        jsontoken = readLiteral();
_L7:
        return jsontoken;
_L5:
        push(JsonScope.EMPTY_OBJECT);
        hasToken = true;
        jsontoken = JsonToken.BEGIN_OBJECT;
        token = jsontoken;
        continue; /* Loop/switch isn't completed */
_L4:
        push(JsonScope.EMPTY_ARRAY);
        hasToken = true;
        jsontoken = JsonToken.BEGIN_ARRAY;
        token = jsontoken;
        continue; /* Loop/switch isn't completed */
_L3:
        checkLenient();
_L2:
        value = nextString((char)i);
        hasToken = true;
        jsontoken = JsonToken.STRING;
        token = jsontoken;
        if(true) goto _L7; else goto _L6
_L6:
    }

    private JsonToken objectValue()
        throws IOException
    {
        switch(nextNonWhitespace())
        {
        case 59: // ';'
        case 60: // '<'
        default:
            throw syntaxError("Expected ':'");

        case 61: // '='
            checkLenient();
            if((pos < limit || fillBuffer(1)) && buffer[pos] == '>')
                pos = 1 + pos;
            // fall through

        case 58: // ':'
            replaceTop(JsonScope.NONEMPTY_OBJECT);
            return nextValue();
        }
    }

    private JsonScope peekStack()
    {
        return (JsonScope)stack.get(-1 + stack.size());
    }

    private JsonScope pop()
    {
        return (JsonScope)stack.remove(-1 + stack.size());
    }

    private void push(JsonScope jsonscope)
    {
        stack.add(jsonscope);
    }

    private JsonToken quickPeek()
        throws IOException
    {
        if(!hasToken) goto _L2; else goto _L1
_L1:
        JsonToken jsontoken = token;
_L4:
        return jsontoken;
_L2:
        class _cls1
        {

            static final int $SwitchMap$com$google$gson$stream$JsonScope[];

            static 
            {
                $SwitchMap$com$google$gson$stream$JsonScope = new int[JsonScope.values().length];
                NoSuchFieldError nosuchfielderror7;
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.EMPTY_DOCUMENT.ordinal()] = 1;
                }
                catch(NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.EMPTY_ARRAY.ordinal()] = 2;
                }
                catch(NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.NONEMPTY_ARRAY.ordinal()] = 3;
                }
                catch(NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.EMPTY_OBJECT.ordinal()] = 4;
                }
                catch(NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.DANGLING_NAME.ordinal()] = 5;
                }
                catch(NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.NONEMPTY_OBJECT.ordinal()] = 6;
                }
                catch(NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.NONEMPTY_DOCUMENT.ordinal()] = 7;
                }
                catch(NoSuchFieldError nosuchfielderror6) { }
                $SwitchMap$com$google$gson$stream$JsonScope[JsonScope.CLOSED.ordinal()] = 8;
_L2:
                return;
                nosuchfielderror7;
                if(true) goto _L2; else goto _L1
_L1:
            }
        }

        switch(_cls1..SwitchMap.com.google.gson.stream.JsonScope[peekStack().ordinal()])
        {
        default:
            throw new AssertionError();

        case 1: // '\001'
            if(lenient)
                consumeNonExecutePrefix();
            replaceTop(JsonScope.NONEMPTY_DOCUMENT);
            jsontoken = nextValue();
            if(!lenient && jsontoken != JsonToken.BEGIN_ARRAY && jsontoken != JsonToken.BEGIN_OBJECT)
                syntaxError("Expected JSON document to start with '[' or '{'");
            break;

        case 2: // '\002'
            jsontoken = nextInArray(true);
            break;

        case 3: // '\003'
            jsontoken = nextInArray(false);
            break;

        case 4: // '\004'
            jsontoken = nextInObject(true);
            break;

        case 5: // '\005'
            jsontoken = objectValue();
            break;

        case 6: // '\006'
            jsontoken = nextInObject(false);
            break;

        case 7: // '\007'
            try
            {
                JsonToken jsontoken1 = nextValue();
                if(lenient)
                    jsontoken = jsontoken1;
                else
                    throw syntaxError("Expected EOF");
            }
            catch(EOFException eofexception)
            {
                hasToken = true;
                jsontoken = JsonToken.END_DOCUMENT;
                token = jsontoken;
            }
            break;

        case 8: // '\b'
            throw new IllegalStateException("JsonReader is closed");
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private char readEscapeCharacter()
        throws IOException
    {
        char c;
        if(pos == limit && !fillBuffer(1))
            throw syntaxError("Unterminated escape sequence");
        char ac[] = buffer;
        int i = pos;
        pos = i + 1;
        c = ac[i];
        c;
        JVM INSTR lookupswitch 6: default 108
    //                   98: 185
    //                   102: 203
    //                   110: 191
    //                   114: 197
    //                   116: 179
    //                   117: 110;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        return c;
_L7:
        if(4 + pos > limit && !fillBuffer(4))
            throw syntaxError("Unterminated escape sequence");
        String s = new String(buffer, pos, 4);
        pos = 4 + pos;
        c = (char)Integer.parseInt(s, 16);
        continue; /* Loop/switch isn't completed */
_L6:
        c = '\t';
        continue; /* Loop/switch isn't completed */
_L2:
        c = '\b';
        continue; /* Loop/switch isn't completed */
_L4:
        c = '\n';
        continue; /* Loop/switch isn't completed */
_L5:
        c = '\r';
        continue; /* Loop/switch isn't completed */
_L3:
        c = '\f';
        if(true) goto _L1; else goto _L8
_L8:
    }

    private JsonToken readLiteral()
        throws IOException
    {
        String s = nextLiteral();
        if(s.length() == 0)
        {
            throw syntaxError("Expected literal value");
        } else
        {
            value = s;
            hasToken = true;
            token = null;
            return null;
        }
    }

    private void replaceTop(JsonScope jsonscope)
    {
        stack.set(-1 + stack.size(), jsonscope);
    }

    private boolean skipTo(String s)
        throws IOException
    {
_L6:
        if(pos + s.length() >= limit && !fillBuffer(s.length())) goto _L2; else goto _L1
_L1:
        boolean flag;
        int i = 0;
        do
        {
            if(i >= s.length())
                break;
            if(buffer[i + pos] != s.charAt(i))
            {
                pos = 1 + pos;
                continue; /* Loop/switch isn't completed */
            }
            i++;
        } while(true);
        flag = true;
_L4:
        return flag;
_L2:
        flag = false;
        if(true) goto _L4; else goto _L3
_L3:
        if(true) goto _L6; else goto _L5
_L5:
    }

    private void skipToEndOfLine()
        throws IOException
    {
        char c;
        do
        {
            if(pos >= limit && !fillBuffer(1))
                break;
            char ac[] = buffer;
            int i = pos;
            pos = i + 1;
            c = ac[i];
        } while(c != '\r' && c != '\n');
    }

    private IOException syntaxError(String s)
        throws IOException
    {
        throw new MalformedJsonException((new StringBuilder()).append(s).append(" near ").append(getSnippet()).toString());
    }

    public void beginArray()
        throws IOException
    {
        expect(JsonToken.BEGIN_ARRAY);
    }

    public void beginObject()
        throws IOException
    {
        expect(JsonToken.BEGIN_OBJECT);
    }

    public void close()
        throws IOException
    {
        hasToken = false;
        value = null;
        token = null;
        stack.clear();
        stack.add(JsonScope.CLOSED);
        in.close();
    }

    public void endArray()
        throws IOException
    {
        expect(JsonToken.END_ARRAY);
    }

    public void endObject()
        throws IOException
    {
        expect(JsonToken.END_OBJECT);
    }

    public boolean hasNext()
        throws IOException
    {
        quickPeek();
        boolean flag;
        if(token != JsonToken.END_OBJECT && token != JsonToken.END_ARRAY)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean isLenient()
    {
        return lenient;
    }

    public boolean nextBoolean()
        throws IOException
    {
        quickPeek();
        if(value == null || token == JsonToken.STRING)
            throw new IllegalStateException((new StringBuilder()).append("Expected a boolean but was ").append(peek()).toString());
        boolean flag;
        if(value.equalsIgnoreCase("true"))
            flag = true;
        else
        if(value.equalsIgnoreCase("false"))
            flag = false;
        else
            throw new IllegalStateException((new StringBuilder()).append("Not a boolean: ").append(value).toString());
        advance();
        return flag;
    }

    public double nextDouble()
        throws IOException
    {
        quickPeek();
        if(value == null)
            throw new IllegalStateException((new StringBuilder()).append("Expected a double but was ").append(peek()).toString());
        double d = Double.parseDouble(value);
        if(d >= 1.0D && value.startsWith("0"))
            throw new NumberFormatException((new StringBuilder()).append("JSON forbids octal prefixes: ").append(value).toString());
        if(!lenient && (Double.isNaN(d) || Double.isInfinite(d)))
        {
            throw new NumberFormatException((new StringBuilder()).append("JSON forbids NaN and infinities: ").append(value).toString());
        } else
        {
            advance();
            return d;
        }
    }

    public int nextInt()
        throws IOException
    {
        quickPeek();
        if(value == null)
            throw new IllegalStateException((new StringBuilder()).append("Expected an int but was ").append(peek()).toString());
        int j = Integer.parseInt(value);
        int i = j;
_L1:
        NumberFormatException numberformatexception;
        if((long)i >= 1L && value.startsWith("0"))
        {
            throw new NumberFormatException((new StringBuilder()).append("JSON forbids octal prefixes: ").append(value).toString());
        } else
        {
            advance();
            return i;
        }
        numberformatexception;
        double d = Double.parseDouble(value);
        i = (int)d;
        if((double)i != d)
            throw new NumberFormatException(value);
          goto _L1
    }

    public long nextLong()
        throws IOException
    {
        quickPeek();
        if(value == null)
            throw new IllegalStateException((new StringBuilder()).append("Expected a long but was ").append(peek()).toString());
        long l1 = Long.parseLong(value);
        long l = l1;
_L1:
        NumberFormatException numberformatexception;
        if(l >= 1L && value.startsWith("0"))
        {
            throw new NumberFormatException((new StringBuilder()).append("JSON forbids octal prefixes: ").append(value).toString());
        } else
        {
            advance();
            return l;
        }
        numberformatexception;
        double d = Double.parseDouble(value);
        l = (long)d;
        if((double)l != d)
            throw new NumberFormatException(value);
          goto _L1
    }

    public String nextName()
        throws IOException
    {
        quickPeek();
        if(token != JsonToken.NAME)
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected a name but was ").append(peek()).toString());
        } else
        {
            String s = name;
            advance();
            return s;
        }
    }

    public void nextNull()
        throws IOException
    {
        quickPeek();
        if(value == null || token == JsonToken.STRING)
            throw new IllegalStateException((new StringBuilder()).append("Expected null but was ").append(peek()).toString());
        if(!value.equalsIgnoreCase("null"))
        {
            throw new IllegalStateException((new StringBuilder()).append("Not a null: ").append(value).toString());
        } else
        {
            advance();
            return;
        }
    }

    public String nextString()
        throws IOException
    {
        peek();
        if(value == null || token != JsonToken.STRING && token != JsonToken.NUMBER)
        {
            throw new IllegalStateException((new StringBuilder()).append("Expected a string but was ").append(peek()).toString());
        } else
        {
            String s = value;
            advance();
            return s;
        }
    }

    public JsonToken peek()
        throws IOException
    {
        quickPeek();
        if(token == null)
            decodeLiteral();
        return token;
    }

    public void setLenient(boolean flag)
    {
        lenient = flag;
    }

    public void skipValue()
        throws IOException
    {
        int i;
        skipping = true;
        i = 0;
_L7:
        JsonToken jsontoken = advance();
        if(jsontoken == JsonToken.BEGIN_ARRAY) goto _L2; else goto _L1
_L1:
        JsonToken jsontoken1 = JsonToken.BEGIN_OBJECT;
        if(jsontoken != jsontoken1) goto _L3; else goto _L2
_L2:
        i++;
_L5:
        if(i == 0)
        {
            skipping = false;
            return;
        }
        break; /* Loop/switch isn't completed */
_L3:
        JsonToken jsontoken2;
        if(jsontoken == JsonToken.END_ARRAY)
            break MISSING_BLOCK_LABEL_61;
        jsontoken2 = JsonToken.END_OBJECT;
        if(jsontoken != jsontoken2)
            continue; /* Loop/switch isn't completed */
        i--;
        if(true) goto _L5; else goto _L4
_L4:
        if(true) goto _L7; else goto _L6
_L6:
        Exception exception;
        exception;
        skipping = false;
        throw exception;
    }

    public String toString()
    {
        return (new StringBuilder()).append(getClass().getSimpleName()).append(" near ").append(getSnippet()).toString();
    }

    private static final char NON_EXECUTE_PREFIX[] = ")]}'\n".toCharArray();
    private final char buffer[] = new char[1024];
    private boolean hasToken;
    private final Reader in;
    private boolean lenient;
    private int limit;
    private String name;
    private int pos;
    private boolean skipping;
    private final List stack = new ArrayList();
    private JsonToken token;
    private String value;

}
