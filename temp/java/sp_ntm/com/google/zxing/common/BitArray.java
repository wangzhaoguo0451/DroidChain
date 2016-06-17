// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.zxing.common;


public final class BitArray
{

    public BitArray()
    {
        size = 0;
        bits = new int[1];
    }

    public BitArray(int i)
    {
        size = i;
        bits = makeArray(i);
    }

    private void ensureCapacity(int i)
    {
        if(i > bits.length << 5)
        {
            int ai[] = makeArray(i);
            System.arraycopy(bits, 0, ai, 0, bits.length);
            bits = ai;
        }
    }

    private static int[] makeArray(int i)
    {
        return new int[i + 31 >> 5];
    }

    public void appendBit(boolean flag)
    {
        ensureCapacity(1 + size);
        if(flag)
        {
            int ai[] = bits;
            int i = size >> 5;
            ai[i] = ai[i] | 1 << (0x1f & size);
        }
        size = 1 + size;
    }

    public void appendBitArray(BitArray bitarray)
    {
        int i = bitarray.getSize();
        ensureCapacity(i + size);
        for(int j = 0; j < i; j++)
            appendBit(bitarray.get(j));

    }

    public void appendBits(int i, int j)
    {
        if(j < 0 || j > 32)
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        ensureCapacity(j + size);
        int k = j;
        while(k > 0) 
        {
            boolean flag;
            if((1 & i >> k - 1) == 1)
                flag = true;
            else
                flag = false;
            appendBit(flag);
            k--;
        }
    }

    public void clear()
    {
        int i = bits.length;
        for(int j = 0; j < i; j++)
            bits[j] = 0;

    }

    public void flip(int i)
    {
        int ai[] = bits;
        int j = i >> 5;
        ai[j] = ai[j] ^ 1 << (i & 0x1f);
    }

    public boolean get(int i)
    {
        boolean flag = true;
        if((bits[i >> 5] & flag << (i & 0x1f)) == 0)
            flag = false;
        return flag;
    }

    public int[] getBitArray()
    {
        return bits;
    }

    public int getSize()
    {
        return size;
    }

    public int getSizeInBytes()
    {
        return 7 + size >> 3;
    }

    public boolean isRange(int i, int j, boolean flag)
    {
        boolean flag1;
        flag1 = true;
        if(j < i)
            throw new IllegalArgumentException();
        if(j != i) goto _L2; else goto _L1
_L1:
        return flag1;
_L2:
        int k = j - 1;
        int l = i >> 5;
        int i1 = k >> 5;
        int j1 = l;
        do
        {
            if(j1 <= i1)
            {
label0:
                {
                    int k1;
                    int l1;
                    int i2;
                    int k2;
                    if(j1 > l)
                        k1 = 0;
                    else
                        k1 = i & 0x1f;
                    if(j1 < i1)
                        l1 = 31;
                    else
                        l1 = k & 0x1f;
                    if(k1 == 0 && l1 == 31)
                    {
                        i2 = -1;
                    } else
                    {
                        i2 = 0;
                        int j2 = k1;
                        while(j2 <= l1) 
                        {
                            i2 |= flag1 << j2;
                            j2++;
                        }
                    }
                    k2 = i2 & bits[j1];
                    if(!flag)
                        i2 = 0;
                    if(k2 == i2)
                        break label0;
                    flag1 = false;
                }
            }
            if(true)
                continue;
            j1++;
        } while(true);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void reverse()
    {
        int ai[] = new int[bits.length];
        int i = size;
        for(int j = 0; j < i; j++)
            if(get(-1 + (i - j)))
            {
                int k = j >> 5;
                ai[k] = ai[k] | 1 << (j & 0x1f);
            }

        bits = ai;
    }

    public void set(int i)
    {
        int ai[] = bits;
        int j = i >> 5;
        ai[j] = ai[j] | 1 << (i & 0x1f);
    }

    public void setBulk(int i, int j)
    {
        bits[i >> 5] = j;
    }

    public void toBytes(int i, byte abyte0[], int j, int k)
    {
        for(int l = 0; l < k; l++)
        {
            int i1 = 0;
            for(int j1 = 0; j1 < 8; j1++)
            {
                if(get(i))
                    i1 |= 1 << 7 - j1;
                i++;
            }

            abyte0[j + l] = (byte)i1;
        }

    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer(size);
        int i = 0;
        while(i < size) 
        {
            if((i & 7) == 0)
                stringbuffer.append(' ');
            char c;
            if(get(i))
                c = 'X';
            else
                c = '.';
            stringbuffer.append(c);
            i++;
        }
        return stringbuffer.toString();
    }

    public void xor(BitArray bitarray)
    {
        if(bits.length != bitarray.bits.length)
            throw new IllegalArgumentException("Sizes don't match");
        for(int i = 0; i < bits.length; i++)
        {
            int ai[] = bits;
            ai[i] = ai[i] ^ bitarray.bits[i];
        }

    }

    public int bits[];
    public int size;
}
