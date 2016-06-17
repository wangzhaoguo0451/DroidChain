// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

public final class WhiteRectangleDetector
{

    public WhiteRectangleDetector(BitMatrix bitmatrix)
    {
        image = bitmatrix;
        height = bitmatrix.getHeight();
        width = bitmatrix.getWidth();
    }

    private ResultPoint[] centerEdges(ResultPoint resultpoint, ResultPoint resultpoint1, ResultPoint resultpoint2, ResultPoint resultpoint3)
    {
        float f = resultpoint.getX();
        float f1 = resultpoint.getY();
        float f2 = resultpoint1.getX();
        float f3 = resultpoint1.getY();
        float f4 = resultpoint2.getX();
        float f5 = resultpoint2.getY();
        float f6 = resultpoint3.getX();
        float f7 = resultpoint3.getY();
        ResultPoint aresultpoint[];
        if(f < (float)(width / 2))
        {
            aresultpoint = new ResultPoint[4];
            aresultpoint[0] = new ResultPoint(f6 - 1.0F, 1.0F + f7);
            aresultpoint[1] = new ResultPoint(1.0F + f2, 1.0F + f3);
            aresultpoint[2] = new ResultPoint(f4 - 1.0F, f5 - 1.0F);
            aresultpoint[3] = new ResultPoint(1.0F + f, f1 - 1.0F);
        } else
        {
            aresultpoint = new ResultPoint[4];
            aresultpoint[0] = new ResultPoint(1.0F + f6, 1.0F + f7);
            aresultpoint[1] = new ResultPoint(1.0F + f2, f3 - 1.0F);
            aresultpoint[2] = new ResultPoint(f4 - 1.0F, 1.0F + f5);
            aresultpoint[3] = new ResultPoint(f - 1.0F, f1 - 1.0F);
        }
        return aresultpoint;
    }

    private boolean containsBlackPoint(int i, int j, int k, boolean flag)
    {
        boolean flag1 = true;
        if(!flag) goto _L2; else goto _L1
_L1:
        int i1 = i;
_L5:
        if(i1 > j)
            break MISSING_BLOCK_LABEL_67;
        if(!image.get(i1, k)) goto _L4; else goto _L3
_L3:
        return flag1;
_L4:
        i1++;
          goto _L5
_L2:
        int l = i;
_L7:
        if(l > j)
            break MISSING_BLOCK_LABEL_67;
        if(image.get(k, l)) goto _L3; else goto _L6
_L6:
        l++;
          goto _L7
        flag1 = false;
          goto _L3
    }

    private static int distanceL2(float f, float f1, float f2, float f3)
    {
        float f4 = f - f2;
        float f5 = f1 - f3;
        return round((float)Math.sqrt(f4 * f4 + f5 * f5));
    }

    private ResultPoint getBlackPointOnSegment(float f, float f1, float f2, float f3)
    {
        int i;
        float f4;
        float f5;
        int j;
        i = distanceL2(f, f1, f2, f3);
        f4 = (f2 - f) / (float)i;
        f5 = (f3 - f1) / (float)i;
        j = 0;
_L3:
        int k;
        int l;
        if(j >= i)
            break MISSING_BLOCK_LABEL_103;
        k = round(f + f4 * (float)j);
        l = round(f1 + f5 * (float)j);
        if(!image.get(k, l)) goto _L2; else goto _L1
_L1:
        ResultPoint resultpoint = new ResultPoint(k, l);
_L4:
        return resultpoint;
_L2:
        j++;
          goto _L3
        resultpoint = null;
          goto _L4
    }

    private static int round(float f)
    {
        return (int)(0.5F + f);
    }

