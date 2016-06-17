// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.oned.rss;


public final class RSSUtils
{

    private RSSUtils()
    {
    }

    static int combins(int i, int j)
    {
        int k;
        int l;
        int i1;
        int j1;
        if(i - j > j)
        {
            k = j;
            l = i - j;
        } else
        {
            k = i - j;
            l = j;
        }
        i1 = 1;
        j1 = 1;
        for(int k1 = i; k1 > l; k1--)
        {
            i1 *= k1;
            if(j1 <= k)
            {
                i1 /= j1;
                j1++;
            }
        }

        for(; j1 <= k; j1++)
            i1 /= j1;

        return i1;
    }

    static int[] elements(int ai[], int i, int j)
    {
        int ai1[] = new int[2 + ai.length];
        int k = j << 1;
        ai1[0] = 1;
        int l = 10;
        int i1 = 1;
        for(int j1 = 1; j1 < k - 2; j1 += 2)
        {
            ai1[j1] = ai[j1 - 1] - ai1[j1 - 1];
            ai1[j1 + 1] = ai[j1] - ai1[j1];
            i1 += ai1[j1] + ai1[j1 + 1];
            if(ai1[j1] < l)
                l = ai1[j1];
        }

        ai1[k - 1] = i - i1;
        if(ai1[k - 1] < l)
            l = ai1[k - 1];
        if(l > 1)
        {
            for(int k1 = 0; k1 < k; k1 += 2)
            {
                ai1[k1] = ai1[k1] + (l - 1);
                int l1 = k1 + 1;
                ai1[l1] = ai1[l1] - (l - 1);
            }

        }
        return ai1;
    }

    public static int getRSSvalue(int ai[], int i, boolean flag)
    {
        int j = ai.length;
        int k = 0;
        for(int l = 0; l < j; l++)
            k += ai[l];

        int i1 = 0;
        int j1 = 0;
        int k1 = 0;
        do
        {
            if(k1 >= j - 1)
                break;
            int l1 = 1;
            j1 |= 1 << k1;
            while(l1 < ai[k1]) 
            {
                int i2 = combins(-1 + (k - l1), -2 + (j - k1));
                if(flag && j1 == 0 && k - l1 - (-1 + (j - k1)) >= -1 + (j - k1))
                    i2 -= combins(k - l1 - (j - k1), -2 + (j - k1));
                if(-1 + (j - k1) > 1)
                {
                    int j2 = 0;
                    for(int k2 = k - l1 - (-2 + (j - k1)); k2 > i; k2--)
                        j2 += combins(-1 + (k - l1 - k2), -3 + (j - k1));

                    i2 -= j2 * (j - 1 - k1);
                } else
                if(k - l1 > i)
                    i2--;
                i1 += i2;
                l1++;
                j1 &= -1 ^ 1 << k1;
            }
            k -= l1;
            k1++;
        } while(true);
        return i1;
    }

    static int[] getRSSwidths(int i, int j, int k, int l, boolean flag)
    {
        int ai[];
        int i1;
        int j1;
        ai = new int[k];
        i1 = 0;
        j1 = 0;
_L9:
        if(j1 >= k - 1) goto _L2; else goto _L1
_L1:
        int k1;
        i1 |= 1 << j1;
        k1 = 1;
_L7:
        int l1;
        l1 = combins(-1 + (j - k1), -2 + (k - j1));
        if(flag && i1 == 0 && j - k1 - (-1 + (k - j1)) >= -1 + (k - j1))
            l1 -= combins(j - k1 - (k - j1), -2 + (k - j1));
        if(-1 + (k - j1) <= 1) goto _L4; else goto _L3
_L3:
        int i2 = 0;
        for(int j2 = j - k1 - (-2 + (k - j1)); j2 > l; j2--)
            i2 += combins(-1 + (j - k1 - j2), -3 + (k - j1));

        l1 -= i2 * (k - 1 - j1);
_L6:
        i -= l1;
        if(i >= 0)
            break; /* Loop/switch isn't completed */
        i += l1;
        j -= k1;
        ai[j1] = k1;
        j1++;
        continue; /* Loop/switch isn't completed */
_L4:
        if(j - k1 > l)
            l1--;
        if(true) goto _L6; else goto _L5
_L5:
        k1++;
        i1 &= -1 ^ 1 << j1;
        if(true) goto _L7; else goto _L2
_L2:
        ai[j1] = j;
        return ai;
        if(true) goto _L9; else goto _L8
_L8:
    }
}
