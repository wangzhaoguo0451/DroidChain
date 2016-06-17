.class final Lehj;
.super Lcom/wandoujia/appmanager/LocalAppChangedListener;
.source "GamePacketInstaller.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/wandoujia/appmanager/LocalAppChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 59
    new-instance v0, Leho;

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Leho;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 60
    invoke-static {}, Lcom/wandoujia/launcher_base/utils/ZipManager;->a()Lcom/wandoujia/launcher_base/utils/ZipManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/wandoujia/launcher_base/utils/ZipManager;->e:[B

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/wandoujia/launcher_base/utils/ZipManager;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/wandoujia/launcher_base/utils/ZipManager;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/wandoujia/launcher_base/utils/ZipManager;->c:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/wandoujia/launcher_base/utils/ZipManager;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v0, Lehn;

    invoke-direct {v0, p1}, Lehn;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method
