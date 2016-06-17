// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

// Referenced classes of package android.support.v4.view:
//            ViewGroupCompatIcs

public class ViewGroupCompat
{
    static class ViewGroupCompatIcsImpl extends ViewGroupCompatStubImpl
    {

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
        {
            return ViewGroupCompatIcs.onRequestSendAccessibilityEvent(viewgroup, view, accessibilityevent);
        }

        ViewGroupCompatIcsImpl()
        {
        }
    }

    static class ViewGroupCompatStubImpl
        implements ViewGroupCompatImpl
    {

        public boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
        {
            return true;
        }

        ViewGroupCompatStubImpl()
        {
        }
    }

    static interface ViewGroupCompatImpl
    {

        public abstract boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent);
    }


    private ViewGroupCompat()
    {
    }

    public static boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
    {
        return IMPL.onRequestSendAccessibilityEvent(viewgroup, view, accessibilityevent);
    }

    static final ViewGroupCompatImpl IMPL;

    static 
    {
        if(android.os.Build.VERSION.SDK_INT >= 14)
            IMPL = new ViewGroupCompatIcsImpl();
        else
            IMPL = new ViewGroupCompatStubImpl();
    }
}
