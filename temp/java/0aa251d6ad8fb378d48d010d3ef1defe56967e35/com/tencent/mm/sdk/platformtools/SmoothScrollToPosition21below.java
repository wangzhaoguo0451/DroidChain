// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.widget.ListView;

class SmoothScrollToPosition21below
    implements BackwardSupportUtil.SmoothScrollFactory.IScroll
{

    SmoothScrollToPosition21below()
    {
    }

    public void doScroll(ListView listview)
    {
        listview.setSelection(0);
    }

    public void doScroll(ListView listview, int i)
    {
        listview.setSelection(i);
    }
}
