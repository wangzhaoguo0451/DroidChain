// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.google.ads.util;

import java.io.UnsupportedEncodingException;

public class com.google.ads.util.b
{
    public static class b extends a
    {

        public final boolean a(byte abyte0[], int i1)
        {
            byte abyte1[];
            byte abyte2[];
            int j1;
            int k1;
            int l1;
            int i2;
            int j2;
            abyte1 = l;
            abyte2 = a;
            j1 = 0;
            k1 = k;
            l1 = 0;
            i2 = i1 + 0;
            j2 = -1;
            c;
            JVM INSTR tableswitch 0 2: default 64
        //                       0 372
        //                       1 386
        //                       2 461;
               goto _L1 _L2 _L3 _L4
_L1:
            int l2;
            int i3;
            byte byte0 = j2;
            l2 = l1;
            i3 = byte0;
_L9:
            if(i3 == -1) goto _L6; else goto _L5
_L5:
            int j12 = 0 + 1;
            abyte2[0] = abyte1[0x3f & i3 >> 18];
            int k12 = j12 + 1;
            abyte2[1] = abyte1[0x3f & i3 >> 12];
            int l12 = k12 + 1;
            abyte2[2] = abyte1[0x3f & i3 >> 6];
            j1 = l12 + 1;
            abyte2[3] = abyte1[i3 & 0x3f];
            if(--k1 != 0) goto _L6; else goto _L7
_L7:
            int j3;
            int k3;
            if(f)
            {
                j1++;
                abyte2[4] = 13;
            }
            int i13 = j1 + 1;
            abyte2[j1] = 10;
            j3 = i13;
            k1 = 19;
              goto _L8
_L2:
            byte byte7 = j2;
            l2 = 0;
            i3 = byte7;
              goto _L9
_L3:
            if(2 > i2) goto _L1; else goto _L10
_L10:
            int j13 = (0xff & j[0]) << 16;
            int k13 = 0 + 1;
            int l13 = j13 | (0xff & abyte0[0]) << 8;
            int i14 = k13 + 1;
            int j14 = l13 | 0xff & abyte0[1];
            c = 0;
            l2 = i14;
            i3 = j14;
              goto _L9
_L4:
            if(i2 > 0)
            {
                int k2 = (0xff & j[0]) << 16 | (0xff & j[1]) << 8;
                l1 = 0 + 1;
                j2 = k2 | 0xff & abyte0[0];
                c = 0;
            }
              goto _L1
_L8:
            for(k3 = l2; k3 + 3 <= i2;)
            {
                int l11 = (0xff & abyte0[k3]) << 16 | (0xff & abyte0[k3 + 1]) << 8 | 0xff & abyte0[k3 + 2];
                abyte2[j3] = abyte1[0x3f & l11 >> 18];
                abyte2[j3 + 1] = abyte1[0x3f & l11 >> 12];
                abyte2[j3 + 2] = abyte1[0x3f & l11 >> 6];
                abyte2[j3 + 3] = abyte1[l11 & 0x3f];
                k3 += 3;
                j3 += 4;
                if(--k1 == 0)
                {
                    int l3;
                    int i4;
                    int j4;
                    int k4;
                    byte byte1;
                    int l4;
                    int i5;
                    int j5;
                    int k5;
                    byte byte2;
                    int l5;
                    int i6;
                    int j6;
                    int k6;
                    int l6;
                    int i7;
                    int j7;
                    int k7;
                    int l7;
                    byte abyte3[];
                    int i8;
                    byte byte3;
                    int j8;
                    byte abyte4[];
                    int k8;
                    byte byte4;
                    int l8;
                    byte byte5;
                    int i9;
                    int j9;
                    int k9;
                    int l9;
                    int i10;
                    int j10;
                    int k10;
                    int l10;
                    int i11;
                    int j11;
                    byte abyte5[];
                    int k11;
                    byte byte6;
                    int i12;
                    if(f)
                    {
                        i12 = j3 + 1;
                        abyte2[j3] = 13;
                    } else
                    {
                        i12 = j3;
                    }
                    j3 = i12 + 1;
                    abyte2[i12] = 10;
                    k1 = 19;
                }
            }

            if(k3 - c == i2 - 1)
            {
                if(c > 0)
                {
                    abyte5 = j;
                    k11 = 0 + 1;
                    byte6 = abyte5[0];
                    i9 = k11;
                    j9 = k3;
                    byte5 = byte6;
                } else
                {
                    l8 = k3 + 1;
                    byte5 = abyte0[k3];
                    i9 = 0;
                    j9 = l8;
                }
                k9 = (byte5 & 0xff) << 4;
                c = c - i9;
                l9 = j3 + 1;
                abyte2[j3] = abyte1[0x3f & k9 >> 6];
                i10 = l9 + 1;
                abyte2[l9] = abyte1[k9 & 0x3f];
                if(d)
                {
                    i11 = i10 + 1;
                    abyte2[i10] = 61;
                    j11 = i11 + 1;
                    abyte2[i11] = 61;
                    j10 = j11;
                } else
                {
                    j10 = i10;
                }
                if(e)
                {
                    if(f)
                    {
                        l10 = j10 + 1;
                        abyte2[j10] = 13;
                        j10 = l10;
                    }
                    k10 = j10 + 1;
                    abyte2[j10] = 10;
                    j10 = k10;
                }
                i4 = j10;
                l3 = j9;
            } else
            if(k3 - c == i2 - 2)
            {
                if(c > 1)
                {
                    abyte4 = j;
                    k8 = 0 + 1;
                    byte4 = abyte4[0];
                    l4 = k8;
                    i5 = k3;
                    byte1 = byte4;
                } else
                {
                    k4 = k3 + 1;
                    byte1 = abyte0[k3];
                    l4 = 0;
                    i5 = k4;
                }
                j5 = (byte1 & 0xff) << 10;
                if(c > 0)
                {
                    abyte3 = j;
                    i8 = l4 + 1;
                    byte3 = abyte3[l4];
                    l5 = i8;
                    j8 = i5;
                    byte2 = byte3;
                    i6 = j8;
                } else
                {
                    k5 = i5 + 1;
                    byte2 = abyte0[i5];
                    l5 = l4;
                    i6 = k5;
                }
                j6 = j5 | (byte2 & 0xff) << 2;
                c = c - l5;
                k6 = j3 + 1;
                abyte2[j3] = abyte1[0x3f & j6 >> 12];
                l6 = k6 + 1;
                abyte2[k6] = abyte1[0x3f & j6 >> 6];
                i7 = l6 + 1;
                abyte2[l6] = abyte1[j6 & 0x3f];
                if(d)
                {
                    j7 = i7 + 1;
                    abyte2[i7] = 61;
                } else
                {
                    j7 = i7;
                }
                if(e)
                {
                    if(f)
                    {
                        l7 = j7 + 1;
                        abyte2[j7] = 13;
                        j7 = l7;
                    }
                    k7 = j7 + 1;
                    abyte2[j7] = 10;
                    j7 = k7;
                }
                i4 = j7;
                l3 = i6;
            } else
            {
                if(e && j3 > 0 && k1 != 19)
                {
                    if(f)
                    {
                        j4 = j3 + 1;
                        abyte2[j3] = 13;
                    } else
                    {
                        j4 = j3;
                    }
                    j3 = j4 + 1;
                    abyte2[j4] = 10;
                }
                l3 = k3;
                i4 = j3;
            }
            if(!g && c != 0)
                throw new AssertionError();
            if(!g && l3 != i2)
            {
                throw new AssertionError();
            } else
            {
                b = i4;
                k = k1;
                return true;
            }
_L6:
            j3 = j1;
            k3 = l2;
            if(true) goto _L8; else goto _L11
_L11:
              goto _L9
        }

