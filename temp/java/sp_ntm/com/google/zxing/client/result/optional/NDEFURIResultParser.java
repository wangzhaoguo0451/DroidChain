// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result.optional;

import com.google.zxing.Result;
import com.google.zxing.client.result.URIParsedResult;

// Referenced classes of package com.google.zxing.client.result.optional:
//            AbstractNDEFResultParser, NDEFRecord

final class NDEFURIResultParser extends AbstractNDEFResultParser
{

    NDEFURIResultParser()
    {
    }

    static String decodeURIPayload(byte abyte0[])
    {
        int i = 0xff & abyte0[0];
        String s = null;
        if(i < URI_PREFIXES.length)
            s = URI_PREFIXES[i];
        String s1 = bytesToString(abyte0, 1, -1 + abyte0.length, "UTF8");
        if(s != null)
            s1 = s + s1;
        return s1;
    }

    public static URIParsedResult parse(Result result)
    {
        URIParsedResult uriparsedresult;
        byte abyte0[];
        uriparsedresult = null;
        abyte0 = result.getRawBytes();
        if(abyte0 != null) goto _L2; else goto _L1
_L1:
        return uriparsedresult;
_L2:
        NDEFRecord ndefrecord = NDEFRecord.readRecord(abyte0, 0);
        if(ndefrecord != null && ndefrecord.isMessageBegin() && ndefrecord.isMessageEnd() && ndefrecord.getType().equals("U"))
            uriparsedresult = new URIParsedResult(decodeURIPayload(ndefrecord.getPayload()), null);
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static final String URI_PREFIXES[];

    static 
    {
        String as[] = new String[36];
        as[0] = null;
        as[1] = "http://www.";
        as[2] = "https://www.";
        as[3] = "http://";
        as[4] = "https://";
        as[5] = "tel:";
        as[6] = "mailto:";
        as[7] = "ftp://anonymous:anonymous@";
        as[8] = "ftp://ftp.";
        as[9] = "ftps://";
        as[10] = "sftp://";
        as[11] = "smb://";
        as[12] = "nfs://";
        as[13] = "ftp://";
        as[14] = "dav://";
        as[15] = "news:";
        as[16] = "telnet://";
        as[17] = "imap:";
        as[18] = "rtsp://";
        as[19] = "urn:";
        as[20] = "pop:";
        as[21] = "sip:";
        as[22] = "sips:";
        as[23] = "tftp:";
        as[24] = "btspp://";
        as[25] = "btl2cap://";
        as[26] = "btgoep://";
        as[27] = "tcpobex://";
        as[28] = "irdaobex://";
        as[29] = "file://";
        as[30] = "urn:epc:id:";
        as[31] = "urn:epc:tag:";
        as[32] = "urn:epc:pat:";
        as[33] = "urn:epc:raw:";
        as[34] = "urn:epc:";
        as[35] = "urn:nfc:";
        URI_PREFIXES = as;
    }
}
