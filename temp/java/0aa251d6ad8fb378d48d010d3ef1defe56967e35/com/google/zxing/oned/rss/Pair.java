// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.oned.rss;


// Referenced classes of package com.google.zxing.oned.rss:
//            DataCharacter, FinderPattern

final class Pair extends DataCharacter
{

    Pair(int i, int j, FinderPattern finderpattern)
    {
        super(i, j);
        finderPattern = finderpattern;
    }

    int getCount()
    {
        return count;
    }

    FinderPattern getFinderPattern()
    {
        return finderPattern;
    }

    void incrementCount()
    {
        count = 1 + count;
    }

    private int count;
    private final FinderPattern finderPattern;
}
