// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package android.support.v4.view;

import android.view.KeyEvent;

// Referenced classes of package android.support.v4.view:
//            KeyEventCompatHoneycomb

public class KeyEventCompat
{
    static class HoneycombKeyEventVersionImpl
        implements KeyEventVersionImpl
    {

        public boolean metaStateHasModifiers(int i, int j)
        {
            return KeyEventCompatHoneycomb.metaStateHasModifiers(i, j);
        }

        public boolean metaStateHasNoModifiers(int i)
        {
            return KeyEventCompatHoneycomb.metaStateHasNoModifiers(i);
        }

        public int normalizeMetaState(int i)
        {
            return KeyEventCompatHoneycomb.normalizeMetaState(i);
        }

        HoneycombKeyEventVersionImpl()
        {
        }
    }

    static class BaseKeyEventVersionImpl
        implements KeyEventVersionImpl
    {

        private static int metaStateFilterDirectionalModifiers(int i, int j, int k, int l, int i1)
        {
            boolean flag;
            int j1;
            flag = true;
            boolean flag1;
            if((j & k) != 0)
                flag1 = flag;
            else
                flag1 = false;
            j1 = l | i1;
            if((j & j1) == 0)
                flag = false;
            if(!flag1) goto _L2; else goto _L1
_L1:
            if(flag)
                throw new IllegalArgumentException("bad arguments");
            i &= ~j1;
_L4:
            return i;
_L2:
            if(flag)
                i &= ~k;
            if(true) goto _L4; else goto _L3
_L3:
        }

        public boolean metaStateHasModifiers(int i, int j)
        {
            boolean flag = true;
            if(metaStateFilterDirectionalModifiers(metaStateFilterDirectionalModifiers(0xf7 & normalizeMetaState(i), j, flag, 64, 128), j, 2, 16, 32) != j)
                flag = false;
            return flag;
        }

        public boolean metaStateHasNoModifiers(int i)
        {
            boolean flag;
            if((0xf7 & normalizeMetaState(i)) == 0)
                flag = true;
            else
                flag = false;
            return flag;
        }

        public int normalizeMetaState(int i)
        {
            if((i & 0xc0) != 0)
                i |= 1;
            if((i & 0x30) != 0)
                i |= 2;
            return i & 0xf7;
        }

        private static final int META_ALL_MASK = 247;
        private static final int META_MODIFIER_MASK = 247;

        BaseKeyEventVersionImpl()
        {
        }
    }

    static interface KeyEventVersionImpl
    {

        public abstract boolean metaStateHasModifiers(int i, int j);

        public abstract boolean metaStateHasNoModifiers(int i);

        public abstract int normalizeMetaState(int i);
    }


    public KeyEventCompat()
    {
    }

    public static boolean hasModifiers(KeyEvent keyevent, int i)
    {
        return IMPL.metaStateHasModifiers(keyevent.getMetaState(), i);
    }

    public static boolean hasNoModifiers(KeyEvent keyevent)
    {
        return IMPL.metaStateHasNoModifiers(keyevent.getMetaState());
    }

    public static boolean metaStateHasModifiers(int i, int j)
    {
        return IMPL.metaStateHasModifiers(i, j);
    }

    public static boolean metaStateHasNoModifiers(int i)
    {
        return IMPL.metaStateHasNoModifiers(i);
    }

    public static int normalizeMetaState(int i)
    {
        return IMPL.normalizeMetaState(i);
    }

    static final KeyEventVersionImpl IMPL;

    static 
    {
        if(android.os.Build.VERSION.SDK_INT >= 11)
            IMPL = new HoneycombKeyEventVersionImpl();
        else
            IMPL = new BaseKeyEventVersionImpl();
    }
}
