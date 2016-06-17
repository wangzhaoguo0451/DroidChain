// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result;

import com.google.zxing.Result;

// Referenced classes of package com.google.zxing.client.result:
//            ResultParser, SMSParsedResult

final class SMSTOMMSTOResultParser extends ResultParser
{

    private SMSTOMMSTOResultParser()
    {
    }

    public static SMSParsedResult parse(Result result)
    {
        SMSParsedResult smsparsedresult;
        String s;
        smsparsedresult = null;
        s = result.getText();
        break MISSING_BLOCK_LABEL_7;
        if(s != null && (s.startsWith("smsto:") || s.startsWith("SMSTO:") || s.startsWith("mmsto:") || s.startsWith("MMSTO:")))
        {
            String s1 = s.substring(6);
            String s2 = null;
            int i = s1.indexOf(':');
            if(i >= 0)
            {
                s2 = s1.substring(i + 1);
                s1 = s1.substring(0, i);
            }
            smsparsedresult = new SMSParsedResult(s1, null, null, s2);
        }
        return smsparsedresult;
    }
}
