// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

import android.webkit.WebView;
import android.widget.VideoView;
import com.google.ads.AdActivity;
import com.google.ads.util.a;
import java.util.HashMap;

public final class v
    implements i
{

    public v()
    {
    }

    public final void a(d d1, HashMap hashmap, WebView webview)
    {
        String s = (String)hashmap.get("action");
        if(!(webview instanceof g)) goto _L2; else goto _L1
_L1:
        AdActivity adactivity = ((g)webview).b();
        if(adactivity != null) goto _L4; else goto _L3
_L3:
        com.google.ads.util.a.a("Could not get adActivity to create the video.");
_L6:
        return;
_L2:
        com.google.ads.util.a.a("Could not get adWebView to create the video.");
        continue; /* Loop/switch isn't completed */
_L4:
        if(s.equals("load"))
        {
            String s2 = (String)hashmap.get("url");
            android.app.Activity activity = d1.e();
            if(activity == null)
            {
                com.google.ads.util.a.e("activity was null while loading a video.");
            } else
            {
                VideoView videoview1 = new VideoView(activity);
                videoview1.setVideoPath(s2);
                adactivity.showVideo(videoview1);
            }
        } else
        {
            VideoView videoview = adactivity.getVideoView();
            if(videoview == null)
                com.google.ads.util.a.e("Could not get the VideoView for a video GMSG.");
            else
            if(s.equals("play"))
            {
                videoview.setVisibility(0);
                videoview.start();
                com.google.ads.util.a.d("Video is now playing.");
                webview.loadUrl("javascript:AFMA_ReceiveMessage('onVideoEvent', {'event': 'playing'});");
            } else
            if(s.equals("pause"))
                videoview.pause();
            else
            if(s.equals("stop"))
                videoview.stopPlayback();
            else
            if(s.equals("remove"))
                videoview.setVisibility(8);
            else
            if(s.equals("replay"))
            {
                videoview.setVisibility(0);
                videoview.seekTo(0);
                videoview.start();
            } else
            if(s.equals("currentTime"))
            {
                String s1 = (String)hashmap.get("time");
                if(s1 == null)
                    com.google.ads.util.a.e("No \"time\" parameter!");
                else
                    videoview.seekTo((int)(1000F * Float.valueOf(s1).floatValue()));
            } else
            if(!s.equals("position"))
                com.google.ads.util.a.e((new StringBuilder()).append("Unknown movie action: ").append(s).toString());
        }
        if(true) goto _L6; else goto _L5
_L5:
    }
}
