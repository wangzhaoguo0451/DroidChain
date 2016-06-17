.class public Lcom/wandoujia/base/utils/AppKillBlacklistUtil;
.super Ljava/lang/Object;
.source "AppKillBlacklistUtil.java"


# static fields
.field private static final appKillWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    sput-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.wandoujia.phoenix2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.phone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.providers.settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.providers.applications"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.providers.contacts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.providers.userdictionary"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.providers.telephony"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.providers.drm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.providers.downloads"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.providers.media"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 33
    const-string v1, "HTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.htccontacts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.htcdialer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.htc.messagecs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.htc.idlescreen.shortcut"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.providers.htcCheckin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    :goto_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 69
    const-string v1, "HTC Sensation Z710e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HTC Sensation G14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HTC Z710e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 72
    :cond_1
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "android.process.acore"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_2
    :goto_1
    return-void

    .line 39
    :cond_3
    const-string v1, "ZTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 40
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "zte.com.cn.alarmclock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.utk"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_4
    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 43
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.huawei.widget.localcityweatherclock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_5
    const-string v1, "Sony Ericsson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.sonyericsson.provider.useragent"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.sonyericsson.provider.customization"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.sonyericsson.secureclockservice"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.sonyericsson.widget.digitalclock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.sonyericsson.digitalclockwidget"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_6
    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 51
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.samsung.inputmethod"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.sec.android.app.controlpanel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.sonyericsson.provider.customization"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 54
    :cond_7
    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 55
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.motorola.numberlocation"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.motorola.android.fota"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.motorola.atcmd"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.motorola.locationsensor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.motorola.blur.conversations"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.motorola.blur.alarmclock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.motorola.blur.providers.contacts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 62
    :cond_8
    const-string v1, "LGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 63
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.lge.clock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 64
    :cond_9
    const-string v1, "magnum2x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "ty.com.android.TYProfileSetting"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 73
    :cond_a
    const-string v1, "LT18i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 74
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.sonyericsson.provider.customization"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.sonyericsson.provider.useragent"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 76
    :cond_b
    const-string v1, "U8500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "U8500 HiQQ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 77
    :cond_c
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "android.process.launcherdb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.motorola.process.system"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.nd.assistance.ServerService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 80
    :cond_d
    const-string v1, "MT15I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 81
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.sonyericsson.eventstream.calllogplugin"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 82
    :cond_e
    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "GT-I9100G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 83
    :cond_f
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.samsung.inputmethod"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.sec.android.app.controlpanel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.sec.android.app.FileTransferManager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.sec.android.providers.downloads"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.providers.downloads.ui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 88
    :cond_10
    const-string v1, "DROIDX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 89
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.motorola.blur.contacts.data"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.motorola.blur.contacts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 91
    :cond_11
    const-string v1, "DROID2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "DROID2 GLOBA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 92
    :cond_12
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.motorola.blur.contacts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 93
    :cond_13
    const-string v1, "U8800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 94
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.huawei.android.gpms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.hwdrm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.huawei.omadownload"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 97
    :cond_14
    const-string v1, "LG-P503"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 98
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.lge.simcontacts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 99
    :cond_15
    const-string v1, "XT702"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 100
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.motorola.usb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.alarmclock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 102
    :cond_16
    const-string v1, "e15i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 103
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.sec.ccl.csp.app.secretwallpaper.themetwo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 104
    :cond_17
    const-string v1, "zte-c n600"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 105
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.wallpaper"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.musicvis"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.magicsmoke"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 108
    :cond_18
    const-string v1, "GT-5830"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "HTC Velocity 4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    :cond_19
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    const-string v1, "com.android.providers.downloads.ui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppInWhiteList(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    sget-object v0, Lcom/wandoujia/base/utils/AppKillBlacklistUtil;->appKillWhiteList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
