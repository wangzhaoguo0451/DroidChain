// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.weixin.wxjx.encoding;

import android.graphics.Bitmap;
import com.google.zxing.*;
import com.google.zxing.common.BitMatrix;
import java.util.Hashtable;

public final class EncodingHandler
{

    public EncodingHandler()
    {
    }

    public static Bitmap createQRCode(String s, int i)
        throws WriterException
    {
        BitMatrix bitmatrix;
        int j;
        int k;
        int ai[];
        int l;
        (new Hashtable()).put(EncodeHintType.CHARACTER_SET, "utf-8");
        bitmatrix = (new MultiFormatWriter()).encode(s, BarcodeFormat.QR_CODE, i, i);
        j = bitmatrix.getWidth();
        k = bitmatrix.getHeight();
        ai = new int[j * k];
        l = 0;
_L2:
        if(l >= k)
        {
            Bitmap bitmap = Bitmap.createBitmap(j, k, android.graphics.Bitmap.Config.ARGB_8888);
            bitmap.setPixels(ai, 0, j, 0, 0, j, k);
            return bitmap;
        }
        int i1 = 0;
        do
        {
label0:
            {
                if(i1 < j)
                    break label0;
                l++;
            }
            if(true)
                continue;
            if(bitmatrix.get(i1, l))
                ai[i1 + l * j] = 0xff000000;
            i1++;
        } while(true);
        if(true) goto _L2; else goto _L1
_L1:
    }

    private static final int BLACK = 0xff000000;
}
