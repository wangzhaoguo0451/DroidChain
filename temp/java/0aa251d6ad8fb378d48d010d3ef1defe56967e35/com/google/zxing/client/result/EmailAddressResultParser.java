// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.Hashtable;

// Referenced classes of package com.google.zxing.client.result:
//            ResultParser, EmailAddressParsedResult, EmailDoCoMoResultParser

final class EmailAddressResultParser extends ResultParser
{

    EmailAddressResultParser()
    {
    }

    public static EmailAddressParsedResult parse(Result result)
    {
        EmailAddressParsedResult emailaddressparsedresult;
        String s;
        emailaddressparsedresult = null;
        s = result.getText();
        if(s != null) goto _L2; else goto _L1
_L1:
        return emailaddressparsedresult;
_L2:
        if(s.startsWith("mailto:") || s.startsWith("MAILTO:"))
        {
            String s1 = s.substring(7);
            int i = s1.indexOf('?');
            if(i >= 0)
                s1 = s1.substring(0, i);
            Hashtable hashtable = parseNameValuePairs(s);
            String s2 = null;
            String s3 = null;
            if(hashtable != null)
            {
                if(s1.length() == 0)
                    s1 = (String)hashtable.get("to");
                s2 = (String)hashtable.get("subject");
                s3 = (String)hashtable.get("body");
            }
            emailaddressparsedresult = new EmailAddressParsedResult(s1, s2, s3, s);
        } else
        if(EmailDoCoMoResultParser.isBasicallyValidEmailAddress(s))
            emailaddressparsedresult = new EmailAddressParsedResult(s, null, null, "mailto:" + s);
        if(true) goto _L1; else goto _L3
_L3:
    }
}
