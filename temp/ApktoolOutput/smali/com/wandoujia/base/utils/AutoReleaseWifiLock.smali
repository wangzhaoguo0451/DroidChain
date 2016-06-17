.class public Lcom/wandoujia/base/utils/AutoReleaseWifiLock;
.super Ljava/lang/Object;
.source "AutoReleaseWifiLock.java"


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0x927c0L

.field private static final WAKE_LOCK_TAG:Ljava/lang/String; = "lock.power"

.field private static final WIFI_LOCK_TAG:Ljava/lang/String; = "lock.wifi"


# instance fields
.field private context:Landroid/content/Context;

.field private timeout:J

.field private timeoutTask:Ljava/util/TimerTask;

.field private timer:Ljava/util/Timer;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    const-wide/32 v0, 0x927c0

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;-><init>(J)V

    .line 32
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->context:Landroid/content/Context;

    .line 36
    iput-wide p1, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->timeout:J

    .line 37
    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 58
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 60
    const-string v1, "lock.power"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 61
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 66
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method private acquireWifiLock()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->context:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 72
    const/4 v1, 0x3

    const-string v2, "lock.wifi"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 74
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 79
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    goto :goto_0
.end method

.method private isLocked()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 115
    iput-object v1, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iput-object v1, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method private releaseWifiLock()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 106
    iput-object v1, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    iput-object v1, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    goto :goto_0
.end method

.method private scheduleTimeout()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->timer:Ljava/util/Timer;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->timeoutTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->timeoutTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 88
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 90
    :cond_1
    new-instance v0, Lcre;

    invoke-direct {v0, p0}, Lcre;-><init>(Lcom/wandoujia/base/utils/AutoReleaseWifiLock;)V

    iput-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->timeoutTask:Ljava/util/TimerTask;

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->timeoutTask:Ljava/util/TimerTask;

    iget-wide v2, p0, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->timeout:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->release()V

    .line 46
    invoke-direct {p0}, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->acquireWakeLock()V

    .line 47
    invoke-direct {p0}, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->acquireWifiLock()V

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->scheduleTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->releaseWifiLock()V

    .line 54
    invoke-direct {p0}, Lcom/wandoujia/base/utils/AutoReleaseWifiLock;->releaseWakeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
