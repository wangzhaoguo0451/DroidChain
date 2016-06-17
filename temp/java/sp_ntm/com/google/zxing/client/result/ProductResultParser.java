// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.google.zxing.oned.UPCEReader;

// Referenced classes of package com.google.zxing.client.result:
//            ResultParser, ProductParsedResult

final class ProductResultParser extends ResultParser
{

    private ProductResultParser()
    {
    }

    public static ProductParsedResult parse(Result result)
    {
        ProductParsedResult productparsedresult;
        BarcodeFormat barcodeformat;
        productparsedresult = null;
        barcodeformat = result.getBarcodeFormat();
        if(BarcodeFormat.UPC_A.equals(barcodeformat) || BarcodeFormat.UPC_E.equals(barcodeformat) || BarcodeFormat.EAN_8.equals(barcodeformat) || BarcodeFormat.EAN_13.equals(barcodeformat)) goto _L2; else goto _L1
_L1:
        return productparsedresult;
_L2:
        String s = result.getText();
        if(s == null)
            continue; /* Loop/switch isn't completed */
        int i = s.length();
        for(int j = 0; j < i; j++)
        {
            char c = s.charAt(j);
            if(c < '0' || c > '9')
                continue; /* Loop/switch isn't completed */
        }

        String s1;
        if(BarcodeFormat.UPC_E.equals(barcodeformat))
            s1 = UPCEReader.convertUPCEtoUPCA(s);
        else
            s1 = s;
        productparsedresult = new ProductParsedResult(s, s1);
        if(true) goto _L1; else goto _L3
_L3:
    }
}
