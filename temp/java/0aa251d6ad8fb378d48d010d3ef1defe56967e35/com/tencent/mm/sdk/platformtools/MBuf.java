// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import java.nio.ByteBuffer;

class MBuf
{

    MBuf()
    {
        al = null;
    }

    public ByteBuffer getBuffer()
    {
        return al;
    }

    public int getLen()
    {
        return al.capacity();
    }

    public int getOffset()
    {
        return al.position();
    }

    public void setBuffer(byte abyte0[])
    {
        int i = abyte0.length;
        al = ByteBuffer.allocateDirect(i);
        al.position(0);
        al.put(abyte0, 0, i);
        al.position(0);
    }

    private ByteBuffer al;
}