    public ResultPoint[] detect()
        throws NotFoundException
    {
        int i;
        int j;
        int k;
        int l;
        boolean flag;
        boolean flag1;
        boolean flag2;
        i = -40 + width >> 1;
        j = 40 + width >> 1;
        k = -40 + height >> 1;
        l = 40 + height >> 1;
        flag = false;
        flag1 = true;
        flag2 = false;
_L1:
        int i1;
        ResultPoint resultpoint;
        int j1;
        if(flag1)
        {
            flag1 = false;
            boolean flag3 = true;
            do
            {
                if(!flag3 || j >= width)
                    break;
                flag3 = containsBlackPoint(k, l, j, false);
                if(flag3)
                {
                    j++;
                    flag1 = true;
                }
            } while(true);
            if(j < width)
            {
                boolean flag4 = true;
                do
                {
                    if(!flag4 || l >= height)
                        break;
                    flag4 = containsBlackPoint(i, j, l, true);
                    if(flag4)
                    {
                        l++;
                        flag1 = true;
                    }
                } while(true);
                if(l >= height)
                {
                    flag = true;
                } else
                {
                    boolean flag5 = true;
                    do
                    {
                        if(!flag5 || i < 0)
                            break;
                        flag5 = containsBlackPoint(k, l, i, false);
                        if(flag5)
                        {
                            i--;
                            flag1 = true;
                        }
                    } while(true);
                    if(i < 0)
                    {
                        flag = true;
                    } else
                    {
label0:
                        {
                            boolean flag6 = true;
                            do
                            {
                                if(!flag6 || k < 0)
                                    break;
                                flag6 = containsBlackPoint(i, j, k, true);
                                if(flag6)
                                {
                                    k--;
                                    flag1 = true;
                                }
                            } while(true);
                            if(k >= 0)
                                break label0;
                            flag = true;
                        }
                    }
                }
            }
        }
_L3:
        for(flag = true; flag || !flag2;)
            break MISSING_BLOCK_LABEL_515;

        i1 = j - i;
        resultpoint = null;
        j1 = 1;
_L2:
        if(j1 < i1)
        {
            resultpoint = getBlackPointOnSegment(i, l - j1, i + j1, l);
            if(resultpoint == null)
                break MISSING_BLOCK_LABEL_335;
        }
        if(resultpoint == null)
            throw NotFoundException.getNotFoundInstance();
        break MISSING_BLOCK_LABEL_341;
        if(flag1)
            flag2 = true;
          goto _L1
        j1++;
          goto _L2
        ResultPoint resultpoint1 = null;
        int k1 = 1;
label1:
        do
        {
label2:
            {
                if(k1 < i1)
                {
                    resultpoint1 = getBlackPointOnSegment(i, k + k1, i + k1, k);
                    if(resultpoint1 == null)
                        break label2;
                }
                if(resultpoint1 == null)
                    throw NotFoundException.getNotFoundInstance();
                break label1;
            }
            k1++;
        } while(true);
        ResultPoint resultpoint2 = null;
        int l1 = 1;
label3:
        do
        {
label4:
            {
                if(l1 < i1)
                {
                    resultpoint2 = getBlackPointOnSegment(j, k + l1, j - l1, k);
                    if(resultpoint2 == null)
                        break label4;
                }
                if(resultpoint2 == null)
                    throw NotFoundException.getNotFoundInstance();
                break label3;
            }
            l1++;
        } while(true);
        ResultPoint resultpoint3 = null;
        int i2 = 1;
        do
        {
label5:
            {
                if(i2 < i1)
                {
                    resultpoint3 = getBlackPointOnSegment(j, l - i2, j - i2, l);
                    if(resultpoint3 == null)
                        break label5;
                }
                if(resultpoint3 == null)
                    throw NotFoundException.getNotFoundInstance();
                else
                    return centerEdges(resultpoint3, resultpoint, resultpoint2, resultpoint1);
            }
            i2++;
        } while(true);
          goto _L1
        throw NotFoundException.getNotFoundInstance();
          goto _L3
    }

    private static final int CORR = 1;
    private static final int INIT_SIZE = 40;
    private final int height;
    private final BitMatrix image;
    private final int width;
}
