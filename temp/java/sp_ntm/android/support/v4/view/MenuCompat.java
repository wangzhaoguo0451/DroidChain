// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package android.support.v4.view;

import android.view.MenuItem;

// Referenced classes of package android.support.v4.view:
//            MenuItemCompatHoneycomb

public class MenuCompat
{
    static class HoneycombMenuVersionImpl
        implements MenuVersionImpl
    {

        public boolean setShowAsAction(MenuItem menuitem, int i)
        {
            MenuItemCompatHoneycomb.setShowAsAction(menuitem, i);
            return true;
        }

        HoneycombMenuVersionImpl()
        {
        }
    }

    static class BaseMenuVersionImpl
        implements MenuVersionImpl
    {

        public boolean setShowAsAction(MenuItem menuitem, int i)
        {
            return false;
        }

        BaseMenuVersionImpl()
        {
        }
    }

    static interface MenuVersionImpl
    {

        public abstract boolean setShowAsAction(MenuItem menuitem, int i);
    }


    public MenuCompat()
    {
    }

    public static boolean setShowAsAction(MenuItem menuitem, int i)
    {
        return IMPL.setShowAsAction(menuitem, i);
    }

    static final MenuVersionImpl IMPL;

    static 
    {
        if(android.os.Build.VERSION.SDK_INT >= 11)
            IMPL = new HoneycombMenuVersionImpl();
        else
            IMPL = new BaseMenuVersionImpl();
    }
}
