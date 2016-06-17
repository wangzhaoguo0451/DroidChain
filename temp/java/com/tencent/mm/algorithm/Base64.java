// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;

import java.util.Arrays;

public class Base64
{

    public Base64()
    {
    }

    public static final byte[] decode(String s)
    {
        int i;
        byte abyte1[];
        if(s != null)
            i = s.length();
        else
            i = 0;
        if(i == 0)
        {
            abyte1 = new byte[0];
        } else
        {
            int j = 0;
            int k = 0;
            for(; j < i; j++)
                if(b[s.charAt(j)] < 0)
                    k++;

            if((i - k) % 4 != 0)
            {
                abyte1 = null;
            } else
            {
                int l = i;
                int i1 = 0;
                do
                {
                    if(l <= 1)
                        break;
                    int ai1[] = b;
                    l--;
                    if(ai1[s.charAt(l)] > 0)
                        break;
                    if(s.charAt(l) == '=')
                        i1++;
                } while(true);
                int j1 = (6 * (i - k) >> 3) - i1;
                byte abyte0[] = new byte[j1];
                int k1 = 0;
                int l1 = 0;
                while(k1 < j1) 
                {
                    int i2 = 0;
                    int j2 = l1;
                    int k2 = 0;
                    while(k2 < 4) 
                    {
                        int ai[] = b;
                        int j3 = j2 + 1;
                        int k3 = ai[s.charAt(j2)];
                        if(k3 >= 0)
                            i2 |= k3 << 18 - k2 * 6;
                        else
                            k2--;
                        k2++;
                        j2 = j3;
                    }
                    int l2 = k1 + 1;
                    abyte0[k1] = (byte)(i2 >> 16);
                    if(l2 < j1)
                    {
                        int i3 = l2 + 1;
                        abyte0[l2] = (byte)(i2 >> 8);
                        if(i3 < j1)
                        {
                            l2 = i3 + 1;
                            abyte0[i3] = (byte)i2;
                        } else
                        {
                            l2 = i3;
                        }
                    }
                    k1 = l2;
                    l1 = j2;
                }
                abyte1 = abyte0;
            }
        }
        return abyte1;
    }

    public static final byte[] decode(byte abyte0[])
    {
        int i = abyte0.length;
        int j = 0;
        int k = 0;
        for(; j < i; j++)
            if(b[0xff & abyte0[j]] < 0)
                k++;

        byte abyte2[];
        if((i - k) % 4 != 0)
        {
            abyte2 = null;
        } else
        {
            int l = i;
            int i1 = 0;
            do
            {
                if(l <= 1)
                    break;
                int ai1[] = b;
                l--;
                if(ai1[0xff & abyte0[l]] > 0)
                    break;
                if(abyte0[l] == 61)
                    i1++;
            } while(true);
            int j1 = (6 * (i - k) >> 3) - i1;
            byte abyte1[] = new byte[j1];
            int k1 = 0;
            int l1 = 0;
            while(k1 < j1) 
            {
                int i2 = 0;
                int j2 = l1;
                int k2 = 0;
                while(k2 < 4) 
                {
                    int ai[] = b;
                    int j3 = j2 + 1;
                    int k3 = ai[0xff & abyte0[j2]];
                    if(k3 >= 0)
                        i2 |= k3 << 18 - k2 * 6;
                    else
                        k2--;
                    k2++;
                    j2 = j3;
                }
                int l2 = k1 + 1;
                abyte1[k1] = (byte)(i2 >> 16);
                if(l2 < j1)
                {
                    int i3 = l2 + 1;
                    abyte1[l2] = (byte)(i2 >> 8);
                    if(i3 < j1)
                    {
                        l2 = i3 + 1;
                        abyte1[i3] = (byte)i2;
                    } else
                    {
                        l2 = i3;
                    }
                }
                k1 = l2;
                l1 = j2;
            }
            abyte2 = abyte1;
        }
        return abyte2;
    }

