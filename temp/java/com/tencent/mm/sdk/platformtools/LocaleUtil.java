// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.Resources;
import java.util.Locale;

// Referenced classes of package com.tencent.mm.sdk.platformtools:
//            SystemProperty, Util, Log

public final class LocaleUtil
{

    private LocaleUtil()
    {
    }

    private static String d(String s)
    {
        String s1 = Locale.getDefault().getLanguage().trim();
        if(!s1.equals("en")) goto _L2; else goto _L1
_L1:
        s = s1;
_L4:
        return s;
_L2:
        String s2 = (new StringBuilder()).append(Locale.getDefault().getLanguage().trim()).append("_").append(Locale.getDefault().getCountry().trim()).toString();
        if(s2.equals("zh_TW") || s2.equals("zh_HK"))
            s = "zh_TW";
        else
        if((new StringBuilder()).append(Locale.getDefault().getLanguage().trim()).append("_").append(Locale.getDefault().getCountry().trim()).toString().equals("zh_CN"))
            s = "zh_CN";
        else
        if(Locale.getDefault().getLanguage().trim().equals("th"))
            s = "th";
        else
        if(Locale.getDefault().getLanguage().trim().equals("id"))
            s = "id";
        else
        if(Locale.getDefault().getLanguage().trim().equals("vi"))
            s = "vi";
        else
        if(Locale.getDefault().getLanguage().trim().equals("pt"))
            s = "pt";
        else
        if(Locale.getDefault().getLanguage().trim().equals("es"))
            s = "es";
        else
        if(Locale.getDefault().getLanguage().trim().equals("ru"))
            s = "ru";
        else
        if(Locale.getDefault().getLanguage().trim().equals("ar"))
            s = "ar";
        else
        if(Locale.getDefault().getLanguage().trim().equals("iw"))
            s = "iw";
        else
        if(Locale.getDefault().getLanguage().trim().equals("pl"))
            s = "pl";
        else
        if(Locale.getDefault().getLanguage().trim().equals("hi"))
            s = "hi";
        else
        if(Locale.getDefault().getLanguage().trim().equals("ja"))
            s = "ja";
        else
        if(Locale.getDefault().getLanguage().trim().equals("it"))
            s = "it";
        else
        if(Locale.getDefault().getLanguage().trim().equals("ko"))
            s = "ko";
        else
        if(Locale.getDefault().getLanguage().trim().equals("ms"))
            s = "ms";
        else
        if(Locale.getDefault().getLanguage().trim().equals("tr"))
            s = "tr";
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static String getApplicationLanguage()
    {
        String s = Util.nullAsNil(SystemProperty.getProperty("language_key"));
        if(s.length() <= 0 || s.equals("language_default"))
            s = d("en");
        return s;
    }

    public static String getCurrentCountryCode()
    {
        return Locale.getDefault().getCountry().trim();
    }

    public static boolean isLanguageSupported(String s)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(!Util.isNullOrNil(s) && (s.equalsIgnoreCase("zh_TW") || s.equalsIgnoreCase("zh_HK") || s.equalsIgnoreCase("zh_CN") || s.equalsIgnoreCase("en") || s.equalsIgnoreCase("th") || s.equals("id") || s.equals("vi") || s.equalsIgnoreCase("pt") || s.equalsIgnoreCase("es") || s.equalsIgnoreCase("ru") || s.equalsIgnoreCase("ar") || s.equalsIgnoreCase("iw") || s.equalsIgnoreCase("pl") || s.equalsIgnoreCase("hi") || s.equalsIgnoreCase("ja") || s.equalsIgnoreCase("it") || s.equalsIgnoreCase("ko") || s.equalsIgnoreCase("ms") || s.equalsIgnoreCase("tr")))
            flag = true;
        return flag;
    }

    public static String loadApplicationLanguage(SharedPreferences sharedpreferences, Context context)
    {
        String s = Util.nullAsNil(sharedpreferences.getString("language_key", null));
        if(s.length() > 0 && !s.equals("language_default"))
        {
            SystemProperty.setProperty("language_key", s);
        } else
        {
            s = d("en");
            SystemProperty.setProperty("language_key", s);
        }
        return s;
    }

