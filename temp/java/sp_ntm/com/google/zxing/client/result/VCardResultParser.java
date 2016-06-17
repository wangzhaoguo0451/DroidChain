// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Vector;

// Referenced classes of package com.google.zxing.client.result:
//            ResultParser, AddressBookParsedResult

final class VCardResultParser extends ResultParser
{

    private VCardResultParser()
    {
    }

    private static String decodeQuotedPrintable(String s, String s1)
    {
        int i;
        StringBuffer stringbuffer;
        ByteArrayOutputStream bytearrayoutputstream;
        int j;
        i = s.length();
        stringbuffer = new StringBuffer(i);
        bytearrayoutputstream = new ByteArrayOutputStream();
        j = 0;
_L8:
        if(j >= i) goto _L2; else goto _L1
_L1:
        char c = s.charAt(j);
        c;
        JVM INSTR lookupswitch 3: default 76
    //                   10: 90
    //                   13: 90
    //                   61: 96;
           goto _L3 _L4 _L4 _L5
_L4:
        break; /* Loop/switch isn't completed */
_L3:
        maybeAppendFragment(bytearrayoutputstream, s1, stringbuffer);
        stringbuffer.append(c);
_L6:
        j++;
        continue; /* Loop/switch isn't completed */
_L5:
        if(j < i - 2)
        {
            char c1 = s.charAt(j + 1);
            if(c1 != '\r' && c1 != '\n')
            {
                char c2 = s.charAt(j + 2);
                try
                {
                    bytearrayoutputstream.write(16 * toHexValue(c1) + toHexValue(c2));
                }
                catch(IllegalArgumentException illegalargumentexception) { }
                j += 2;
            }
        }
        if(true) goto _L6; else goto _L2
_L2:
        maybeAppendFragment(bytearrayoutputstream, s1, stringbuffer);
        return stringbuffer.toString();
        if(true) goto _L8; else goto _L7
_L7:
    }

    private static String formatAddress(String s)
    {
        String s1;
        if(s == null)
        {
            s1 = null;
        } else
        {
            int i = s.length();
            StringBuffer stringbuffer = new StringBuffer(i);
            int j = 0;
            while(j < i) 
            {
                char c = s.charAt(j);
                if(c == ';')
                    stringbuffer.append(' ');
                else
                    stringbuffer.append(c);
                j++;
            }
            s1 = stringbuffer.toString().trim();
        }
        return s1;
    }

    private static void formatNames(String as[])
    {
        if(as != null)
        {
            for(int i = 0; i < as.length; i++)
            {
                String s = as[i];
                String as1[] = new String[5];
                int j = 0;
                int k = 0;
                do
                {
                    int l = s.indexOf(';', j);
                    if(l <= 0)
                        break;
                    as1[k] = s.substring(j, l);
                    k++;
                    j = l + 1;
                } while(true);
                as1[k] = s.substring(j);
                StringBuffer stringbuffer = new StringBuffer(100);
                maybeAppendComponent(as1, 3, stringbuffer);
                maybeAppendComponent(as1, 1, stringbuffer);
                maybeAppendComponent(as1, 2, stringbuffer);
                maybeAppendComponent(as1, 0, stringbuffer);
                maybeAppendComponent(as1, 4, stringbuffer);
                as[i] = stringbuffer.toString().trim();
            }

        }
    }

    private static boolean isLikeVCardDate(String s)
    {
        boolean flag;
        flag = true;
        break MISSING_BLOCK_LABEL_2;
        if(s != null && !isStringOfDigits(s, 8) && (s.length() != 10 || s.charAt(4) != '-' || s.charAt(7) != '-' || !isSubstringOfDigits(s, 0, 4) || !isSubstringOfDigits(s, 5, 2) || !isSubstringOfDigits(s, 8, 2)))
            flag = false;
        return flag;
    }

    static String matchSingleVCardPrefixedField(String s, String s1, boolean flag)
    {
        String as[] = matchVCardPrefixedField(s, s1, flag);
        String s2;
        if(as == null)
            s2 = null;
        else
            s2 = as[0];
        return s2;
    }

