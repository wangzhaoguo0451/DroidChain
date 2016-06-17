.class final Lfyr;
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
    .line 227
    iput-object p1, p0, Lfyr;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Lfyr;->a:Lcom/wandoujia/launcher_base/download/DownloadInfo;

    invoke-static {v1}, Lfyi;->e(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 233
    return-void
.end method
