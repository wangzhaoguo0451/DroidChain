.class public final Ldkt;
.super Lgsq;
.source "WebDownloaderVideo.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lgsq;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lcom/wandoujia/p4/webdownload/WebDownloadType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/wandoujia/p4/webdownload/WebDownloadType;->VIDEO:Lcom/wandoujia/p4/webdownload/WebDownloadType;

    return-object v0
.end method

.method protected final b()Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;

    iget-object v1, p0, Ldkt;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;-><init>(Landroid/content/Context;Lgsq;)V

    return-object v0
.end method
