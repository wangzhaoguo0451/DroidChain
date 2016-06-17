.class public final Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# instance fields
.field public final a:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

.field public final b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

.field public final c:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;


# direct methods
.method private constructor <init>(Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;

    .line 627
    iput-object p2, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 628
    iput-object p3, p0, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;->c:Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;

    .line 629
    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 611
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation;-><init>(Lcom/wandoujia/ripple_framework/download/DownloadManager$DownloadOperation$OpType;Lcom/wandoujia/ripple_framework/download/DownloadInfo;Lcom/wandoujia/ripple_framework/download/DownloadManager$PauseReason;)V

    return-void
.end method
