// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class InetUtil
{

    private InetUtil()
    {
    }

    public static InetAddress getByDottedAddress(String s)
    {
        InetAddress inetaddress;
        if(isIPv4Address(s))
            inetaddress = InetAddress.getByName(s);
        else
        if(isIPv6Address(s))
            inetaddress = InetAddress.getByName(s);
        else
            throw new UnknownHostException("invalid ipv4 or ipv6 dotted string");
        return inetaddress;
    }

    public static boolean isIPv4Address(String s)
    {
        return y.matcher(s).matches();
    }

    public static boolean isIPv6Address(String s)
    {
        boolean flag;
        if(isIPv6StdAddress(s) || isIPv6HexCompressedAddress(s))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean isIPv6HexCompressedAddress(String s)
    {
        return A.matcher(s).matches();
    }

    public static boolean isIPv6StdAddress(String s)
    {
        return z.matcher(s).matches();
    }

    private static final Pattern A = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");
    private static final Pattern y = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");
    private static final Pattern z = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");

}
