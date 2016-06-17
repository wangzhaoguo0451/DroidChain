.class final Lfys;
.super Ljava/lang/Object;
.source "JupiterDownloadAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/launcher_base/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lfys;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 250
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Lfys;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-static {v1}, Lfyi;->e(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->APP:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)V

    .line 253
    return-void
.end method