        static final boolean g;
        private static final byte h[];
        private static final byte i[];
        public int c;
        public final boolean d = false;
        public final boolean e = false;
        public final boolean f = false;
        private final byte j[] = new byte[2];
        private int k;
        private final byte l[];

        static 
        {
            boolean flag;
            byte abyte0[];
            byte abyte1[];
            if(!com/google/ads/util/b.desiredAssertionStatus())
                flag = true;
            else
                flag = false;
            g = flag;
            abyte0 = new byte[64];
            abyte0[0] = 65;
            abyte0[1] = 66;
            abyte0[2] = 67;
            abyte0[3] = 68;
            abyte0[4] = 69;
            abyte0[5] = 70;
            abyte0[6] = 71;
            abyte0[7] = 72;
            abyte0[8] = 73;
            abyte0[9] = 74;
            abyte0[10] = 75;
            abyte0[11] = 76;
            abyte0[12] = 77;
            abyte0[13] = 78;
            abyte0[14] = 79;
            abyte0[15] = 80;
            abyte0[16] = 81;
            abyte0[17] = 82;
            abyte0[18] = 83;
            abyte0[19] = 84;
            abyte0[20] = 85;
            abyte0[21] = 86;
            abyte0[22] = 87;
            abyte0[23] = 88;
            abyte0[24] = 89;
            abyte0[25] = 90;
            abyte0[26] = 97;
            abyte0[27] = 98;
            abyte0[28] = 99;
            abyte0[29] = 100;
            abyte0[30] = 101;
            abyte0[31] = 102;
            abyte0[32] = 103;
            abyte0[33] = 104;
            abyte0[34] = 105;
            abyte0[35] = 106;
            abyte0[36] = 107;
            abyte0[37] = 108;
            abyte0[38] = 109;
            abyte0[39] = 110;
            abyte0[40] = 111;
            abyte0[41] = 112;
            abyte0[42] = 113;
            abyte0[43] = 114;
            abyte0[44] = 115;
            abyte0[45] = 116;
            abyte0[46] = 117;
            abyte0[47] = 118;
            abyte0[48] = 119;
            abyte0[49] = 120;
            abyte0[50] = 121;
            abyte0[51] = 122;
            abyte0[52] = 48;
            abyte0[53] = 49;
            abyte0[54] = 50;
            abyte0[55] = 51;
            abyte0[56] = 52;
            abyte0[57] = 53;
            abyte0[58] = 54;
            abyte0[59] = 55;
            abyte0[60] = 56;
            abyte0[61] = 57;
            abyte0[62] = 43;
            abyte0[63] = 47;
            h = abyte0;
            abyte1 = new byte[64];
            abyte1[0] = 65;
            abyte1[1] = 66;
            abyte1[2] = 67;
            abyte1[3] = 68;
            abyte1[4] = 69;
            abyte1[5] = 70;
            abyte1[6] = 71;
            abyte1[7] = 72;
            abyte1[8] = 73;
            abyte1[9] = 74;
            abyte1[10] = 75;
            abyte1[11] = 76;
            abyte1[12] = 77;
            abyte1[13] = 78;
            abyte1[14] = 79;
            abyte1[15] = 80;
            abyte1[16] = 81;
            abyte1[17] = 82;
            abyte1[18] = 83;
            abyte1[19] = 84;
            abyte1[20] = 85;
            abyte1[21] = 86;
            abyte1[22] = 87;
            abyte1[23] = 88;
            abyte1[24] = 89;
            abyte1[25] = 90;
            abyte1[26] = 97;
            abyte1[27] = 98;
            abyte1[28] = 99;
            abyte1[29] = 100;
            abyte1[30] = 101;
            abyte1[31] = 102;
            abyte1[32] = 103;
            abyte1[33] = 104;
            abyte1[34] = 105;
            abyte1[35] = 106;
            abyte1[36] = 107;
            abyte1[37] = 108;
            abyte1[38] = 109;
            abyte1[39] = 110;
            abyte1[40] = 111;
            abyte1[41] = 112;
            abyte1[42] = 113;
            abyte1[43] = 114;
            abyte1[44] = 115;
            abyte1[45] = 116;
            abyte1[46] = 117;
            abyte1[47] = 118;
            abyte1[48] = 119;
            abyte1[49] = 120;
            abyte1[50] = 121;
            abyte1[51] = 122;
            abyte1[52] = 48;
            abyte1[53] = 49;
            abyte1[54] = 50;
            abyte1[55] = 51;
            abyte1[56] = 52;
            abyte1[57] = 53;
            abyte1[58] = 54;
            abyte1[59] = 55;
            abyte1[60] = 56;
            abyte1[61] = 57;
            abyte1[62] = 45;
            abyte1[63] = 95;
            i = abyte1;
        }

