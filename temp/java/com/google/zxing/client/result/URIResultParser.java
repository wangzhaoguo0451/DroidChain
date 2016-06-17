// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result;

import com.google.zxing.Result;

// Referenced classes of package com.google.zxing.client.result:
//            ResultParser, URIParsedResult

final class URIResultParser extends ResultParser
{

    private URIResultParser()
    {
    }

    static boolean isBasicallyValidURI(String s)
    {
        boolean flag = false;
        if(s != null && s.indexOf(' ') < 0 && s.indexOf('\n') < 0) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        int i = s.indexOf('.');
        if(i >= -2 + s.length())
            continue; /* Loop/switch isn't completed */
        int j = s.indexOf(':');
        if(i < 0 && j < 0)
            continue; /* Loop/switch isn't completed */
        if(j >= 0)
            if(i < 0 || i > j)
            {
                for(int k = 0; k < j; k++)
                {
                    char c = s.charAt(k);
                    if((c < 'a' || c > 'z') && (c < 'A' || c > 'Z'))
                        continue; /* Loop/switch isn't completed */
                }

            } else
            {
                if(j >= -2 + s.length())
                    continue; /* Loop/switch isn't completed */
                for(int l = j + 1; l < j + 3; l++)
                {
                    char c1 = s.charAt(l);
                    if(c1 < '0' || c1 > '9')
                        continue; /* Loop/switch isn't completed */
                }

            }
        flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static URIParsedResult parse(Result result)
    {
        URIParsedResult uriparsedresult = null;
        String s = result.getText();
        if(s != null && s.startsWith("URL:"))
            s = s.substring(4);
        if(isBasicallyValidURI(s))
            uriparsedresult = new URIParsedResult(s, null);
        return uriparsedresult;
    }
}
