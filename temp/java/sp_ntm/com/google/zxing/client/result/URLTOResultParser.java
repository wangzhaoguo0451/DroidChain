// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result;

import com.google.zxing.Result;

// Referenced classes of package com.google.zxing.client.result:
//            URIParsedResult

final class URLTOResultParser
{

    private URLTOResultParser()
    {
    }

    public static URIParsedResult parse(Result result)
    {
        Object obj;
        String s;
        obj = null;
        s = result.getText();
        if(s != null && (s.startsWith("urlto:") || s.startsWith("URLTO:"))) goto _L2; else goto _L1
_L1:
        return ((URIParsedResult) (obj));
_L2:
        int i = s.indexOf(':', 6);
        if(i >= 0)
        {
            if(i > 6)
                obj = s.substring(6, i);
            obj = new URIParsedResult(s.substring(i + 1), ((String) (obj)));
        }
        if(true) goto _L1; else goto _L3
_L3:
    }
}
