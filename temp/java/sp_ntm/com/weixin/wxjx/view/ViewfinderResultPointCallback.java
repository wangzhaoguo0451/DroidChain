// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.view;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;

// Referenced classes of package com.weixin.wxjx.view:
//            ViewfinderView

public final class ViewfinderResultPointCallback
    implements ResultPointCallback
{

    public ViewfinderResultPointCallback(ViewfinderView viewfinderview)
    {
        viewfinderView = viewfinderview;
    }

    public void foundPossibleResultPoint(ResultPoint resultpoint)
    {
        viewfinderView.addPossibleResultPoint(resultpoint);
    }

    private final ViewfinderView viewfinderView;
}
