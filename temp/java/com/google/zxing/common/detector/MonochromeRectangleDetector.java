// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

public final class MonochromeRectangleDetector
{

    public MonochromeRectangleDetector(BitMatrix bitmatrix)
    {
        image = bitmatrix;
    }

    private int[] blackWhiteRange(int i, int j, int k, int l, boolean flag)
    {
        int i1 = k + l >> 1;
        int j1 = i1;
        int k1;
        int l1;
        do
        {
            if(j1 < k)
                break;
            if(flag ? image.get(j1, i) : image.get(i, j1))
            {
                j1--;
                continue;
            }
            int l2 = j1;
            int i3;
            while(--j1 >= k && (flag ? !image.get(j1, i) : !image.get(i, j1))) ;
            i3 = l2 - j1;
            if(j1 >= k && i3 <= j)
                continue;
            j1 = l2;
            break;
        } while(true);
        k1 = j1 + 1;
        l1 = i1;
        int ai[];
        do
        {
            if(l1 >= l)
                break;
            if(flag ? image.get(l1, i) : image.get(i, l1))
            {
                l1++;
                continue;
            }
            int j2 = l1;
            int i2;
            int k2;
            while(++l1 < l && (flag ? !image.get(l1, i) : !image.get(i, l1))) ;
            k2 = l1 - j2;
            if(l1 < l && k2 <= j)
                continue;
            l1 = j2;
            break;
        } while(true);
        i2 = l1 - 1;
        if(i2 > k1)
        {
            ai = new int[2];
            ai[0] = k1;
            ai[1] = i2;
        } else
        {
            ai = null;
        }
        return ai;
    }

    private ResultPoint findCornerFromCenter(int i, int j, int k, int l, int i1, int j1, int k1, 
            int l1, int i2)
        throws NotFoundException
    {
        int ai[] = null;
        int j2 = i1;
        for(int k2 = i; j2 < l1 && j2 >= k1 && k2 < l && k2 >= k; k2 += j)
        {
            int ai1[];
            if(j == 0)
                ai1 = blackWhiteRange(j2, i2, k, l, true);
            else
                ai1 = blackWhiteRange(k2, i2, k1, l1, false);
            if(ai1 == null)
            {
                if(ai == null)
                    throw NotFoundException.getNotFoundInstance();
                ResultPoint resultpoint;
                if(j == 0)
                {
                    int i3 = j2 - j1;
                    if(ai[0] < i)
                    {
                        if(ai[1] > i)
                        {
                            float f2;
                            if(j1 > 0)
                                f2 = ai[0];
                            else
                                f2 = ai[1];
                            resultpoint = new ResultPoint(f2, i3);
                        } else
                        {
                            resultpoint = new ResultPoint(ai[0], i3);
                        }
                    } else
                    {
                        resultpoint = new ResultPoint(ai[1], i3);
                    }
                } else
                {
                    int l2 = k2 - j;
                    if(ai[0] < i1)
                    {
                        if(ai[1] > i1)
                        {
                            float f = l2;
                            float f1;
                            if(j < 0)
                                f1 = ai[0];
                            else
                                f1 = ai[1];
                            resultpoint = new ResultPoint(f, f1);
                        } else
                        {
                            resultpoint = new ResultPoint(l2, ai[0]);
                        }
                    } else
                    {
                        resultpoint = new ResultPoint(l2, ai[1]);
                    }
                }
                return resultpoint;
            }
            ai = ai1;
            j2 += j1;
        }

        throw NotFoundException.getNotFoundInstance();
    }

    public ResultPoint[] detect()
        throws NotFoundException
    {
        int i = image.getHeight();
        int j = image.getWidth();
        int k = i >> 1;
        int l = j >> 1;
        int i1 = Math.max(1, i / 256);
        int j1 = Math.max(1, j / 256);
        int k1 = -1 + (int)findCornerFromCenter(l, 0, 0, j, k, -i1, 0, i, l >> 1).getY();
        ResultPoint resultpoint = findCornerFromCenter(l, -j1, 0, j, k, 0, k1, i, k >> 1);
        int l1 = -1 + (int)resultpoint.getX();
        ResultPoint resultpoint1 = findCornerFromCenter(l, j1, l1, j, k, 0, k1, i, k >> 1);
        int i2 = 1 + (int)resultpoint1.getX();
        ResultPoint resultpoint2 = findCornerFromCenter(l, 0, l1, i2, k, i1, k1, i, l >> 1);
        int j2 = 1 + (int)resultpoint2.getY();
        ResultPoint resultpoint3 = findCornerFromCenter(l, 0, l1, i2, k, -i1, k1, j2, l >> 2);
        ResultPoint aresultpoint[] = new ResultPoint[4];
        aresultpoint[0] = resultpoint3;
        aresultpoint[1] = resultpoint;
        aresultpoint[2] = resultpoint1;
        aresultpoint[3] = resultpoint2;
        return aresultpoint;
    }

    private static final int MAX_MODULES = 32;
    private final BitMatrix image;
}
