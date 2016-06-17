// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.sdk.platformtools;

import java.nio.ByteBuffer;

public class LVBuffer
{

    public LVBuffer()
    {
    }

    private int b(int i)
    {
        if(U.limit() - U.position() <= i)
        {
            ByteBuffer bytebuffer = ByteBuffer.allocate(4096 + U.limit());
            bytebuffer.put(U.array(), 0, U.position());
            U = bytebuffer;
        }
        return 0;
    }

    public byte[] buildFinish()
    {
        if(!V)
        {
            throw new Exception("Buffer For Parse");
        } else
        {
            b(1);
            U.put((byte)125);
            byte abyte0[] = new byte[U.position()];
            System.arraycopy(U.array(), 0, abyte0, 0, abyte0.length);
            return abyte0;
        }
    }

    public boolean checkGetFinish()
    {
        boolean flag = true;
        if(U.limit() - U.position() > flag)
            flag = false;
        return flag;
    }

    public int getInt()
    {
        if(V)
            throw new Exception("Buffer For Build");
        else
            return U.getInt();
    }

    public long getLong()
    {
        if(V)
            throw new Exception("Buffer For Build");
        else
            return U.getLong();
    }

    public String getString()
    {
        if(V)
            throw new Exception("Buffer For Build");
        short word0 = U.getShort();
        if(word0 > 2048)
        {
            U = null;
            throw new Exception("Buffer String Length Error");
        }
        String s;
        if(word0 == 0)
        {
            s = "";
        } else
        {
            byte abyte0[] = new byte[word0];
            U.get(abyte0, 0, word0);
            s = new String(abyte0);
        }
        return s;
    }

    public int initBuild()
    {
        U = ByteBuffer.allocate(4096);
        U.put((byte)123);
        V = true;
        return 0;
    }

    public int initParse(byte abyte0[])
    {
        byte byte0 = -1;
        byte byte1;
        if(abyte0 == null || abyte0.length == 0)
            byte1 = byte0;
        else
        if(abyte0[0] != 123)
            byte1 = -2;
        else
        if(abyte0[-1 + abyte0.length] != 125)
            byte1 = -3;
        else
            byte1 = 0;
        if(byte1 != 0)
        {
            U = null;
        } else
        {
            U = ByteBuffer.wrap(abyte0);
            U.position(1);
            V = false;
            byte0 = 0;
        }
        return byte0;
    }

    public int putInt(int i)
    {
        if(!V)
        {
            throw new Exception("Buffer For Parse");
        } else
        {
            b(4);
            U.putInt(i);
            return 0;
        }
    }

    public int putLong(long l)
    {
        if(!V)
        {
            throw new Exception("Buffer For Parse");
        } else
        {
            b(8);
            U.putLong(l);
            return 0;
        }
    }

    public int putString(String s)
    {
        if(!V)
            throw new Exception("Buffer For Parse");
        byte abyte0[] = null;
        if(s != null)
            abyte0 = s.getBytes();
        if(abyte0 == null)
            abyte0 = new byte[0];
        if(abyte0.length > 2048)
            throw new Exception("Buffer String Length Error");
        b(2 + abyte0.length);
        U.putShort((short)abyte0.length);
        if(abyte0.length > 0)
            U.put(abyte0);
        return 0;
    }

    public static final int LENGTH_ALLOC_PER_NEW = 4096;
    public static final int MAX_STRING_LENGTH = 2048;
    private ByteBuffer U;
    private boolean V;
}
