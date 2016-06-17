// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.common.reedsolomon;


// Referenced classes of package com.google.zxing.common.reedsolomon:
//            ReedSolomonException, GF256Poly, GF256

public final class ReedSolomonDecoder
{

    public ReedSolomonDecoder(GF256 gf256)
    {
        field = gf256;
    }

    private int[] findErrorLocations(GF256Poly gf256poly)
        throws ReedSolomonException
    {
        int i = gf256poly.getDegree();
        int ai[];
        if(i == 1)
        {
            ai = new int[1];
            ai[0] = gf256poly.getCoefficient(1);
        } else
        {
            ai = new int[i];
            int j = 0;
            for(int k = 1; k < 256 && j < i; k++)
                if(gf256poly.evaluateAt(k) == 0)
                {
                    ai[j] = field.inverse(k);
                    j++;
                }

            if(j != i)
                throw new ReedSolomonException("Error locator degree does not match number of roots");
        }
        return ai;
    }

    private int[] findErrorMagnitudes(GF256Poly gf256poly, int ai[], boolean flag)
    {
        int i = ai.length;
        int ai1[] = new int[i];
        for(int j = 0; j < i; j++)
        {
            int k = field.inverse(ai[j]);
            int l = 1;
            int i1 = 0;
            while(i1 < i) 
            {
                if(j != i1)
                {
                    int j1 = field.multiply(ai[i1], k);
                    int k1;
                    if((j1 & 1) == 0)
                        k1 = j1 | 1;
                    else
                        k1 = j1 & -2;
                    l = field.multiply(l, k1);
                }
                i1++;
            }
            ai1[j] = field.multiply(gf256poly.evaluateAt(k), field.inverse(l));
            if(flag)
                ai1[j] = field.multiply(ai1[j], k);
        }

        return ai1;
    }

    private GF256Poly[] runEuclideanAlgorithm(GF256Poly gf256poly, GF256Poly gf256poly1, int i)
        throws ReedSolomonException
    {
        if(gf256poly.getDegree() < gf256poly1.getDegree())
        {
            GF256Poly gf256poly14 = gf256poly;
            gf256poly = gf256poly1;
            gf256poly1 = gf256poly14;
        }
        GF256Poly gf256poly2 = gf256poly;
        GF256Poly gf256poly3 = gf256poly1;
        GF256Poly gf256poly4 = field.getOne();
        GF256Poly gf256poly5 = field.getZero();
        GF256Poly gf256poly6 = field.getZero();
        GF256Poly gf256poly7;
        GF256Poly gf256poly12;
        GF256Poly gf256poly13;
        for(gf256poly7 = field.getOne(); gf256poly3.getDegree() >= i / 2; gf256poly7 = gf256poly13.multiply(gf256poly6).addOrSubtract(gf256poly12))
        {
            GF256Poly gf256poly10 = gf256poly2;
            GF256Poly gf256poly11 = gf256poly4;
            gf256poly12 = gf256poly6;
            gf256poly2 = gf256poly3;
            gf256poly4 = gf256poly5;
            gf256poly6 = gf256poly7;
            if(gf256poly2.isZero())
                throw new ReedSolomonException("r_{i-1} was zero");
            gf256poly3 = gf256poly10;
            gf256poly13 = field.getZero();
            int l = gf256poly2.getCoefficient(gf256poly2.getDegree());
            int i1 = field.inverse(l);
            int j1;
            int k1;
            for(; gf256poly3.getDegree() >= gf256poly2.getDegree() && !gf256poly3.isZero(); gf256poly3 = gf256poly3.addOrSubtract(gf256poly2.multiplyByMonomial(j1, k1)))
            {
                j1 = gf256poly3.getDegree() - gf256poly2.getDegree();
                k1 = field.multiply(gf256poly3.getCoefficient(gf256poly3.getDegree()), i1);
                gf256poly13 = gf256poly13.addOrSubtract(field.buildMonomial(j1, k1));
            }

            gf256poly5 = gf256poly13.multiply(gf256poly4).addOrSubtract(gf256poly11);
        }

        int j = gf256poly7.getCoefficient(0);
        if(j == 0)
        {
            throw new ReedSolomonException("sigmaTilde(0) was zero");
        } else
        {
            int k = field.inverse(j);
            GF256Poly gf256poly8 = gf256poly7.multiply(k);
            GF256Poly gf256poly9 = gf256poly3.multiply(k);
            GF256Poly agf256poly[] = new GF256Poly[2];
            agf256poly[0] = gf256poly8;
            agf256poly[1] = gf256poly9;
            return agf256poly;
        }
    }

    public void decode(int ai[], int i)
        throws ReedSolomonException
    {
        GF256Poly gf256poly = new GF256Poly(field, ai);
        int ai1[] = new int[i];
        boolean flag = field.equals(GF256.DATA_MATRIX_FIELD);
        boolean flag1 = true;
        int j = 0;
        while(j < i) 
        {
            GF256 gf256 = field;
            int i1;
            int j1;
            if(flag)
                i1 = j + 1;
            else
                i1 = j;
            j1 = gf256poly.evaluateAt(gf256.exp(i1));
            ai1[(-1 + ai1.length) - j] = j1;
            if(j1 != 0)
                flag1 = false;
            j++;
        }
        if(!flag1)
        {
            GF256Poly gf256poly1 = new GF256Poly(field, ai1);
            GF256Poly agf256poly[] = runEuclideanAlgorithm(field.buildMonomial(i, 1), gf256poly1, i);
            GF256Poly gf256poly2 = agf256poly[0];
            GF256Poly gf256poly3 = agf256poly[1];
            int ai2[] = findErrorLocations(gf256poly2);
            int ai3[] = findErrorMagnitudes(gf256poly3, ai2, flag);
            int k = 0;
            while(k < ai2.length) 
            {
                int l = (-1 + ai.length) - field.log(ai2[k]);
                if(l < 0)
                    throw new ReedSolomonException("Bad error location");
                ai[l] = GF256.addOrSubtract(ai[l], ai3[k]);
                k++;
            }
        }
    }

    private final GF256 field;
}
