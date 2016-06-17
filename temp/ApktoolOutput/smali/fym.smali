.class final Lfym;
.super Ljava/lang/Object;
.source "JupiterDownloadAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfyw;

.field private synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lfyw;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lfym;->a:Lfyw;

    iput-object p2, p0, Lfym;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 318
    invoke-static {}, Lhbm;->a()Lhbn;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    const/4 v2, 0x0

    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_APP:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_MEDIA:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_NETWORK:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PAUSED_BY_OTHERS:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->PENDING:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lhbn;->a([Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;)Lhbn;

    move-result-object v0

    invoke-virtual {v0}, Lhbn;->a()Lhbn;

    move-result-object v0

    invoke-virtual {v0}, Lhbn;->b()Lhbm;

    move-result-object v1

    .line 328
    iget-object v2, p0, Lfym;->a:Lfyw;

    sget-object v0, Lham;->f:Lham;

    const-string v3, "download"

    invoke-virtual {v0, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbm;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lfyw;->a:Ljava/util/List;

    .line 331
    iget-object v1, p0, Lfym;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-object v0, p0, Lfym;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 333
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
