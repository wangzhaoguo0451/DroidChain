// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import com.google.ads.AdSize;
import com.google.ads.util.AdUtil;
import com.google.ads.util.a;

public final class g extends WebView
{

    public g(Context context, AdSize adsize)
    {
        super(context);
        b = adsize;
        setBackgroundColor(0);
        AdUtil.a(this);
        getSettings().setJavaScriptEnabled(true);
        setScrollBarStyle(0);
    }

    public final void a()
    {
        if(a != null)
            a.finish();
    }

    public final void a(AdActivity adactivity)
    {
        a = adactivity;
    }

    public final AdActivity b()
    {
        return a;
    }

    protected final void onMeasure(int i, int j)
    {
        if(isInEditMode())
            super.onMeasure(i, j);
        else
        if(b == null)
        {
            super.onMeasure(i, j);
        } else
        {
            int k = android.view.View.MeasureSpec.getMode(i);
            int l = android.view.View.MeasureSpec.getSize(i);
            int i1 = android.view.View.MeasureSpec.getMode(j);
            int j1 = android.view.View.MeasureSpec.getSize(j);
            float f = getContext().getResources().getDisplayMetrics().density;
            int k1 = (int)(f * (float)b.getWidth());
            int l1 = (int)(f * (float)b.getHeight());
            if(k == 0 || i1 == 0)
                super.onMeasure(i, j);
            else
            if((float)k1 - 6F * f > (float)l || l1 > j1)
            {
                com.google.ads.util.a.e((new StringBuilder()).append("Not enough space to show ad! Wants: <").append(k1).append(", ").append(l1).append(">, Has: <").append(l).append(", ").append(j1).append(">").toString());
                setVisibility(8);
                setMeasuredDimension(0, 0);
            } else
            {
                super.onMeasure(i, j);
            }
        }
    }

    private AdActivity a;
    private AdSize b;
}
