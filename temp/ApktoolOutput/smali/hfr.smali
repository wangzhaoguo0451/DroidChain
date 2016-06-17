.class public final Lhfr;
.super Ljava/lang/Object;
.source "InstallManager.java"


# instance fields
.field a:Lhga;

.field public b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

.field public c:Landroid/os/Handler;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lhrx;

.field private f:Lhfx;

.field private final g:Lcuv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhrx;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhfr;->d:Ljava/util/Set;

    .line 43
    new-instance v0, Lcuv;

    invoke-direct {v0, p0}, Lcuv;-><init>(Lhfr;)V

    iput-object v0, p0, Lhfr;->g:Lcuv;

    .line 81
    new-instance v0, Lhgy;

    invoke-direct {v0}, Lhgy;-><init>()V

    iput-object v0, p0, Lhfr;->a:Lhga;

    .line 85
    invoke-static {}, Lhpa;->a()Lhpa;

    invoke-static {}, Lhpa;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lhhe;

    iget-object v1, p0, Lhfr;->a:Lhga;

    invoke-direct {v0, v1}, Lhhe;-><init>(Lhga;)V

    iput-object v0, p0, Lhfr;->a:Lhga;

    .line 89
    :cond_0
    new-instance v0, Lcom/wandoujia/gamepacket/GamePacketInstaller;

    invoke-direct {v0, p1}, Lcom/wandoujia/gamepacket/GamePacketInstaller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhfr;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    .line 90
    iget-object v0, p0, Lhfr;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->b:Z

    .line 91
    iget-object v0, p0, Lhfr;->b:Lcom/wandoujia/gamepacket/GamePacketInstaller;

    iget-object v1, p0, Lhfr;->g:Lcuv;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not run on UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v0, Lcom/wandoujia/gamepacket/GamePacketInstaller;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v0, Lhfx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhfx;-><init>(Lhfr;B)V

    iput-object v0, p0, Lhfr;->f:Lhfx;

    .line 93
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "installer_background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lhfr;->c:Landroid/os/Handler;

    .line 96
    iput-object p2, p0, Lhfr;->e:Lhrx;

    .line 98
    return-void
.end method

.method static synthetic a(Lhfr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static {p1}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ld;->aj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhfr;->d:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lhfr;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lhfr;->a:Lhga;

    iget-object v2, p0, Lhfr;->f:Lhfx;

    invoke-virtual {v0, p1, p2, v2}, Lhga;->a(Ljava/lang/String;Ljava/lang/String;Lhgb;)V

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 147
    new-instance v1, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;

    sget-object v0, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;->INSTALL_START:Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;

    invoke-direct {v1, p0, v0}, Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo$EventType;)V

    .line 149
    sget-object v0, Lham;->f:Lham;

    const-string v2, "app_task"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    invoke-virtual {v0, p0, v1}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;)V

    .line 152
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lhfr;->d:Ljava/util/Set;

    monitor-enter v1

    .line 102
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lhfr;->d:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lhfr;->c:Landroid/os/Handler;

    new-instance v1, Lhft;

    invoke-direct {v1, p0, p1, p2}, Lhft;-><init>(Lhfr;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-static {p2}, Lhfr;->a(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lhfr;->c:Landroid/os/Handler;

    new-instance v1, Lhfu;

    invoke-direct {v1, p0, p1, p2}, Lhfu;-><init>(Lhfr;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method
