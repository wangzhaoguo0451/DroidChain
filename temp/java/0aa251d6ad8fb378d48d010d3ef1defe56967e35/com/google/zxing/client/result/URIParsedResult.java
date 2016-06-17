// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result;


// Referenced classes of package com.google.zxing.client.result:
//            ParsedResult, ParsedResultType

public final class URIParsedResult extends ParsedResult
{

    public URIParsedResult(String s, String s1)
    {
        super(ParsedResultType.URI);
        uri = massageURI(s);
        title = s1;
    }

    private boolean containsUser()
    {
        int i = 1 + uri.indexOf(':');
        int j;
        for(j = uri.length(); i < j && uri.charAt(i) == '/'; i++);
        int k = uri.indexOf('/', i);
        if(k < 0)
            k = j;
        int l = uri.indexOf('@', i);
        boolean flag;
        if(l >= i && l < k)
            flag = true;
        else
            flag = false;
        return flag;
    }

    private static boolean isColonFollowedByPortNumber(String s, int i)
    {
        boolean flag;
        int j;
        flag = false;
        j = s.indexOf('/', i + 1);
        if(j < 0)
            j = s.length();
        if(j > i + 1) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        for(int k = i + 1; k < j; k++)
            if(s.charAt(k) < '0' || s.charAt(k) > '9')
                continue; /* Loop/switch isn't completed */

        flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static String massageURI(String s)
    {
        int i = s.indexOf(':');
        String s1;
        if(i < 0)
            s1 = "http://" + s;
        else
        if(isColonFollowedByPortNumber(s, i))
            s1 = "http://" + s;
        else
            s1 = s.substring(0, i).toLowerCase() + s.substring(i);
        return s1;
    }

    public String getDisplayResult()
    {
        StringBuffer stringbuffer = new StringBuffer(30);
        maybeAppend(title, stringbuffer);
        maybeAppend(uri, stringbuffer);
        return stringbuffer.toString();
    }

    public String getTitle()
    {
        return title;
    }

    public String getURI()
    {
        return uri;
    }

    public boolean isPossiblyMaliciousURI()
    {
        return containsUser();
    }

    private final String title;
    private final String uri;
}