    private static String[] matchVCardPrefixedField(String s, String s1, boolean flag)
    {
        Vector vector = null;
        int i = 0;
        int j = s1.length();
        do
        {
label0:
            {
                int k;
                if(i < j)
                {
                    k = s1.indexOf(s, i);
                    if(k >= 0)
                        break label0;
                }
                String as[];
                int l;
                boolean flag1;
                String s2;
                int i1;
                int j1;
                int k1;
                String s3;
                String s4;
                int l1;
                String s5;
                int i2;
                String s6;
                String s7;
                if(vector == null || vector.isEmpty())
                    as = null;
                else
                    as = toStringArray(vector);
                return as;
            }
            if(k > 0 && s1.charAt(k - 1) != '\n')
            {
                i = k + 1;
                continue;
            }
            i = k + s.length();
            if(s1.charAt(i) != ':' && s1.charAt(i) != ';')
                continue;
            l = i;
            for(; s1.charAt(i) != ':'; i++);
            flag1 = false;
            s2 = null;
            if(i > l)
            {
                l1 = l + 1;
                while(l1 <= i) 
                {
                    if(s1.charAt(l1) != ';' && s1.charAt(l1) != ':')
                        continue;
                    s5 = s1.substring(l + 1, l1);
                    i2 = s5.indexOf('=');
                    if(i2 >= 0)
                    {
                        s6 = s5.substring(0, i2);
                        s7 = s5.substring(i2 + 1);
                        if(s6.equalsIgnoreCase("ENCODING"))
                        {
                            if(s7.equalsIgnoreCase("QUOTED-PRINTABLE"))
                                flag1 = true;
                        } else
                        if(s6.equalsIgnoreCase("CHARSET"))
                            s2 = s7;
                    }
                    l = l1;
                    l1++;
                }
            }
            i1 = i + 1;
            j1 = i1;
            do
            {
                k1 = s1.indexOf('\n', i1);
                if(k1 < 0)
                    break;
                if(k1 < -1 + s1.length() && (s1.charAt(k1 + 1) == ' ' || s1.charAt(k1 + 1) == '\t'))
                {
                    i1 = k1 + 2;
                    continue;
                }
                if(!flag1 || s1.charAt(k1 - 1) != '=' && s1.charAt(k1 - 2) != '=')
                    break;
                i1 = k1 + 1;
            } while(true);
            if(k1 < 0)
                i = j;
            else
            if(k1 > j1)
            {
                if(vector == null)
                    vector = new Vector(1);
                if(s1.charAt(k1 - 1) == '\r')
                    k1--;
                s3 = s1.substring(j1, k1);
                if(flag)
                    s3 = s3.trim();
                if(flag1)
                    s4 = decodeQuotedPrintable(s3, s2);
                else
                    s4 = stripContinuationCRLF(s3);
                vector.addElement(s4);
                i = k1 + 1;
            } else
            {
                i = k1 + 1;
            }
        } while(true);
    }

    private static void maybeAppendComponent(String as[], int i, StringBuffer stringbuffer)
    {
        if(as[i] != null)
        {
            stringbuffer.append(' ');
            stringbuffer.append(as[i]);
        }
    }

    private static void maybeAppendFragment(ByteArrayOutputStream bytearrayoutputstream, String s, StringBuffer stringbuffer)
    {
        if(bytearrayoutputstream.size() > 0)
        {
            byte abyte0[] = bytearrayoutputstream.toByteArray();
            String s1;
            if(s == null)
                s1 = new String(abyte0);
            else
                try
                {
                    s1 = new String(abyte0, s);
                }
                catch(UnsupportedEncodingException unsupportedencodingexception)
                {
                    s1 = new String(abyte0);
                }
            bytearrayoutputstream.reset();
            stringbuffer.append(s1);
        }
    }

    public static AddressBookParsedResult parse(Result result)
    {
        String s = result.getText();
        AddressBookParsedResult addressbookparsedresult;
        if(s == null || !s.startsWith("BEGIN:VCARD"))
        {
            addressbookparsedresult = null;
        } else
        {
            String as[] = matchVCardPrefixedField("FN", s, true);
            if(as == null)
            {
                as = matchVCardPrefixedField("N", s, true);
                formatNames(as);
            }
            String as1[] = matchVCardPrefixedField("TEL", s, true);
            String as2[] = matchVCardPrefixedField("EMAIL", s, true);
            String s1 = matchSingleVCardPrefixedField("NOTE", s, false);
            String as3[] = matchVCardPrefixedField("ADR", s, true);
            if(as3 != null)
            {
                for(int i = 0; i < as3.length; i++)
                    as3[i] = formatAddress(as3[i]);

            }
            String s2 = matchSingleVCardPrefixedField("ORG", s, true);
            String s3 = matchSingleVCardPrefixedField("BDAY", s, true);
            if(!isLikeVCardDate(s3))
                s3 = null;
            addressbookparsedresult = new AddressBookParsedResult(as, null, as1, as2, s1, as3, s2, s3, matchSingleVCardPrefixedField("TITLE", s, true), matchSingleVCardPrefixedField("URL", s, true));
        }
        return addressbookparsedresult;
    }

    private static String stripContinuationCRLF(String s)
    {
        int i;
        StringBuffer stringbuffer;
        boolean flag;
        int j;
        i = s.length();
        stringbuffer = new StringBuffer(i);
        flag = false;
        j = 0;
_L5:
        if(j >= i) goto _L2; else goto _L1
_L1:
        if(!flag) goto _L4; else goto _L3
_L3:
        flag = false;
_L7:
        j++;
          goto _L5
_L4:
        char c = s.charAt(j);
        flag = false;
        switch(c)
        {
        case 11: // '\013'
        case 12: // '\f'
        default:
            stringbuffer.append(c);
            break;

        case 10: // '\n'
            flag = true;
            break;

        case 13: // '\r'
            break;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        return stringbuffer.toString();
        if(true) goto _L7; else goto _L6
_L6:
    }

    private static int toHexValue(char c)
    {
        int i;
        if(c >= '0' && c <= '9')
            i = c + -48;
        else
        if(c >= 'A' && c <= 'F')
            i = 10 + (c + -65);
        else
        if(c >= 'a' && c <= 'f')
            i = 10 + (c + -97);
        else
            throw new IllegalArgumentException();
        return i;
    }
}
