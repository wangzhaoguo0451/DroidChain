// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.http;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;

public class HttpClientUtil
{

    public HttpClientUtil(String s, String s1, String s2)
    {
        REQUEST_TIMEOUT = 10000;
        SO_TIMEOUT = 10000;
        client_url = s;
        headData = s1;
        contentData = s2;
    }

    public String postClient()
    {
        DefaultHttpClient defaulthttpclient;
        String s;
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basichttpparams, REQUEST_TIMEOUT);
        HttpConnectionParams.setSoTimeout(basichttpparams, SO_TIMEOUT);
        defaulthttpclient = new DefaultHttpClient(basichttpparams);
        s = "";
        String s1;
        HttpPost httppost = new HttpPost(client_url);
        BasicHttpParams basichttpparams1 = new BasicHttpParams();
        httppost.setHeader("head", headData);
        httppost.setEntity(new StringEntity(contentData, "UTF-8"));
        httppost.setParams(basichttpparams1);
        HttpResponse httpresponse = defaulthttpclient.execute(httppost);
        if(httpresponse.getStatusLine().getStatusCode() == 200)
        {
            s = EntityUtils.toString(httpresponse.getEntity());
            break MISSING_BLOCK_LABEL_196;
        }
        s1 = (new StringBuilder("Error Response: ")).append(httpresponse.getStatusLine().toString()).toString();
        s = s1;
        break MISSING_BLOCK_LABEL_196;
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        unsupportedencodingexception.printStackTrace();
        break MISSING_BLOCK_LABEL_196;
        ClientProtocolException clientprotocolexception;
        clientprotocolexception;
        clientprotocolexception.printStackTrace();
        break MISSING_BLOCK_LABEL_196;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return s;
    }

    private int REQUEST_TIMEOUT;
    private int SO_TIMEOUT;
    private String client_url;
    private String contentData;
    private String headData;
}
