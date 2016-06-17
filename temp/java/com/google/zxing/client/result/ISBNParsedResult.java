// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result;


// Referenced classes of package com.google.zxing.client.result:
//            ParsedResult, ParsedResultType

public final class ISBNParsedResult extends ParsedResult
{

    ISBNParsedResult(String s)
    {
        super(ParsedResultType.ISBN);
        isbn = s;
    }

    public String getDisplayResult()
    {
        return isbn;
    }

    public String getISBN()
    {
        return isbn;
    }

    private final String isbn;
}
