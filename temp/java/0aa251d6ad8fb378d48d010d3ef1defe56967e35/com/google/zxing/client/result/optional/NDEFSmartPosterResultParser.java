// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result.optional;

import com.google.zxing.Result;

// Referenced classes of package com.google.zxing.client.result.optional:
//            AbstractNDEFResultParser, NDEFRecord, NDEFTextResultParser, NDEFURIResultParser, 
//            NDEFSmartPosterParsedResult

final class NDEFSmartPosterResultParser extends AbstractNDEFResultParser
{

    NDEFSmartPosterResultParser()
    {
    }

    public static NDEFSmartPosterParsedResult parse(Result result)
    {
        NDEFSmartPosterParsedResult ndefsmartposterparsedresult;
        byte abyte0[];
        ndefsmartposterparsedresult = null;
        abyte0 = result.getRawBytes();
        if(abyte0 != null) goto _L2; else goto _L1
_L1:
        return ndefsmartposterparsedresult;
_L2:
        NDEFRecord ndefrecord = NDEFRecord.readRecord(abyte0, 0);
        if(ndefrecord == null || !ndefrecord.isMessageBegin() || !ndefrecord.isMessageEnd() || !ndefrecord.getType().equals("Sp"))
            continue; /* Loop/switch isn't completed */
        int i = 0;
        int j = 0;
        NDEFRecord ndefrecord1 = null;
        byte abyte1[] = ndefrecord.getPayload();
        byte byte0 = -1;
        String s = null;
        String s1 = null;
        do
        {
            if(i >= abyte1.length)
                break;
            ndefrecord1 = NDEFRecord.readRecord(abyte1, i);
            if(ndefrecord1 == null)
                break;
            if(j == 0 && !ndefrecord1.isMessageBegin())
                continue; /* Loop/switch isn't completed */
            String s2 = ndefrecord1.getType();
            if("T".equals(s2))
                s = NDEFTextResultParser.decodeTextPayload(ndefrecord1.getPayload())[1];
            else
            if("U".equals(s2))
                s1 = NDEFURIResultParser.decodeURIPayload(ndefrecord1.getPayload());
            else
            if("act".equals(s2))
                byte0 = ndefrecord1.getPayload()[0];
            j++;
            i += ndefrecord1.getTotalRecordLength();
        } while(true);
        if(j != 0 && (ndefrecord1 == null || ndefrecord1.isMessageEnd()))
            ndefsmartposterparsedresult = new NDEFSmartPosterParsedResult(byte0, s1, s);
        if(true) goto _L1; else goto _L3
_L3:
    }
}
