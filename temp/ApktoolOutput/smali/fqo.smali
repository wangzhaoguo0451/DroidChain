.class public final Lfqo;
.super Ljava/lang/Object;
.source "PauseDownloadAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;


# direct methods
.method public constructor <init>(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lfqo;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 19
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .prologue
    .line 23
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Lfqo;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    sget-object v2, Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;->NETWORK:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)V

    .line 26
    return-void
.end method
