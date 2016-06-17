// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;

// Referenced classes of package com.google.zxing.oned.rss.expanded.decoders:
//            AI013x0xDecoder

final class AI01320xDecoder extends AI013x0xDecoder
{

    AI01320xDecoder(BitArray bitarray)
    {
        super(bitarray);
    }

    protected void addWeightCode(StringBuffer stringbuffer, int i)
    {
        if(i < 10000)
            stringbuffer.append("(3202)");
        else
            stringbuffer.append("(3203)");
    }

    protected int checkWeight(int i)
    {
        if(i >= 10000)
            i -= 10000;
        return i;
    }
}
