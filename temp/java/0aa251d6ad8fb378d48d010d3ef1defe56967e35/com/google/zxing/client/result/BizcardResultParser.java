// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.Vector;

// Referenced classes of package com.google.zxing.client.result:
//            AbstractDoCoMoResultParser, AddressBookParsedResult

final class BizcardResultParser extends AbstractDoCoMoResultParser
{

    BizcardResultParser()
    {
    }

    private static String buildName(String s, String s1)
    {
        if(s != null)
        {
            if(s1 != null)
                s = s + ' ' + s1;
            s1 = s;
        }
        return s1;
    }

    private static String[] buildPhoneNumbers(String s, String s1, String s2)
    {
        Vector vector = new Vector(3);
        if(s != null)
            vector.addElement(s);
        if(s1 != null)
            vector.addElement(s1);
        if(s2 != null)
            vector.addElement(s2);
        int i = vector.size();
        String as[];
        if(i == 0)
        {
            as = null;
        } else
        {
            as = new String[i];
            int j = 0;
            while(j < i) 
            {
                as[j] = (String)vector.elementAt(j);
                j++;
            }
        }
        return as;
    }

    public static AddressBookParsedResult parse(Result result)
    {
        String s = result.getText();
        AddressBookParsedResult addressbookparsedresult;
        if(s == null || !s.startsWith("BIZCARD:"))
        {
            addressbookparsedresult = null;
        } else
        {
            String s1 = buildName(matchSingleDoCoMoPrefixedField("N:", s, true), matchSingleDoCoMoPrefixedField("X:", s, true));
            String s2 = matchSingleDoCoMoPrefixedField("T:", s, true);
            String s3 = matchSingleDoCoMoPrefixedField("C:", s, true);
            String as[] = matchDoCoMoPrefixedField("A:", s, true);
            String s4 = matchSingleDoCoMoPrefixedField("B:", s, true);
            String s5 = matchSingleDoCoMoPrefixedField("M:", s, true);
            String s6 = matchSingleDoCoMoPrefixedField("F:", s, true);
            String s7 = matchSingleDoCoMoPrefixedField("E:", s, true);
            addressbookparsedresult = new AddressBookParsedResult(maybeWrap(s1), null, buildPhoneNumbers(s4, s5, s6), maybeWrap(s7), null, as, s3, null, s2, null);
        }
        return addressbookparsedresult;
    }
}
