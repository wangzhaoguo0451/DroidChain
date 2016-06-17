.class public Lcom/wandoujia/base/infos/FeatureInfos;
.super Ljava/lang/Object;
.source "FeatureInfos.java"


# static fields
.field private static final FEATURE_AUDIO_LOW_LATENCY:J = 0x800000000L

.field private static final FEATURE_BLUETOOTH:J = 0x400000000L

.field private static final FEATURE_CAMERA:J = 0x200000000L

.field private static final FEATURE_CAMERA_ANY:J = 0x1000000000L

.field private static final FEATURE_CAMERA_AUTOFOCUS:J = 0x100000000L

.field private static final FEATURE_CAMERA_FLASH:J = 0x80000000L

.field private static final FEATURE_CAMERA_FRONT:J = 0x40000000L

.field private static final FEATURE_FAKETOUCH:J = 0x20000000L

.field private static final FEATURE_FAKETOUCH_MULTITOUCH_DISTINCT:J = 0x10000000L

.field private static final FEATURE_FAKETOUCH_MULTITOUCH_JAZZHAND:J = 0x8000000L

.field private static final FEATURE_LIVE_WALLPAPER:J = 0x4000000L

.field private static final FEATURE_LOCATION:J = 0x2000000L

.field private static final FEATURE_LOCATION_GPS:J = 0x1000000L

.field private static final FEATURE_LOCATION_NETWORK:J = 0x800000L

.field private static final FEATURE_MICROPHONE:J = 0x400000L

.field private static final FEATURE_NFC:J = 0x200000L

.field private static final FEATURE_SCREEN_LANDSCAPE:J = 0x100000L

.field private static final FEATURE_SCREEN_PORTRAIT:J = 0x80000L

.field private static final FEATURE_SENSOR_ACCELEROMETER:J = 0x40000L

.field private static final FEATURE_SENSOR_BAROMETER:J = 0x20000L

.field private static final FEATURE_SENSOR_COMPASS:J = 0x10000L

.field private static final FEATURE_SENSOR_GYROSCOPE:J = 0x8000L

.field private static final FEATURE_SENSOR_LIGHT:J = 0x4000L

.field private static final FEATURE_SENSOR_PROXIMITY:J = 0x2000L

.field private static final FEATURE_SIP:J = 0x1000L

.field private static final FEATURE_SIP_VOIP:J = 0x800L

.field private static final FEATURE_TELEPHONY:J = 0x400L

.field private static final FEATURE_TELEPHONY_CDMA:J = 0x200L

.field private static final FEATURE_TELEPHONY_GSM:J = 0x100L

.field private static final FEATURE_TELEVISION:J = 0x2000000000L

.field private static final FEATURE_TOUCHSCREEN:J = 0x80L

.field private static final FEATURE_TOUCHSCREEN_MULTITOUCH:J = 0x40L

.field private static final FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT:J = 0x20L

.field private static final FEATURE_TOUCHSCREEN_MULTITOUCH_JAZZHAND:J = 0x10L

.field private static final FEATURE_USB_ACCESSORY:J = 0x8L

.field private static final FEATURE_USB_HOST:J = 0x4L

.field private static final FEATURE_WIFI:J = 0x2L

.field private static final FEATURE_WIFI_DIRECT:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genFeatureInfos([Landroid/content/pm/FeatureInfo;)J
    .locals 8
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 50
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    return-wide v2

    .line 53
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 54
    const-string v0, "android.hardware.type.television"

    const-wide v6, 0x2000000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "android.hardware.camera.any"

    const-wide v6, 0x1000000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "android.hardware.audio.low_latency"

    const-wide v6, 0x800000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "android.hardware.bluetooth"

    const-wide v6, 0x400000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "android.hardware.camera"

    const-wide v6, 0x200000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "android.hardware.camera.autofocus"

    const-wide v6, 0x100000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "android.hardware.camera.flash"

    const-wide v6, 0x80000000L

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "android.hardware.camera.front"

    const-wide/32 v6, 0x40000000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "android.hardware.faketouch"

    const-wide/32 v6, 0x20000000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "android.hardware.faketouch.multitouch.distinct"

    const-wide/32 v6, 0x10000000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "android.hardware.faketouch.multitouch.jazzhand"

    const-wide/32 v6, 0x8000000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "android.software.live_wallpaper"

    const-wide/32 v6, 0x4000000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "android.hardware.location"

    const-wide/32 v6, 0x2000000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "android.hardware.location.gps"

    const-wide/32 v6, 0x1000000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "android.hardware.location.network"

    const-wide/32 v6, 0x800000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "android.hardware.microphone"

    const-wide/32 v6, 0x400000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "android.hardware.nfc"

    const-wide/32 v6, 0x200000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "android.hardware.screen.landscape"

    const-wide/32 v6, 0x100000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "android.hardware.screen.portrait"

    const-wide/32 v6, 0x80000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "android.hardware.sensor.accelerometer"

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "android.hardware.sensor.barometer"

    const-wide/32 v6, 0x20000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "android.hardware.sensor.compass"

    const-wide/32 v6, 0x10000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "android.hardware.sensor.gyroscope"

    const-wide/32 v6, 0x8000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "android.hardware.sensor.light"

    const-wide/16 v6, 0x4000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "android.hardware.sensor.proximity"

    const-wide/16 v6, 0x2000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "android.software.sip"

    const-wide/16 v6, 0x1000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "android.software.sip.voip"

    const-wide/16 v6, 0x800

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "android.hardware.telephony"

    const-wide/16 v6, 0x400

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "android.hardware.telephony.cdma"

    const-wide/16 v6, 0x200

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "android.hardware.telephony.gsm"

    const-wide/16 v6, 0x100

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "android.hardware.touchscreen"

    const-wide/16 v6, 0x80

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "android.hardware.touchscreen.multitouch"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "android.hardware.touchscreen.multitouch.distinct"

    const-wide/16 v6, 0x20

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "android.hardware.touchscreen.multitouch.jazzhand"

    const-wide/16 v6, 0x10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "android.hardware.usb.accessory"

    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "android.hardware.usb.host"

    const-wide/16 v6, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "android.hardware.wifi"

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "android.hardware.wifi.direct"

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    array-length v6, p0

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    .line 98
    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    iget-object v0, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    or-long/2addr v0, v2

    .line 97
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method
