// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.GoldDream.TingTing08ii;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.LinearLayout;
import com.google.ads.*;

public class readme extends Activity
{

    public readme()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030001);
        LinearLayout linearlayout = (LinearLayout)findViewById(0x7f060002);
        AdView adview = new AdView(this, AdSize.BANNER, "a14e0c4f5aadec4");
        linearlayout.addView(adview);
        AdRequest adrequest = new AdRequest();
        adrequest.setTesting(false);
        adview.loadAd(adrequest);
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        menu.add(0, 2, 0, 0x7f050007);
        menu.add(0, 3, 0, 0x7f050008);
        return super.onCreateOptionsMenu(menu);
    }

    public boolean onMenuItemSelected(int i, MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 2 3: default 28
    //                   2 37
    //                   3 60;
           goto _L1 _L2 _L3
_L1:
        boolean flag = super.onMenuItemSelected(i, menuitem);
_L5:
        return flag;
_L2:
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://lebar.gicp.net/more.aspx?pid=9962&cid=1000")));
        flag = true;
        continue; /* Loop/switch isn't completed */
_L3:
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://lebar.gicp.net/update_soft.aspx?pid=9962&cid=1000")));
        flag = true;
        if(true) goto _L5; else goto _L4
_L4:
    }

    private static final int MENU_ID_more = 2;
    private static final int MENU_ID_update = 3;
    private static final String MY_AD_UNIT_ID = "a14e0c4f5aadec4";
}
