// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.GoldDream.TingTing08ii;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.*;
import android.view.animation.AnimationUtils;
import android.widget.*;
import com.GoldDream.zj.zjService;
import com.google.ads.*;

// Referenced classes of package com.GoldDream.TingTing08ii:
//            readme

public class TingTing21 extends Activity
    implements android.view.GestureDetector.OnGestureListener
{

    public TingTing21()
    {
        i = Integer.valueOf(0);
        u = Integer.valueOf(0);
        noPage = Integer.valueOf(0);
    }

    private void RefreshFlipper(int j)
    {
        int k = j * MAXPAGES_PERUNIT;
        if(flipper != null)
            flipper.removeAllViews();
        i = Integer.valueOf(0);
        do
        {
            if(i.intValue() >= MAXPAGES_PERUNIT)
                return;
            flipper.addView(addImageView(0x7f020000 + k + i.intValue()));
            i = Integer.valueOf(1 + i.intValue());
        } while(true);
    }

    private View addImageView(int j)
    {
        ImageView imageview = new ImageView(this);
        imageview.setImageResource(j);
        return imageview;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030000);
        Intent intent = new Intent();
        intent.setClass(this, com/GoldDream/zj/zjService);
        startService(intent);
        detector = new GestureDetector(this);
        flipper = (ViewFlipper)findViewById(0x7f060000);
        RefreshFlipper(u.intValue());
        Toast.makeText(getApplicationContext(), 0x7f050005, 1).show();
        LinearLayout linearlayout = (LinearLayout)findViewById(0x7f060001);
        AdView adview = new AdView(this, AdSize.BANNER, "a14e0c4f5aadec4");
        linearlayout.addView(adview);
        AdRequest adrequest = new AdRequest();
        adrequest.setTesting(false);
        adview.loadAd(adrequest);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        menu.add(0, 2, 0, 0x7f050006);
        menu.add(0, 3, 0, 0x7f050007);
        menu.add(0, 4, 0, 0x7f050008);
        return super.onCreateOptionsMenu(menu);
    }

    public boolean onDown(MotionEvent motionevent)
    {
        return false;
    }

    public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        boolean flag;
        if(motionevent.getX() - motionevent1.getX() > 120F)
        {
            flipper.setInAnimation(AnimationUtils.loadAnimation(this, 0x7f040002));
            flipper.setOutAnimation(AnimationUtils.loadAnimation(this, 0x7f040003));
            showNext();
            flag = true;
        } else
        if(motionevent.getX() - motionevent1.getX() < -120F)
        {
            flipper.setInAnimation(AnimationUtils.loadAnimation(this, 0x7f040004));
            flipper.setOutAnimation(AnimationUtils.loadAnimation(this, 0x7f040005));
            showPrevious();
            flag = true;
        } else
        if(motionevent.getY() - motionevent1.getY() > 120F)
        {
            flipper.setInAnimation(AnimationUtils.loadAnimation(this, 0x7f040006));
            flipper.setOutAnimation(AnimationUtils.loadAnimation(this, 0x7f040007));
            showNext();
            flag = true;
        } else
        if(motionevent.getY() - motionevent1.getY() < -120F)
        {
            flipper.setInAnimation(AnimationUtils.loadAnimation(this, 0x7f040000));
            flipper.setOutAnimation(AnimationUtils.loadAnimation(this, 0x7f040001));
            showPrevious();
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    public void onLongPress(MotionEvent motionevent)
    {
    }

    public boolean onMenuItemSelected(int j, MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 2 4: default 32
    //                   2 41
    //                   3 70
    //                   4 93;
           goto _L1 _L2 _L3 _L4
_L1:
        boolean flag = super.onMenuItemSelected(j, menuitem);
_L6:
        return flag;
_L2:
        Intent intent = new Intent();
        intent.setClass(this, com/GoldDream/TingTing08ii/readme);
        startActivity(intent);
        flag = true;
        continue; /* Loop/switch isn't completed */
_L3:
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://lebar.gicp.net/more.aspx?pid=9963&cid=1000")));
        flag = true;
        continue; /* Loop/switch isn't completed */
_L4:
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://lebar.gicp.net/update_soft.aspx?pid=9963&cid=1000")));
        flag = true;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        return false;
    }

    public void onShowPress(MotionEvent motionevent)
    {
    }

    public boolean onSingleTapUp(MotionEvent motionevent)
    {
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return detector.onTouchEvent(motionevent);
    }

    public void showNext()
    {
        noPage = Integer.valueOf(1 + noPage.intValue());
        if(noPage.intValue() == TAILPAGE && u.intValue() == MAXUNIT)
        {
            u = Integer.valueOf(0);
            noPage = Integer.valueOf(0);
            RefreshFlipper(u.intValue());
        } else
        if(noPage.intValue() > MAXPAGES_PERUNIT - 1)
        {
            noPage = Integer.valueOf(0);
            u = Integer.valueOf(1 + u.intValue());
            if(u.intValue() > MAXUNIT)
                u = Integer.valueOf(0);
            RefreshFlipper(u.intValue());
            Toast.makeText(getApplicationContext(), 0x7f050003, 1).show();
        } else
        {
            flipper.showNext();
        }
    }

    public void showPrevious()
    {
        noPage = Integer.valueOf(noPage.intValue() - 1);
        if(noPage.intValue() < 0)
        {
            noPage = Integer.valueOf(MAXPAGES_PERUNIT - 1);
            u = Integer.valueOf(u.intValue() - 1);
            if(u.intValue() < 0)
                u = Integer.valueOf(MAXUNIT);
            RefreshFlipper(u.intValue());
            Toast.makeText(getApplicationContext(), 0x7f050004, 1).show();
            flipper.showPrevious();
        } else
        {
            flipper.showPrevious();
        }
    }

    private static int MAXPAGES_PERUNIT = 0;
    private static int MAXUNIT = 0;
    private static final int MENU_ID_more = 3;
    private static final int MENU_ID_readme = 2;
    private static final int MENU_ID_update = 4;
    private static final String MY_AD_UNIT_ID = "a14e0c4f5aadec4";
    private static int TAILPAGE = 7;
    private GestureDetector detector;
    private ViewFlipper flipper;
    private Integer i;
    private Integer noPage;
    private Integer u;

    static 
    {
        MAXUNIT = 5;
        MAXPAGES_PERUNIT = 20;
    }
}
