// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import android.view.View;
import android.view.animation.Animation;

class AnimationHelperImpl21below
    implements BackwardSupportUtil.AnimationHelper.IHelper
{

    AnimationHelperImpl21below()
    {
    }

    public void cancelAnimation(View view, Animation animation)
    {
        if(view != null)
            view.setAnimation(null);
    }
}
