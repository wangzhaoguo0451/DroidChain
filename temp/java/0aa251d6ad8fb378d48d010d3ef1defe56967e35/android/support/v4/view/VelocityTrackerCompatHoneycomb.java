// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package android.support.v4.view;

import android.view.VelocityTracker;

class VelocityTrackerCompatHoneycomb
{

    VelocityTrackerCompatHoneycomb()
    {
    }

    public static float getXVelocity(VelocityTracker velocitytracker, int i)
    {
        return velocitytracker.getXVelocity(i);
    }

    public static float getYVelocity(VelocityTracker velocitytracker, int i)
    {
        return velocitytracker.getYVelocity(i);
    }
}
