.class final Lfyp;
.super Ljava/lang/Object;
.source "JupiterDownloadAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lfyv;

.field private synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Lfyv;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lfyp;->a:Ljava/lang/String;

    iput-object p2, p0, Lfyp;->b:Lfyv;

    iput-object p3, p0, Lfyp;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Lfyp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lfyp;->b:Lfyv;

    iput-object v0, v1, Lfyv;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 182
    iget-object v1, p0, Lfyp;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v0, p0, Lfyp;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 184
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
