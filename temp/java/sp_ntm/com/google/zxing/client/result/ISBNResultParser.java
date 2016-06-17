// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;

// Referenced classes of package com.google.zxing.client.result:
//            ResultParser, ISBNParsedResult

public class ISBNResultParser extends ResultParser
{

    private ISBNResultParser()
    {
    }

    public static ISBNParsedResult parse(Result result)
    {
        ISBNParsedResult isbnparsedresult;
        BarcodeFormat barcodeformat;
        isbnparsedresult = null;
        barcodeformat = result.getBarcodeFormat();
        if(BarcodeFormat.EAN_13.equals(barcodeformat)) goto _L2; else goto _L1
_L1:
        return isbnparsedresult;
_L2:
        String s = result.getText();
        if(s != null && s.length() == 13 && (s.startsWith("978") || s.startsWith("979")))
            isbnparsedresult = new ISBNParsedResult(s);
        if(true) goto _L1; else goto _L3
_L3:
    }
}
