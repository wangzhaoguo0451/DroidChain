// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result;

import com.google.zxing.Result;

// Referenced classes of package com.google.zxing.client.result:
//            AbstractDoCoMoResultParser, AddressBookParsedResult

final class AddressBookDoCoMoResultParser extends AbstractDoCoMoResultParser
{

    AddressBookDoCoMoResultParser()
    {
    }

    public static AddressBookParsedResult parse(Result result)
    {
        AddressBookParsedResult addressbookparsedresult;
        String s;
        addressbookparsedresult = null;
        s = result.getText();
        if(s != null && s.startsWith("MECARD:")) goto _L2; else goto _L1
_L1:
        return addressbookparsedresult;
_L2:
        String as[] = matchDoCoMoPrefixedField("N:", s, true);
        if(as != null)
        {
            String s1 = parseName(as[0]);
            String s2 = matchSingleDoCoMoPrefixedField("SOUND:", s, true);
            String as1[] = matchDoCoMoPrefixedField("TEL:", s, true);
            String as2[] = matchDoCoMoPrefixedField("EMAIL:", s, true);
            String s3 = matchSingleDoCoMoPrefixedField("NOTE:", s, false);
            String as3[] = matchDoCoMoPrefixedField("ADR:", s, true);
            String s4 = matchSingleDoCoMoPrefixedField("BDAY:", s, true);
            if(s4 != null && !isStringOfDigits(s4, 8))
                s4 = null;
            String s5 = matchSingleDoCoMoPrefixedField("URL:", s, true);
            String s6 = matchSingleDoCoMoPrefixedField("ORG:", s, true);
            addressbookparsedresult = new AddressBookParsedResult(maybeWrap(s1), s2, as1, as2, s3, as3, s6, s4, null, s5);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static String parseName(String s)
    {
        int i = s.indexOf(',');
        if(i >= 0)
            s = s.substring(i + 1) + ' ' + s.substring(0, i);
        return s;
    }
}