    public static String loadApplicationLanguageSettings(SharedPreferences sharedpreferences, Context context)
    {
        String s = Util.nullAsNil(sharedpreferences.getString("language_key", null));
        if(Util.isNullOrNil(s))
            s = "language_default";
        return s;
    }

    public static void saveApplicationLanguage(SharedPreferences sharedpreferences, Context context, String s)
    {
        if(sharedpreferences.edit().putString("language_key", s).commit())
        {
            SystemProperty.setProperty("language_key", s);
            Log.w("MicroMsg.LocaleUtil", (new StringBuilder("save application lang as:")).append(s).toString());
        } else
        {
            Log.e("MicroMsg.LocaleUtil", "saving application lang failed");
        }
    }

    public static Locale transLanguageToLocale(String s)
    {
        Locale locale;
        if(s.equals("zh_TW") || s.equals("zh_HK"))
            locale = Locale.TAIWAN;
        else
        if(s.equals("en"))
            locale = Locale.ENGLISH;
        else
        if(s.equals("zh_CN"))
            locale = Locale.CHINA;
        else
        if(s.equalsIgnoreCase("th"))
            locale = new Locale(s);
        else
        if(s.equalsIgnoreCase("id"))
            locale = new Locale(s);
        else
        if(s.equalsIgnoreCase("vi"))
            locale = new Locale(s);
        else
        if(s.equalsIgnoreCase("pt"))
            locale = new Locale(s);
        else
        if(s.equalsIgnoreCase("es"))
            locale = new Locale(s);
        else
        if(s.equalsIgnoreCase("ru"))
            locale = new Locale(s);
        else
        if(s.equalsIgnoreCase("ar"))
            locale = new Locale(s);
        else
        if(s.equalsIgnoreCase("iw"))
            locale = new Locale(s);
        else
        if(s.equalsIgnoreCase("pl"))
            locale = new Locale(s);
        else
        if(s.equalsIgnoreCase("hi"))
            locale = new Locale(s);
        else
        if(s.equalsIgnoreCase("ja"))
            locale = new Locale(s);
        else
        if(s.equalsIgnoreCase("it"))
            locale = new Locale(s);
        else
        if(s.equalsIgnoreCase("ko"))
            locale = new Locale(s);
        else
        if(s.equalsIgnoreCase("ms"))
            locale = new Locale(s);
        else
        if(s.equalsIgnoreCase("tr"))
        {
            locale = new Locale(s);
        } else
        {
            Log.e("MicroMsg.LocaleUtil", (new StringBuilder("transLanguageToLocale country = ")).append(s).toString());
            locale = Locale.ENGLISH;
        }
        return locale;
    }

    public static void updateApplicationResourceLocale(Context context, Locale locale)
    {
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        if(!configuration.locale.equals(locale))
        {
            android.util.DisplayMetrics displaymetrics = resources.getDisplayMetrics();
            configuration.locale = locale;
            resources.updateConfiguration(configuration, displaymetrics);
            Resources.getSystem().updateConfiguration(configuration, displaymetrics);
        }
    }

    public static final String ARABIC = "ar";
    public static final String CHINA = "zh_CN";
    public static final String ENGLISH = "en";
    public static final String HEBREW = "iw";
    public static final String HINDI = "hi";
    public static final String HONGKONG = "zh_HK";
    public static final String INDONESIAN = "id";
    public static final String ITALIAN = "it";
    public static final String JAPANESE = "ja";
    public static final String KOREAN = "ko";
    public static final String LANGUAGE_DEFAULT = "language_default";
    public static final String LANGUAGE_KEY = "language_key";
    public static final String MALAY = "ms";
    public static final String POLISH = "pl";
    public static final String PORTUGUESE = "pt";
    public static final String RUSSIAN = "ru";
    public static final String SPANISH = "es";
    public static final String TAIWAN = "zh_TW";
    public static final String THAI = "th";
    public static final String TURKEY = "tr";
    public static final String VIETNAMESE = "vi";
}
