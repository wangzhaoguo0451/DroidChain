// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.qrcode.detector;

import com.google.zxing.*;
import com.google.zxing.common.*;
import com.google.zxing.qrcode.decoder.Version;
import java.util.Hashtable;

// Referenced classes of package com.google.zxing.qrcode.detector:
//            FinderPatternFinder, AlignmentPatternFinder, FinderPatternInfo, FinderPattern, 
//            AlignmentPattern

public class Detector
{

    public Detector(BitMatrix bitmatrix)
    {
        image = bitmatrix;
    }

    private float calculateModuleSizeOneWay(ResultPoint resultpoint, ResultPoint resultpoint1)
    {
        float f = sizeOfBlackWhiteBlackRunBothWays((int)resultpoint.getX(), (int)resultpoint.getY(), (int)resultpoint1.getX(), (int)resultpoint1.getY());
        float f1 = sizeOfBlackWhiteBlackRunBothWays((int)resultpoint1.getX(), (int)resultpoint1.getY(), (int)resultpoint.getX(), (int)resultpoint.getY());
        float f2;
        if(Float.isNaN(f))
            f2 = f1 / 7F;
        else
        if(Float.isNaN(f1))
            f2 = f / 7F;
        else
            f2 = (f + f1) / 14F;
        return f2;
    }

    protected static int computeDimension(ResultPoint resultpoint, ResultPoint resultpoint1, ResultPoint resultpoint2, float f)
        throws NotFoundException
    {
        int i = 7 + (round(ResultPoint.distance(resultpoint, resultpoint1) / f) + round(ResultPoint.distance(resultpoint, resultpoint2) / f) >> 1);
        i & 3;
        JVM INSTR tableswitch 0 3: default 64
    //                   0 67
    //                   1 64
    //                   2 73
    //                   3 79;
           goto _L1 _L2 _L1 _L3 _L4
_L1:
        return i;
_L2:
        i++;
        continue; /* Loop/switch isn't completed */
_L3:
        i--;
        if(true) goto _L1; else goto _L4
_L4:
        throw NotFoundException.getNotFoundInstance();
    }

    private static int round(float f)
    {
        return (int)(0.5F + f);
    }

    private static BitMatrix sampleGrid(BitMatrix bitmatrix, PerspectiveTransform perspectivetransform, int i)
        throws NotFoundException
    {
        return GridSampler.getInstance().sampleGrid(bitmatrix, i, perspectivetransform);
    }

    private float sizeOfBlackWhiteBlackRun(int i, int j, int k, int l)
    {
        int i1;
        int j1;
        int k1;
        byte byte0;
        int l1;
        int i2;
        int j2;
        int k2;
        float f;
        boolean flag;
        int l3;
        int i4;
        if(Math.abs(l - j) > Math.abs(k - i))
            flag = true;
        else
            flag = false;
        if(flag)
        {
            int j4 = i;
            i = j;
            j = j4;
            int k4 = k;
            k = l;
            l = k4;
        }
        i1 = Math.abs(k - i);
        j1 = Math.abs(l - j);
        k1 = -i1 >> 1;
        if(j < l)
            byte0 = 1;
        else
            byte0 = -1;
        if(i < k)
            l1 = 1;
        else
            l1 = -1;
        i2 = 0;
        j2 = i;
        k2 = j;
_L8:
        if(j2 == k) goto _L2; else goto _L1
_L1:
        int j3;
        int k3;
        if(flag)
            j3 = k2;
        else
            j3 = j2;
        if(flag)
            k3 = j2;
        else
            k3 = k2;
        if(i2 == 1)
        {
            if(image.get(j3, k3))
                i2++;
        } else
        if(!image.get(j3, k3))
            i2++;
        if(i2 != 3) goto _L4; else goto _L3
_L3:
        l3 = j2 - i;
        i4 = k2 - j;
        if(l1 < 0)
            l3++;
        f = (float)Math.sqrt(l3 * l3 + i4 * i4);
_L6:
        return f;
_L4:
        k1 += j1;
        if(k1 <= 0)
            break MISSING_BLOCK_LABEL_305;
        if(k2 != l)
            break; /* Loop/switch isn't completed */
_L2:
        int l2 = k - i;
        int i3 = l - j;
        f = (float)Math.sqrt(l2 * l2 + i3 * i3);
        if(true) goto _L6; else goto _L5
_L5:
        k2 += byte0;
        k1 -= i1;
        j2 += l1;
        if(true) goto _L8; else goto _L7
_L7:
    }

    private float sizeOfBlackWhiteBlackRunBothWays(int i, int j, int k, int l)
    {
        float f = sizeOfBlackWhiteBlackRun(i, j, k, l);
        float f1 = 1.0F;
        int i1 = i - (k - i);
        int j1;
        float f2;
        if(i1 < 0)
        {
            f1 = (float)i / (float)(i - i1);
            i1 = 0;
        } else
        if(i1 > image.getWidth())
        {
            f1 = (float)(image.getWidth() - i) / (float)(i1 - i);
            i1 = image.getWidth();
        }
        j1 = (int)((float)j - f1 * (float)(l - j));
        f2 = 1.0F;
        if(j1 < 0)
        {
            f2 = (float)j / (float)(j - j1);
            j1 = 0;
        } else
        if(j1 > image.getHeight())
        {
            f2 = (float)(image.getHeight() - j) / (float)(j1 - j);
            j1 = image.getHeight();
        }
        return f + sizeOfBlackWhiteBlackRun(i, j, (int)((float)i + f2 * (float)(i1 - i)), j1);
    }

