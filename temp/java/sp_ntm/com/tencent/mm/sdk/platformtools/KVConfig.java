// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            Log, Util

public class KVConfig
{

    public KVConfig()
    {
    }

    private static void a(Map map)
    {
        if(map == null || map.size() <= 0)
        {
            Log.v("MicroMsg.SDK.KVConfig", "empty values");
        } else
        {
            Iterator iterator = map.entrySet().iterator();
            while(iterator.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                Log.v("MicroMsg.SDK.KVConfig", (new StringBuilder("key=")).append((String)entry.getKey()).append(" value=").append((String)entry.getValue()).toString());
            }
        }
    }

    private static void a(Map map, String s, Node node, int i)
    {
        int j = 0;
        if(!node.getNodeName().equals("#text")) goto _L2; else goto _L1
_L1:
        map.put(s, node.getNodeValue());
_L4:
        return;
_L2:
        if(!node.getNodeName().equals("#cdata-section"))
            break; /* Loop/switch isn't completed */
        map.put(s, node.getNodeValue());
        if(true) goto _L4; else goto _L3
_L3:
        StringBuilder stringbuilder = (new StringBuilder()).append(s).append(".").append(node.getNodeName());
        Object obj;
        String s1;
        NamedNodeMap namednodemap;
        if(i > 0)
            obj = Integer.valueOf(i);
        else
            obj = "";
        s1 = stringbuilder.append(obj).toString();
        map.put(s1, node.getNodeValue());
        namednodemap = node.getAttributes();
        if(namednodemap != null)
        {
            for(int l = 0; l < namednodemap.getLength(); l++)
            {
                Node node2 = namednodemap.item(l);
                map.put((new StringBuilder()).append(s1).append(".$").append(node2.getNodeName()).toString(), node2.getNodeValue());
            }

        }
        HashMap hashmap = new HashMap();
        NodeList nodelist = node.getChildNodes();
        while(j < nodelist.getLength()) 
        {
            Node node1 = nodelist.item(j);
            int k = Util.nullAsNil((Integer)hashmap.get(node1.getNodeName()));
            a(map, s1, node1, k);
            hashmap.put(node1.getNodeName(), Integer.valueOf(k + 1));
            j++;
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    public static Map parseIni(String s)
    {
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L4:
        return ((Map) (obj));
_L2:
        obj = new HashMap();
        String as[] = s.split("\n");
        int i = as.length;
        for(int j = 0; j < i; j++)
        {
            String s1 = as[j];
            if(s1 == null || s1.length() <= 0)
                continue;
            String as1[] = s1.trim().split("=", 2);
            if(as1 == null || as1.length < 2)
                continue;
            String s2 = as1[0];
            String s3 = as1[1];
            if(s2 != null && s2.length() > 0 && s2.matches("^[a-zA-Z0-9_]*"))
                ((Map) (obj)).put(s2, s3);
        }

        if(E)
            a(((Map) (obj)));
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static Map parseXml(String s, String s1, String s2)
    {
        Object obj;
        int i;
        obj = null;
        if(s == null)
            i = -1;
        else
            i = s.indexOf('<');
        if(i >= 0) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.SDK.KVConfig", "text not in xml format");
_L4:
        return ((Map) (obj));
_L2:
        if(i > 0)
        {
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            Log.w("MicroMsg.SDK.KVConfig", "fix xml header from + %d", aobj);
            s = s.substring(i);
        }
        if(s == null || s.length() <= 0) goto _L4; else goto _L3
_L3:
        HashMap hashmap;
        DocumentBuilderFactory documentbuilderfactory;
        hashmap = new HashMap();
        documentbuilderfactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentbuilder = documentbuilderfactory.newDocumentBuilder();
        if(documentbuilder != null)
            break MISSING_BLOCK_LABEL_128;
        Log.e("MicroMsg.SDK.KVConfig", "new Document Builder failed");
          goto _L4
        ParserConfigurationException parserconfigurationexception;
        parserconfigurationexception;
        parserconfigurationexception.printStackTrace();
          goto _L4
        Document document1;
        InputSource inputsource = new InputSource(new ByteArrayInputStream(s.getBytes()));
        if(s2 != null)
            inputsource.setEncoding(s2);
        document1 = documentbuilder.parse(inputsource);
        Document document = document1;
        document.normalize();
_L5:
        Exception exception;
        IOException ioexception;
        SAXException saxexception;
        DOMException domexception;
        Element element;
        if(document == null)
        {
            Log.e("MicroMsg.SDK.KVConfig", "new Document failed");
        } else
        {
label0:
            {
                element = document.getDocumentElement();
                if(element != null)
                    break label0;
                Log.e("MicroMsg.SDK.KVConfig", "getDocumentElement failed");
            }
        }
          goto _L4
        domexception;
        document = null;
_L9:
        domexception.printStackTrace();
          goto _L5
        saxexception;
        saxexception.printStackTrace();
          goto _L4
        ioexception;
        ioexception.printStackTrace();
          goto _L4
        exception;
        exception.printStackTrace();
          goto _L4
        if(s1 == null || !s1.equals(element.getNodeName())) goto _L7; else goto _L6
_L6:
        a(hashmap, "", element, 0);
_L8:
        if(E)
            a(hashmap);
        obj = hashmap;
          goto _L4
_L7:
        NodeList nodelist;
label1:
        {
            nodelist = element.getElementsByTagName(s1);
            if(nodelist.getLength() > 0)
                break label1;
            Log.e("MicroMsg.SDK.KVConfig", "parse item null");
        }
          goto _L4
        if(nodelist.getLength() > 1)
            Log.w("MicroMsg.SDK.KVConfig", "parse items more than one");
        a(hashmap, "", nodelist.item(0), 0);
          goto _L8
        domexception;
          goto _L9
    }

    private static boolean E = false;

}