    public static final byte[] decode(char ac[])
    {
        int i;
        byte abyte1[];
        if(ac != null)
            i = ac.length;
        else
            i = 0;
        if(i == 0)
        {
            abyte1 = new byte[0];
        } else
        {
            int j = 0;
            int k = 0;
            for(; j < i; j++)
                if(b[ac[j]] < 0)
                    k++;

            if((i - k) % 4 != 0)
            {
                abyte1 = null;
            } else
            {
                int l = i;
                int i1 = 0;
                do
                {
                    if(l <= 1)
                        break;
                    int ai1[] = b;
                    l--;
                    if(ai1[ac[l]] > 0)
                        break;
                    if(ac[l] == '=')
                        i1++;
                } while(true);
                int j1 = (6 * (i - k) >> 3) - i1;
                byte abyte0[] = new byte[j1];
                int k1 = 0;
                int l1 = 0;
                while(k1 < j1) 
                {
                    int i2 = 0;
                    int j2 = l1;
                    int k2 = 0;
                    while(k2 < 4) 
                    {
                        int ai[] = b;
                        int j3 = j2 + 1;
                        int k3 = ai[ac[j2]];
                        if(k3 >= 0)
                            i2 |= k3 << 18 - k2 * 6;
                        else
                            k2--;
                        k2++;
                        j2 = j3;
                    }
                    int l2 = k1 + 1;
                    abyte0[k1] = (byte)(i2 >> 16);
                    if(l2 < j1)
                    {
                        int i3 = l2 + 1;
                        abyte0[l2] = (byte)(i2 >> 8);
                        if(i3 < j1)
                        {
                            l2 = i3 + 1;
                            abyte0[i3] = (byte)i2;
                        } else
                        {
                            l2 = i3;
                        }
                    }
                    k1 = l2;
                    l1 = j2;
                }
                abyte1 = abyte0;
            }
        }
        return abyte1;
    }