        public b()
        {
            a = null;
            l = i;
            c = 0;
            int i1;
            if(e)
                i1 = 19;
            else
                i1 = -1;
            k = i1;
        }
    }

    public static abstract class a
    {

        public byte a[];
        public int b;

        public a()
        {
        }
    }


    private com.google.ads.util.b()
    {
    }

    public static String a(byte abyte0[])
    {
        int i;
        b b1;
        int j;
        i = abyte0.length;
        b1 = new b();
        j = 4 * (i / 3);
        if(!b1.d) goto _L2; else goto _L1
_L1:
        if(i % 3 > 0)
            j += 4;
_L13:
        if(!b1.e || i <= 0) goto _L4; else goto _L3
_L3:
        int k = 1 + (i - 1) / 57;
        if(!b1.f) goto _L6; else goto _L5
_L5:
        byte byte0 = 2;
          goto _L7
_L4:
        b1.a = new byte[j];
        b1.a(abyte0, i);
        if(!a && b1.b != j)
            throw new AssertionError();
          goto _L8
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        throw new AssertionError(unsupportedencodingexception);
_L2:
        i % 3;
        JVM INSTR tableswitch 0 2: default 175
    //                   0 34
    //                   1 178
    //                   2 184;
           goto _L9 _L9 _L10 _L11
_L9:
        if(true) goto _L13; else goto _L12
_L12:
_L8:
        String s = new String(b1.a, "US-ASCII");
        return s;
_L7:
        j += k * byte0;
          goto _L4
_L10:
        j += 2;
          goto _L13
_L11:
        j += 3;
          goto _L13
_L6:
        byte0 = 1;
          goto _L7
    }

    static final boolean a;

    static 
    {
        boolean flag;
        if(!com/google/ads/util/b.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        a = flag;
    }
}
