// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.widget.ListView;

class SmoothScrollToPosition22
    implements BackwardSupportUtil.SmoothScrollFactory.IScroll
{

    SmoothScrollToPosition22()
    {
    }

    public void doScroll(ListView listview)
    {
        if(listview.getFirstVisiblePosition() > 10)
            listview.setSelection(10);
        listview.smoothScrollToPosition(0);
    }

    public void doScroll(ListView listview, int i)
    {
        int j = listview.getFirstVisiblePosition();
        if(j <= i || j - i <= 10) goto _L2; else goto _L1
_L1:
        listview.setSelection(i + 10);
_L4:
        listview.smoothScrollToPosition(i);
        return;
_L2:
        if(j < i && i - j > 10)
            listview.setSelection(i - 10);
        if(true) goto _L4; else goto _L3
_L3:
    }
}
