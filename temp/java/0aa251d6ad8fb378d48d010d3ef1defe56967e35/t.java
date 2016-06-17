// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.webkit.WebView;
import com.google.ads.util.a;
import java.util.HashMap;

public final class t
    implements i
{

    public t()
    {
    }

    public final void a(d d1, HashMap hashmap, WebView webview)
    {
        String s;
        s = (String)hashmap.get("applicationTimeout");
        if(s == null)
            break MISSING_BLOCK_LABEL_29;
        d1.a((long)(1000F * Float.parseFloat(s)));
_L1:
        return;
        NumberFormatException numberformatexception;
        numberformatexception;
        com.google.ads.util.a.c((new StringBuilder()).append("Trying to set applicationTimeout to invalid value: ").append(s).toString(), numberformatexception);
          goto _L1
    }
}
