// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.oned.rss.expanded;

import com.google.zxing.common.BitArray;
import com.google.zxing.oned.rss.DataCharacter;
import java.util.Vector;

// Referenced classes of package com.google.zxing.oned.rss.expanded:
//            ExpandedPair

final class BitArrayBuilder
{

    private BitArrayBuilder()
    {
    }

    static BitArray buildBitArray(Vector vector)
    {
        int i = -1 + (vector.size() << 1);
        if(((ExpandedPair)vector.lastElement()).getRightChar() == null)
            i--;
        BitArray bitarray = new BitArray(i * 12);
        int j = 0;
        int k = ((ExpandedPair)vector.elementAt(0)).getRightChar().getValue();
        for(int l = 11; l >= 0; l--)
        {
            if((k & 1 << l) != 0)
                bitarray.set(j);
            j++;
        }

label0:
        for(int i1 = 1; i1 < vector.size(); i1++)
        {
            ExpandedPair expandedpair = (ExpandedPair)vector.elementAt(i1);
            int j1 = expandedpair.getLeftChar().getValue();
            for(int k1 = 11; k1 >= 0; k1--)
            {
                if((j1 & 1 << k1) != 0)
                    bitarray.set(j);
                j++;
            }

            if(expandedpair.getRightChar() == null)
                continue;
            int l1 = expandedpair.getRightChar().getValue();
            int i2 = 11;
            do
            {
                if(i2 < 0)
                    continue label0;
                if((l1 & 1 << i2) != 0)
                    bitarray.set(j);
                j++;
                i2--;
            } while(true);
        }

        return bitarray;
    }
}
