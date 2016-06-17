.class final enum Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$2;
.super Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;
.source "VideoPlayAppDownloadButton.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;-><init>(Ljava/lang/String;IILgea;)V

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-static {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-static {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 64
    :cond_0
    return-void
.end method
