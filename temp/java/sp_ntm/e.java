// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.os.Bundle;
import java.util.HashMap;

public final class e
{

    public e(Bundle bundle)
    {
        a = bundle.getString("action");
        java.io.Serializable serializable = bundle.getSerializable("params");
        HashMap hashmap;
        if(serializable instanceof HashMap)
            hashmap = (HashMap)serializable;
        else
            hashmap = null;
        b = hashmap;
    }

    public e(String s)
    {
        a = s;
    }

    public e(String s, HashMap hashmap)
    {
        this(s);
        b = hashmap;
    }

    public final Bundle a()
    {
        Bundle bundle = new Bundle();
        bundle.putString("action", a);
        bundle.putSerializable("params", b);
        return bundle;
    }

    public final String b()
    {
        return a;
    }

    public final HashMap c()
    {
        return b;
    }

    private String a;
    private HashMap b;
}