    public static final byte[] decodeFast(String s)
    {
        int i;
        int j;
        i = 0;
        j = s.length();
        if(j != 0) goto _L2; else goto _L1
_L1:
        byte abyte1[] = new byte[0];
_L4:
        return abyte1;
_L2:
        int k;
        int l;
        k = j - 1;
        for(l = 0; l < k && b[0xff & s.charAt(l)] < 0; l++);
        break;
        while(false) 
        {
            i1 = k;
            for(; i1 > 0 && b[0xff & s.charAt(i1)] < 0; i1--);
            if(s.charAt(i1) == '=')
            {
                if(s.charAt(i1 - 1) == '=')
                    byte0 = 2;
                else
                    byte0 = 1;
            } else
            {
                byte0 = 0;
            }
            j1 = 1 + (i1 - l);
            if(j > 76)
            {
                int i2;
                int j2;
                int ai1[];
                int k4;
                int l4;
                int ai2[];
                int i5;
                int j5;
                int ai3[];
                int k5;
                int l5;
                int ai4[];
                int i6;
                int j6;
                int k6;
                int l6;
                if(s.charAt(76) == '\r')
                    l6 = j1 / 78;
                else
                    l6 = 0;
                k1 = l6 << 1;
            } else
            {
                k1 = 0;
            }
            l1 = (6 * (j1 - k1) >> 3) - byte0;
            abyte0 = new byte[l1];
            i2 = 3 * (l1 / 3);
            j2 = 0;
            k2 = 0;
            do
            {
                if(k2 >= i2)
                    break;
                ai1 = b;
                k4 = l + 1;
                l4 = ai1[s.charAt(l)] << 18;
                ai2 = b;
                i5 = k4 + 1;
                j5 = l4 | ai2[s.charAt(k4)] << 12;
                ai3 = b;
                k5 = i5 + 1;
                l5 = j5 | ai3[s.charAt(i5)] << 6;
                ai4 = b;
                l = k5 + 1;
                i6 = l5 | ai4[s.charAt(k5)];
                j6 = k2 + 1;
                abyte0[k2] = (byte)(i6 >> 16);
                k6 = j6 + 1;
                abyte0[j6] = (byte)(i6 >> 8);
                k2 = k6 + 1;
                abyte0[k6] = (byte)i6;
                if(k1 > 0 && ++j2 == 19)
                {
                    l += 2;
                    j2 = 0;
                }
            } while(true);
            if(k2 < l1)
            {
                int l2 = l;
                int i3 = 0;
                int i4;
                for(; l2 <= i1 - byte0; l2 = i4)
                {
                    int ai[] = b;
                    i4 = l2 + 1;
                    int j4 = i3 | ai[s.charAt(l2)] << 18 - i * 6;
                    i++;
                    i3 = j4;
                }

                int j3 = 16;
                int l3;
                for(int k3 = k2; k3 < l1; k3 = l3)
                {
                    l3 = k3 + 1;
                    abyte0[k3] = (byte)(i3 >> j3);
                    j3 -= 8;
                }

            }
            abyte1 = abyte0;
        }
_L6:
        if(true) goto _L4; else goto _L3
_L3:
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static final byte[] decodeFast(byte abyte0[])
    {
        int i;
        int j;
        i = 0;
        j = abyte0.length;
        if(j != 0) goto _L2; else goto _L1
_L1:
        byte abyte2[] = new byte[0];
_L4:
        return abyte2;
_L2:
        int k;
        int l;
        k = j - 1;
        for(l = 0; l < k && b[0xff & abyte0[l]] < 0; l++);
        break;
        while(false) 
        {
            i1 = k;
            for(; i1 > 0 && b[0xff & abyte0[i1]] < 0; i1--);
            if(abyte0[i1] == 61)
            {
                if(abyte0[i1 - 1] == 61)
                    byte0 = 2;
                else
                    byte0 = 1;
            } else
            {
                byte0 = 0;
            }
            j1 = 1 + (i1 - l);
            if(j > 76)
            {
                int i2;
                int j2;
                int ai1[];
                int k4;
                int l4;
                int ai2[];
                int i5;
                int j5;
                int ai3[];
                int k5;
                int l5;
                int ai4[];
                int i6;
                int j6;
                int k6;
                int l6;
                if(abyte0[76] == 13)
                    l6 = j1 / 78;
                else
                    l6 = 0;
                k1 = l6 << 1;
            } else
            {
                k1 = 0;
            }
            l1 = (6 * (j1 - k1) >> 3) - byte0;
            abyte1 = new byte[l1];
            i2 = 3 * (l1 / 3);
            j2 = 0;
            k2 = 0;
            do
            {
                if(k2 >= i2)
                    break;
                ai1 = b;
                k4 = l + 1;
                l4 = ai1[abyte0[l]] << 18;
                ai2 = b;
                i5 = k4 + 1;
                j5 = l4 | ai2[abyte0[k4]] << 12;
                ai3 = b;
                k5 = i5 + 1;
                l5 = j5 | ai3[abyte0[i5]] << 6;
                ai4 = b;
                l = k5 + 1;
                i6 = l5 | ai4[abyte0[k5]];
                j6 = k2 + 1;
                abyte1[k2] = (byte)(i6 >> 16);
                k6 = j6 + 1;
                abyte1[j6] = (byte)(i6 >> 8);
                k2 = k6 + 1;
                abyte1[k6] = (byte)i6;
                if(k1 > 0 && ++j2 == 19)
                {
                    l += 2;
                    j2 = 0;
                }
            } while(true);
            if(k2 < l1)
            {
                int l2 = l;
                int i3 = 0;
                int i4;
                for(; l2 <= i1 - byte0; l2 = i4)
                {
                    int ai[] = b;
                    i4 = l2 + 1;
                    int j4 = i3 | ai[abyte0[l2]] << 18 - i * 6;
                    i++;
                    i3 = j4;
                }

                int j3 = 16;
                int l3;
                for(int k3 = k2; k3 < l1; k3 = l3)
                {
                    l3 = k3 + 1;
                    abyte1[k3] = (byte)(i3 >> j3);
                    j3 -= 8;
                }

            }
            abyte2 = abyte1;
        }
_L6:
        if(true) goto _L4; else goto _L3
_L3:
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static final byte[] decodeFast(char ac[])
    {
        int i;
        int j;
        i = 0;
        j = ac.length;
        if(j != 0) goto _L2; else goto _L1
_L1:
        byte abyte1[] = new byte[0];
_L4:
        return abyte1;
_L2:
        int k;
        int l;
        k = j - 1;
        for(l = 0; l < k && b[ac[l]] < 0; l++);
        break;
        while(false) 
        {
            i1 = k;
            for(; i1 > 0 && b[ac[i1]] < 0; i1--);
            if(ac[i1] == '=')
            {
                if(ac[i1 - 1] == '=')
                    byte0 = 2;
                else
                    byte0 = 1;
            } else
            {
                byte0 = 0;
            }
            j1 = 1 + (i1 - l);
            if(j > 76)
            {
                int i2;
                int j2;
                int ai1[];
                int k4;
                int l4;
                int ai2[];
                int i5;
                int j5;
                int ai3[];
                int k5;
                int l5;
                int ai4[];
                int i6;
                int j6;
                int k6;
                int l6;
                if(ac[76] == '\r')
                    l6 = j1 / 78;
                else
                    l6 = 0;
                k1 = l6 << 1;
            } else
            {
                k1 = 0;
            }
            l1 = (6 * (j1 - k1) >> 3) - byte0;
            abyte0 = new byte[l1];
            i2 = 3 * (l1 / 3);
            j2 = 0;
            k2 = 0;
            do
            {
                if(k2 >= i2)
                    break;
                ai1 = b;
                k4 = l + 1;
                l4 = ai1[ac[l]] << 18;
                ai2 = b;
                i5 = k4 + 1;
                j5 = l4 | ai2[ac[k4]] << 12;
                ai3 = b;
                k5 = i5 + 1;
                l5 = j5 | ai3[ac[i5]] << 6;
                ai4 = b;
                l = k5 + 1;
                i6 = l5 | ai4[ac[k5]];
                j6 = k2 + 1;
                abyte0[k2] = (byte)(i6 >> 16);
                k6 = j6 + 1;
                abyte0[j6] = (byte)(i6 >> 8);
                k2 = k6 + 1;
                abyte0[k6] = (byte)i6;
                if(k1 > 0 && ++j2 == 19)
                {
                    l += 2;
                    j2 = 0;
                }
            } while(true);
            if(k2 < l1)
            {
                int l2 = l;
                int i3 = 0;
                int i4;
                for(; l2 <= i1 - byte0; l2 = i4)
                {
                    int ai[] = b;
                    i4 = l2 + 1;
                    int j4 = i3 | ai[ac[l2]] << 18 - i * 6;
                    i++;
                    i3 = j4;
                }

                int j3 = 16;
                int l3;
                for(int k3 = k2; k3 < l1; k3 = l3)
                {
                    l3 = k3 + 1;
                    abyte0[k3] = (byte)(i3 >> j3);
                    j3 -= 8;
                }

            }
            abyte1 = abyte0;
        }
_L6:
        if(true) goto _L4; else goto _L3
_L3:
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static final byte[] encodeToByte(byte abyte0[], boolean flag)
    {
        int i = 0;
        int j;
        byte abyte2[];
        if(abyte0 != null)
            j = abyte0.length;
        else
            j = 0;
        if(j == 0)
        {
            abyte2 = new byte[0];
        } else
        {
            int k = 3 * (j / 3);
            int l = 1 + (j - 1) / 3 << 2;
            int i1;
            int j1;
            byte abyte1[];
            int k1;
            int l1;
            int i2;
            if(flag)
                i1 = (l - 1) / 76 << 1;
            else
                i1 = 0;
            j1 = l + i1;
            abyte1 = new byte[j1];
            k1 = 0;
            l1 = 0;
            i2 = 0;
            do
            {
                if(i2 >= k)
                    break;
                int j3 = i2 + 1;
                int k3 = (0xff & abyte0[i2]) << 16;
                int l3 = j3 + 1;
                int i4 = k3 | (0xff & abyte0[j3]) << 8;
                i2 = l3 + 1;
                int j4 = i4 | 0xff & abyte0[l3];
                int k4 = l1 + 1;
                abyte1[l1] = (byte)a[0x3f & j4 >>> 18];
                int l4 = k4 + 1;
                abyte1[k4] = (byte)a[0x3f & j4 >>> 12];
                int i5 = l4 + 1;
                abyte1[l4] = (byte)a[0x3f & j4 >>> 6];
                l1 = i5 + 1;
                abyte1[i5] = (byte)a[j4 & 0x3f];
                if(flag && ++k1 == 19 && l1 < j1 - 2)
                {
                    int j5 = l1 + 1;
                    abyte1[l1] = 13;
                    int k5 = j5 + 1;
                    abyte1[j5] = 10;
                    l1 = k5;
                    k1 = 0;
                }
            } while(true);
            int j2 = j - k;
            if(j2 > 0)
            {
                int k2 = (0xff & abyte0[k]) << 10;
                if(j2 == 2)
                    i = (0xff & abyte0[j - 1]) << 2;
                int l2 = i | k2;
                abyte1[j1 - 4] = (byte)a[l2 >> 12];
                abyte1[j1 - 3] = (byte)a[0x3f & l2 >>> 6];
                int i3 = j1 - 2;
                byte byte0;
                if(j2 == 2)
                    byte0 = (byte)a[l2 & 0x3f];
                else
                    byte0 = 61;
                abyte1[i3] = byte0;
                abyte1[j1 - 1] = 61;
            }
            abyte2 = abyte1;
        }
        return abyte2;
    }

    public static final char[] encodeToChar(byte abyte0[], boolean flag)
    {
        int i = 0;
        int j;
        char ac1[];
        if(abyte0 != null)
            j = abyte0.length;
        else
            j = 0;
        if(j == 0)
        {
            ac1 = new char[0];
        } else
        {
            int k = 3 * (j / 3);
            int l = 1 + (j - 1) / 3 << 2;
            int i1;
            int j1;
            char ac[];
            int k1;
            int l1;
            int i2;
            if(flag)
                i1 = (l - 1) / 76 << 1;
            else
                i1 = 0;
            j1 = l + i1;
            ac = new char[j1];
            k1 = 0;
            l1 = 0;
            i2 = 0;
            do
            {
                if(i2 >= k)
                    break;
                int j3 = i2 + 1;
                int k3 = (0xff & abyte0[i2]) << 16;
                int l3 = j3 + 1;
                int i4 = k3 | (0xff & abyte0[j3]) << 8;
                i2 = l3 + 1;
                int j4 = i4 | 0xff & abyte0[l3];
                int k4 = l1 + 1;
                ac[l1] = a[0x3f & j4 >>> 18];
                int l4 = k4 + 1;
                ac[k4] = a[0x3f & j4 >>> 12];
                int i5 = l4 + 1;
                ac[l4] = a[0x3f & j4 >>> 6];
                l1 = i5 + 1;
                ac[i5] = a[j4 & 0x3f];
                if(flag && ++k1 == 19 && l1 < j1 - 2)
                {
                    int j5 = l1 + 1;
                    ac[l1] = '\r';
                    int k5 = j5 + 1;
                    ac[j5] = '\n';
                    l1 = k5;
                    k1 = 0;
                }
            } while(true);
            int j2 = j - k;
            if(j2 > 0)
            {
                int k2 = (0xff & abyte0[k]) << 10;
                if(j2 == 2)
                    i = (0xff & abyte0[j - 1]) << 2;
                int l2 = i | k2;
                ac[j1 - 4] = a[l2 >> 12];
                ac[j1 - 3] = a[0x3f & l2 >>> 6];
                int i3 = j1 - 2;
                char c;
                if(j2 == 2)
                    c = a[l2 & 0x3f];
                else
                    c = '=';
                ac[i3] = c;
                ac[j1 - 1] = '=';
            }
            ac1 = ac;
        }
        return ac1;
    }

    public static final String encodeToString(byte abyte0[], boolean flag)
    {
        return new String(encodeToChar(abyte0, flag));
    }

    private static final char a[];
    private static final int b[];

    static 
    {
        a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        int ai[] = new int[256];
        b = ai;
        Arrays.fill(ai, -1);
        int i = a.length;
        for(int j = 0; j < i; j++)
            b[a[j]] = j;

        b[61] = 0;
    }
}
