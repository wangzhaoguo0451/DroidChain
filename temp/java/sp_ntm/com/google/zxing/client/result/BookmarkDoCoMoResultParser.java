// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result;

import com.google.zxing.Result;

// Referenced classes of package com.google.zxing.client.result:
//            AbstractDoCoMoResultParser, URIResultParser, URIParsedResult

final class BookmarkDoCoMoResultParser extends AbstractDoCoMoResultParser
{

    private BookmarkDoCoMoResultParser()
    {
    }

    public static URIParsedResult parse(Result result)
    {
        URIParsedResult uriparsedresult;
        String s;
        uriparsedresult = null;
        s = result.getText();
        if(s != null && s.startsWith("MEBKM:")) goto _L2; else goto _L1
_L1:
        return uriparsedresult;
_L2:
        String s1 = matchSingleDoCoMoPrefixedField("TITLE:", s, true);
        String as[] = matchDoCoMoPrefixedField("URL:", s, true);
        if(as != null)
        {
            String s2 = as[0];
            if(URIResultParser.isBasicallyValidURI(s2))
                uriparsedresult = new URIParsedResult(s2, s1);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }
}
