.class public final Lgrb;
.super Ljava/lang/Object;
.source "WebDownloadService.java"

# interfaces
.implements Lcom/wandoujia/p4/webdownload/aidl/IWebDownloadListenerInterface;


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/webdownload/WebDownloadService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/webdownload/WebDownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
    .locals 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    monitor-exit v1

    .line 70
    :goto_0
    return-void

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->b(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lgrc;

    invoke-direct {v1, p0, p1}, Lgrc;-><init>(Lgrb;Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    monitor-exit v1

    .line 94
    :goto_0
    return-void

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->b(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lgrd;

    invoke-direct {v1, p0, p1, p2}, Lgrd;-><init>(Lgrb;Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    monitor-exit v1

    .line 168
    :goto_0
    return-void

    .line 152
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->b(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lgrg;

    invoke-direct {v1, p0, p1, p2, p3}, Lgrg;-><init>(Lgrb;Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    monitor-exit v1

    .line 119
    :goto_0
    return-void

    .line 103
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->b(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lgre;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgre;-><init>(Lgrb;Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V
    .locals 2
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->a(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    monitor-exit v1

    .line 143
    :goto_0
    return-void

    .line 127
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lgrb;->a:Lcom/wandoujia/p4/webdownload/WebDownloadService;

    invoke-static {v0}, Lcom/wandoujia/p4/webdownload/WebDownloadService;->b(Lcom/wandoujia/p4/webdownload/WebDownloadService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lgrf;

    invoke-direct {v1, p0, p1}, Lgrf;-><init>(Lgrb;Lcom/wandoujia/p4/webdownload/aidl/WebDownloadPage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
