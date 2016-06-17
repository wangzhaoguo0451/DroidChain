.class public Lcom/wandoujia/clean/monitor/ScreenMonitor;
.super Landroid/content/BroadcastReceiver;
.source "ScreenMonitor.java"


# instance fields
.field private a:Lcom/wandoujia/clean/http/GarbageFetcher;

.field private b:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/clean/monitor/ScreenMonitor;)Lcom/wandoujia/clean/http/GarbageFetcher;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wandoujia/clean/monitor/ScreenMonitor;->a:Lcom/wandoujia/clean/http/GarbageFetcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wandoujia/clean/http/GarbageFetcher;

    invoke-direct {v0}, Lcom/wandoujia/clean/http/GarbageFetcher;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/clean/monitor/ScreenMonitor;->a:Lcom/wandoujia/clean/http/GarbageFetcher;

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/clean/monitor/ScreenMonitor;->a:Lcom/wandoujia/clean/http/GarbageFetcher;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 40
    const-string v0, "off"

    const-string v1, "xibaibai_clean_switcher"

    invoke-static {v1}, Lcom/wandoujia/clean/http/Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Lcom/wandoujia/clean/http/Config;->e()J

    move-result-wide v0

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 52
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/wandoujia/clean/http/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_fp_connection_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v4, 0x240c8400

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/wandoujia/clean/http/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_fp_connection_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcsk;

    invoke-direct {v1}, Lcsk;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    :cond_2
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/wandoujia/clean/monitor/ScreenMonitor;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/wandoujia/clean/monitor/ScreenMonitor;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/clean/monitor/ScreenMonitor;->b:Ljava/util/Timer;

    goto :goto_0

    .line 61
    :cond_3
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/wandoujia/clean/monitor/ScreenMonitor;->b:Ljava/util/Timer;

    if-nez v0, :cond_4

    .line 63
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/clean/monitor/ScreenMonitor;->b:Ljava/util/Timer;

    .line 66
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/clean/monitor/ScreenMonitor;->b:Ljava/util/Timer;

    new-instance v1, Lcsj;

    invoke-direct {v1, p0}, Lcsj;-><init>(Lcom/wandoujia/clean/monitor/ScreenMonitor;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0
.end method
