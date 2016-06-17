// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.Hashtable;
import java.util.Vector;

// Referenced classes of package com.google.zxing.client.result:
//            ResultParser, SMSParsedResult

final class SMSMMSResultParser extends ResultParser
{

    private SMSMMSResultParser()
    {
    }

    private static void addNumberVia(Vector vector, Vector vector1, String s)
    {
        int i = s.indexOf(';');
        if(i < 0)
        {
            vector.addElement(s);
            vector1.addElement(null);
        } else
        {
            vector.addElement(s.substring(0, i));
            String s1 = s.substring(i + 1);
            String s2;
            if(s1.startsWith("via="))
                s2 = s1.substring(4);
            else
                s2 = null;
            vector1.addElement(s2);
        }
    }

    public static SMSParsedResult parse(Result result)
    {
        String s = result.getText();
        SMSParsedResult smsparsedresult;
        if(s == null)
            smsparsedresult = null;
        else
        if(!s.startsWith("sms:") && !s.startsWith("SMS:") && !s.startsWith("mms:") && !s.startsWith("MMS:"))
        {
            smsparsedresult = null;
        } else
        {
            Hashtable hashtable = parseNameValuePairs(s);
            String s1 = null;
            String s2 = null;
            boolean flag = false;
            if(hashtable != null && !hashtable.isEmpty())
            {
                s1 = (String)hashtable.get("subject");
                s2 = (String)hashtable.get("body");
                flag = true;
            }
            int i = s.indexOf('?', 4);
            String s3;
            int j;
            Vector vector;
            Vector vector1;
            if(i < 0 || !flag)
                s3 = s.substring(4);
            else
                s3 = s.substring(4, i);
            j = -1;
            vector = new Vector(1);
            vector1 = new Vector(1);
            do
            {
                int k = s3.indexOf(',', j + 1);
                if(k <= j)
                    break;
                addNumberVia(vector, vector1, s3.substring(j + 1, k));
                j = k;
            } while(true);
            addNumberVia(vector, vector1, s3.substring(j + 1));
            smsparsedresult = new SMSParsedResult(toStringArray(vector), toStringArray(vector1), s1, s2);
        }
        return smsparsedresult;
    }
}
