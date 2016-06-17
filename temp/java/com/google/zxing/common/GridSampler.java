// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.common;

import com.google.zxing.NotFoundException;

// Referenced classes of package com.google.zxing.common:
//            DefaultGridSampler, BitMatrix, PerspectiveTransform

public abstract class GridSampler
{

    public GridSampler()
    {
    }

    protected static void checkAndNudgePoints(BitMatrix bitmatrix, float af[])
        throws NotFoundException
    {
        int i = bitmatrix.getWidth();
        int j = bitmatrix.getHeight();
        boolean flag = true;
        int k = 0;
        do
        {
            if(k < af.length && flag)
            {
                int k1 = (int)af[k];
                int l1 = (int)af[k + 1];
                if(k1 < -1 || k1 > i || l1 < -1 || l1 > j)
                    throw NotFoundException.getNotFoundInstance();
                flag = false;
                if(k1 == -1)
                {
                    af[k] = 0.0F;
                    flag = true;
                } else
                if(k1 == i)
                {
                    af[k] = i - 1;
                    flag = true;
                }
                if(l1 == -1)
                {
                    af[k + 1] = 0.0F;
                    flag = true;
                } else
                if(l1 == j)
                {
                    af[k + 1] = j - 1;
                    flag = true;
                }
                k += 2;
                continue;
            }
            boolean flag1 = true;
            int l = -2 + af.length;
            while(l >= 0 && flag1) 
            {
                int i1 = (int)af[l];
                int j1 = (int)af[l + 1];
                if(i1 < -1 || i1 > i || j1 < -1 || j1 > j)
                    throw NotFoundException.getNotFoundInstance();
                flag1 = false;
                if(i1 == -1)
                {
                    af[l] = 0.0F;
                    flag1 = true;
                } else
                if(i1 == i)
                {
                    af[l] = i - 1;
                    flag1 = true;
                }
                if(j1 == -1)
                {
                    af[l + 1] = 0.0F;
                    flag1 = true;
                } else
                if(j1 == j)
                {
                    af[l + 1] = j - 1;
                    flag1 = true;
                }
                l -= 2;
            }
            return;
        } while(true);
    }

    public static GridSampler getInstance()
    {
        return gridSampler;
    }

    public static void setGridSampler(GridSampler gridsampler)
    {
        if(gridsampler == null)
        {
            throw new IllegalArgumentException();
        } else
        {
            gridSampler = gridsampler;
            return;
        }
    }

    public abstract BitMatrix sampleGrid(BitMatrix bitmatrix, int i, float f, float f1, float f2, float f3, float f4, 
            float f5, float f6, float f7, float f8, float f9, float f10, float f11, 
            float f12, float f13, float f14, float f15)
        throws NotFoundException;

    public BitMatrix sampleGrid(BitMatrix bitmatrix, int i, PerspectiveTransform perspectivetransform)
        throws NotFoundException
    {
        throw new IllegalStateException();
    }

    private static GridSampler gridSampler = new DefaultGridSampler();

}
