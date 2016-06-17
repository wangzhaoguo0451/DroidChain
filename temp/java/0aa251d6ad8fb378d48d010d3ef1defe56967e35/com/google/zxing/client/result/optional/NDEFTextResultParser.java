// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result.optional;

import com.google.zxing.Result;
import com.google.zxing.client.result.TextParsedResult;

// Referenced classes of package com.google.zxing.client.result.optional:
//            AbstractNDEFResultParser, NDEFRecord

final class NDEFTextResultParser extends AbstractNDEFResultParser
{

    NDEFTextResultParser()
    {
    }

    static String[] decodeTextPayload(byte abyte0[])
    {
        byte byte0 = abyte0[0];
        boolean flag;
        int i;
        String s;
        String s1;
        String s2;
        String as[];
        if((byte0 & 0x80) != 0)
            flag = true;
        else
            flag = false;
        i = byte0 & 0x1f;
        s = bytesToString(abyte0, 1, i, "US-ASCII");
        if(flag)
            s1 = "UTF-16";
        else
            s1 = "UTF8";
        s2 = bytesToString(abyte0, i + 1, -1 + (abyte0.length - i), s1);
        as = new String[2];
        as[0] = s;
        as[1] = s2;
        return as;
    }

    public static TextParsedResult parse(Result result)
    {
        TextParsedResult textparsedresult;
        byte abyte0[];
        textparsedresult = null;
        abyte0 = result.getRawBytes();
        if(abyte0 != null) goto _L2; else goto _L1
_L1:
        return textparsedresult;
_L2:
        NDEFRecord ndefrecord = NDEFRecord.readRecord(abyte0, 0);
        if(ndefrecord != null && ndefrecord.isMessageBegin() && ndefrecord.isMessageEnd() && ndefrecord.getType().equals("T"))
        {
            String as[] = decodeTextPayload(ndefrecord.getPayload());
            textparsedresult = new TextParsedResult(as[0], as[1]);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }
}
