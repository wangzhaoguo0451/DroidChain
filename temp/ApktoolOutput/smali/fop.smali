.class public final Lfop;
.super Ljava/lang/Object;
.source "ConnectionServiceWrapper.java"

# interfaces
.implements Lhat;


# static fields
.field private static a:Lfop;


# instance fields
.field private b:Lcom/wandoujia/connection/IConnectionService;

.field private c:Landroid/content/ServiceConnection;

.field private d:Lcom/wandoujia/connection/IConnectionServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lfop;->a:Lfop;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lfoq;

    invoke-direct {v0, p0}, Lfoq;-><init>(Lfop;)V

    iput-object v0, p0, Lfop;->c:Landroid/content/ServiceConnection;

    .line 84
    new-instance v0, Lfor;

    invoke-direct {v0}, Lfor;-><init>()V

    iput-object v0, p0, Lfop;->d:Lcom/wandoujia/connection/IConnectionServiceCallback;

    .line 48
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Lhat;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lfop;Lcom/wandoujia/connection/IConnectionService;)Lcom/wandoujia/connection/IConnectionService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lfop;->b:Lcom/wandoujia/connection/IConnectionService;

    return-object p1
.end method

.method static synthetic a(Lfop;)Lcom/wandoujia/connection/IConnectionServiceCallback;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lfop;->d:Lcom/wandoujia/connection/IConnectionServiceCallback;

    return-object v0
.end method

.method public static a()Lfop;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lfop;->a:Lfop;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lfop;

    invoke-direct {v0}, Lfop;-><init>()V

    sput-object v0, Lfop;->a:Lfop;

    .line 55
    :cond_0
    sget-object v0, Lfop;->a:Lfop;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-static {p0}, Lfop;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    const-string v0, "com.wandoujia.phoenix2.usbproxy"

    const-string v1, "com.wandoujia.phoenix2.services.ConnectionService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 180
    const/16 v2, 0x1842

    const-string v1, "com.wandoujia.phoenix2.usbproxy"

    invoke-static {p0, v1, v0}, Lcom/wandoujia/base/utils/AppUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_0
    if-le v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lfop;)Lcom/wandoujia/connection/IConnectionService;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lfop;->b:Lcom/wandoujia/connection/IConnectionService;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 209
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 210
    const-string v2, "com.wandoujia.phoenix2.usbproxy"

    const-string v3, "com.wandoujia.phoenix2.services.ConnectionService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 214
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lhby;

    invoke-direct {v0}, Lhby;-><init>()V

    .line 135
    sget-object v1, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v1, v0, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    .line 136
    const-string v1, "http://dl.wandoujia.com/download-files/windows/conn_3.52.2.6210.apk"

    iput-object v1, v0, Lhby;->d:Ljava/lang/String;

    .line 137
    const-string v1, "com.wandoujia.phoenix2.usbproxy"

    iput-object v1, v0, Lhby;->j:Ljava/lang/String;

    .line 138
    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v1, v0, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 139
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0142

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhby;->h:Ljava/lang/String;

    .line 140
    const-string v1, "http://upload.cdn.wandoujia.com/phoenix/notification/wdj_icon_192_192.png"

    iput-object v1, v0, Lhby;->i:Ljava/lang/String;

    .line 141
    const-string v1, "com.wandoujia.phoenix2.usbproxy"

    iput-object v1, v0, Lhby;->g:Ljava/lang/String;

    .line 143
    invoke-virtual {v0}, Lhby;->a()Lhbx;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lfot;

    invoke-direct {v2, v0}, Lfot;-><init>(Lhbx;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e05a3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 153
    return-void
.end method

.method static synthetic d()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "phoenix.intent.extra.USER_AGENT"

    const-string v2, "phoenix"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phoenix.intent.extra.SOURCE"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lfop;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic e()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "phoenix.intent.extra.USER_AGENT"

    const-string v2, "phoenix"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phoenix.intent.extra.SOURCE"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lfop;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic f()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_reverse_proxy_off"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic g()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "phoenix.intent.extra.USER_AGENT"

    const-string v2, "phoenix"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "phoenix.intent.extra.SOURCE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lfop;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lfos;

    invoke-direct {v0, p2, p1}, Lfos;-><init>(Ljava/util/List;Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 4

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    const-string v1, "com.wandoujia.phoenix2.usbproxy"

    const-string v2, "com.wandoujia.phoenix2.services.ConnectionService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lfop;->c:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method
