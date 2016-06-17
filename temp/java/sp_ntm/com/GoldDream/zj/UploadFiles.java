// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.GoldDream.zj;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

public class UploadFiles
{

    public UploadFiles()
    {
    }

    public void uploadFile(String s, String s1)
    {
        try
        {
            URL url = new URL(s);
            HttpURLConnection httpurlconnection = (HttpURLConnection)url.openConnection();
            httpurlconnection.setDoInput(true);
            httpurlconnection.setDoOutput(true);
            httpurlconnection.setUseCaches(false);
            httpurlconnection.setRequestMethod("POST");
            httpurlconnection.setRequestProperty("Connection", "Keep-Alive");
            httpurlconnection.setRequestProperty("Charset", "UTF-8");
            httpurlconnection.setRequestProperty("Content-Type", (new StringBuilder("multipart/form-data;boundary=")).append("******").toString());
            DataOutputStream dataoutputstream = new DataOutputStream(httpurlconnection.getOutputStream());
            dataoutputstream.writeBytes((new StringBuilder(String.valueOf("--"))).append("******").append("\r\n").toString());
            dataoutputstream.writeBytes((new StringBuilder("Content-Disposition: form-data; name=\"file\"; filename=\"")).append(s1.substring(1 + s1.lastIndexOf("/"))).append("\"").append("\r\n").toString());
            dataoutputstream.writeBytes("\r\n");
            FileInputStream fileinputstream = new FileInputStream(s1);
            byte abyte0[] = new byte[8192];
            do
            {
                int i = fileinputstream.read(abyte0);
                if(i == -1)
                {
                    fileinputstream.close();
                    dataoutputstream.writeBytes("\r\n");
                    dataoutputstream.writeBytes((new StringBuilder(String.valueOf("--"))).append("******").append("--").append("\r\n").toString());
                    dataoutputstream.flush();
                    InputStream inputstream = httpurlconnection.getInputStream();
                    InputStreamReader inputstreamreader = new InputStreamReader(inputstream, "utf-8");
                    String s2 = (new BufferedReader(inputstreamreader)).readLine();
                    System.out.println(s2);
                    dataoutputstream.close();
                    inputstream.close();
                    break;
                }
                dataoutputstream.write(abyte0, 0, i);
            } while(true);
        }
        catch(Exception exception)
        {
            exception.printStackTrace();
        }
    }
}
