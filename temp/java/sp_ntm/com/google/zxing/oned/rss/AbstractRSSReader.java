// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.oned.rss;

import com.google.zxing.NotFoundException;
import com.google.zxing.oned.OneDReader;

public abstract class AbstractRSSReader extends OneDReader
{

    protected AbstractRSSReader()
    {
        oddCounts = new int[dataCharacterCounters.length / 2];
        evenCounts = new int[dataCharacterCounters.length / 2];
    }

    protected static int count(int ai[])
    {
        int i = 0;
        for(int j = 0; j < ai.length; j++)
            i += ai[j];

        return i;
    }

    protected static void decrement(int ai[], float af[])
    {
        int i = 0;
        float f = af[0];
        for(int j = 1; j < ai.length; j++)
            if(af[j] < f)
            {
                f = af[j];
                i = j;
            }

        ai[i] = -1 + ai[i];
    }

    protected static void increment(int ai[], float af[])
    {
        int i = 0;
        float f = af[0];
        for(int j = 1; j < ai.length; j++)
            if(af[j] > f)
            {
                f = af[j];
                i = j;
            }

        ai[i] = 1 + ai[i];
    }

    protected static boolean isFinderPattern(int ai[])
    {
        boolean flag = true;
        int i = ai[0] + ai[flag];
        int j = i + ai[2] + ai[3];
        float f = (float)i / (float)j;
        if(f >= 0.7916667F && f <= 0.8928571F)
        {
            int k = 0x7fffffff;
            int l = 0x80000000;
            for(int i1 = 0; i1 < ai.length; i1++)
            {
                int j1 = ai[i1];
                if(j1 > l)
                    l = j1;
                if(j1 < k)
                    k = j1;
            }

            if(l >= k * 10)
                flag = false;
        } else
        {
            flag = false;
        }
        return flag;
    }

    protected static int parseFinderValue(int ai[], int ai1[][])
        throws NotFoundException
    {
        for(int i = 0; i < ai1.length; i++)
            if(patternMatchVariance(ai, ai1[i], 102) < 51)
                return i;

        throw NotFoundException.getNotFoundInstance();
    }

    private static final int MAX_AVG_VARIANCE = 51;
    private static final float MAX_FINDER_PATTERN_RATIO = 0.8928571F;
    private static final int MAX_INDIVIDUAL_VARIANCE = 102;
    private static final float MIN_FINDER_PATTERN_RATIO = 0.7916667F;
    protected final int dataCharacterCounters[] = new int[8];
    protected final int decodeFinderCounters[] = new int[4];
    protected final int evenCounts[];
    protected final float evenRoundingErrors[] = new float[4];
    protected final int oddCounts[];
    protected final float oddRoundingErrors[] = new float[4];
}
