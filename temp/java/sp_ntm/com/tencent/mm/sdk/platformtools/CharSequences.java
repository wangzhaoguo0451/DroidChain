// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;


public class CharSequences
{

    public CharSequences()
    {
    }

    static void a(int i, int j, int k)
    {
        if(i < 0)
            throw new IndexOutOfBoundsException();
        if(j < 0)
            throw new IndexOutOfBoundsException();
        if(j > k)
            throw new IndexOutOfBoundsException();
        if(i > j)
            throw new IndexOutOfBoundsException();
        else
            return;
    }

    public static int compareToIgnoreCase(CharSequence charsequence, CharSequence charsequence1)
    {
        int i;
        int j;
        int k;
        int i1;
        int j1;
        int k1;
        int l1;
        i = 0;
        j = charsequence.length();
        k = charsequence1.length();
        int l;
        char c;
        int i2;
        if(j < k)
            l = j;
        else
            l = k;
        i1 = 0;
_L7:
        if(i1 >= l) goto _L2; else goto _L1
_L1:
        k1 = i1 + 1;
        c = Character.toLowerCase(charsequence.charAt(i1));
        l1 = i + 1;
        i2 = c - Character.toLowerCase(charsequence1.charAt(i));
        if(i2 == 0) goto _L4; else goto _L3
_L3:
        j1 = i2;
_L5:
        return j1;
_L2:
        j1 = j - k;
        if(true) goto _L5; else goto _L4
_L4:
        i = l1;
        i1 = k1;
        if(true) goto _L7; else goto _L6
_L6:
    }

    public static boolean equals(CharSequence charsequence, CharSequence charsequence1)
    {
        boolean flag = false;
        if(charsequence.length() == charsequence1.length()) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        int i = charsequence.length();
        for(int j = 0; j < i; j++)
            if(charsequence.charAt(j) != charsequence1.charAt(j))
                continue; /* Loop/switch isn't completed */

        flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static CharSequence forAsciiBytes(byte abyte0[])
    {
        return new _cls1(abyte0);
    }

    public static CharSequence forAsciiBytes(byte abyte0[], int i, int j)
    {
        a(i, j, abyte0.length);
        return new _cls2(abyte0, i, j);
    }

    private class _cls1
        implements CharSequence
    {

        public final char charAt(int i)
        {
            return (char)u[i];
        }

        public final int length()
        {
            return u.length;
        }

        public final CharSequence subSequence(int i, int j)
        {
            return CharSequences.forAsciiBytes(u, i, j);
        }

        public final String toString()
        {
            return new String(u);
        }

        final byte u[];

        _cls1(byte abyte0[])
        {
            u = abyte0;
            super();
        }
    }


    private class _cls2
        implements CharSequence
    {

        public final char charAt(int i)
        {
            return (char)u[i + v];
        }

        public final int length()
        {
            return w - v;
        }

        public final CharSequence subSequence(int i, int j)
        {
            int k = i - v;
            int l = j - v;
            CharSequences.a(k, l, length());
            return CharSequences.forAsciiBytes(u, k, l);
        }

        public final String toString()
        {
            return new String(u, v, length());
        }

        final byte u[];
        final int v;
        final int w;

        _cls2(byte abyte0[], int i, int j)
        {
            u = abyte0;
            v = i;
            w = j;
            super();
        }
    }

}