    protected float calculateModuleSize(ResultPoint resultpoint, ResultPoint resultpoint1, ResultPoint resultpoint2)
    {
        return (calculateModuleSizeOneWay(resultpoint, resultpoint1) + calculateModuleSizeOneWay(resultpoint, resultpoint2)) / 2.0F;
    }

    public PerspectiveTransform createTransform(ResultPoint resultpoint, ResultPoint resultpoint1, ResultPoint resultpoint2, ResultPoint resultpoint3, int i)
    {
        float f = (float)i - 3.5F;
        float f1;
        float f2;
        float f3;
        float f4;
        if(resultpoint3 != null)
        {
            f1 = resultpoint3.getX();
            f2 = resultpoint3.getY();
            f3 = f - 3F;
            f4 = f3;
        } else
        {
            f1 = (resultpoint1.getX() - resultpoint.getX()) + resultpoint2.getX();
            f2 = (resultpoint1.getY() - resultpoint.getY()) + resultpoint2.getY();
            f3 = f;
            f4 = f;
        }
        return PerspectiveTransform.quadrilateralToQuadrilateral(3.5F, 3.5F, f, 3.5F, f4, f3, 3.5F, f, resultpoint.getX(), resultpoint.getY(), resultpoint1.getX(), resultpoint1.getY(), f1, f2, resultpoint2.getX(), resultpoint2.getY());
    }

    public DetectorResult detect()
        throws NotFoundException, FormatException
    {
        return detect(null);
    }

    public DetectorResult detect(Hashtable hashtable)
        throws NotFoundException, FormatException
    {
        ResultPointCallback resultpointcallback;
        if(hashtable == null)
            resultpointcallback = null;
        else
            resultpointcallback = (ResultPointCallback)hashtable.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        resultPointCallback = resultpointcallback;
        return processFinderPatternInfo((new FinderPatternFinder(image, resultPointCallback)).find(hashtable));
    }

    protected AlignmentPattern findAlignmentInRegion(float f, int i, int j, float f1)
        throws NotFoundException
    {
        int k = (int)(f1 * f);
        int l = Math.max(0, i - k);
        int i1 = Math.min(-1 + image.getWidth(), i + k);
        if((float)(i1 - l) < f * 3F)
            throw NotFoundException.getNotFoundInstance();
        int j1 = Math.max(0, j - k);
        int k1 = Math.min(-1 + image.getHeight(), j + k);
        if((float)(k1 - j1) < f * 3F)
            throw NotFoundException.getNotFoundInstance();
        else
            return (new AlignmentPatternFinder(image, l, j1, i1 - l, k1 - j1, f, resultPointCallback)).find();
    }

    protected BitMatrix getImage()
    {
        return image;
    }

    protected ResultPointCallback getResultPointCallback()
    {
        return resultPointCallback;
    }

    protected DetectorResult processFinderPatternInfo(FinderPatternInfo finderpatterninfo)
        throws NotFoundException, FormatException
    {
        FinderPattern finderpattern;
        FinderPattern finderpattern1;
        FinderPattern finderpattern2;
        float f;
        int i;
        Version version;
        int j;
        AlignmentPattern alignmentpattern;
        finderpattern = finderpatterninfo.getTopLeft();
        finderpattern1 = finderpatterninfo.getTopRight();
        finderpattern2 = finderpatterninfo.getBottomLeft();
        f = calculateModuleSize(finderpattern, finderpattern1, finderpattern2);
        if(f < 1.0F)
            throw NotFoundException.getNotFoundInstance();
        i = computeDimension(finderpattern, finderpattern1, finderpattern2, f);
        version = Version.getProvisionalVersionForDimension(i);
        j = -7 + version.getDimensionForVersion();
        alignmentpattern = null;
        if(version.getAlignmentPatternCenters().length <= 0) goto _L2; else goto _L1
_L1:
        int k;
        int l;
        int i1;
        float f1 = (finderpattern1.getX() - finderpattern.getX()) + finderpattern2.getX();
        float f2 = (finderpattern1.getY() - finderpattern.getY()) + finderpattern2.getY();
        float f3 = 1.0F - 3F / (float)j;
        k = (int)(finderpattern.getX() + f3 * (f1 - finderpattern.getX()));
        l = (int)(finderpattern.getY() + f3 * (f2 - finderpattern.getY()));
        i1 = 4;
_L5:
        if(i1 > 16) goto _L2; else goto _L3
_L3:
        float f4 = i1;
        AlignmentPattern alignmentpattern1 = findAlignmentInRegion(f, k, l, f4);
        alignmentpattern = alignmentpattern1;
_L2:
        PerspectiveTransform perspectivetransform = createTransform(finderpattern, finderpattern1, finderpattern2, alignmentpattern, i);
        BitMatrix bitmatrix = sampleGrid(image, perspectivetransform, i);
        ResultPoint aresultpoint[];
        NotFoundException notfoundexception;
        if(alignmentpattern == null)
        {
            aresultpoint = new ResultPoint[3];
            aresultpoint[0] = finderpattern2;
            aresultpoint[1] = finderpattern;
            aresultpoint[2] = finderpattern1;
        } else
        {
            aresultpoint = new ResultPoint[4];
            aresultpoint[0] = finderpattern2;
            aresultpoint[1] = finderpattern;
            aresultpoint[2] = finderpattern1;
            aresultpoint[3] = alignmentpattern;
        }
        return new DetectorResult(bitmatrix, aresultpoint);
        notfoundexception;
        i1 <<= 1;
        if(true) goto _L5; else goto _L4
_L4:
    }

    private final BitMatrix image;
    private ResultPointCallback resultPointCallback;
}
