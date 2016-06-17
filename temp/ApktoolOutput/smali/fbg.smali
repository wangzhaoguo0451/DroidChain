.class final Lfbg;
.super Ljava/lang/Object;
.source "CampaignPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lfbg;->a:Ljava/lang/String;

    iput-object p2, p0, Lfbg;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 688
    new-instance v1, Lhby;

    invoke-direct {v1}, Lhby;-><init>()V

    .line 690
    iget-object v0, p0, Lfbg;->a:Ljava/lang/String;

    iput-object v0, v1, Lhby;->h:Ljava/lang/String;

    iget-object v0, p0, Lfbg;->b:Ljava/lang/String;

    iput-object v0, v1, Lhby;->d:Ljava/lang/String;

    sget-object v0, Lcom/wandoujia/download2/DownloadRequestParam$Type;->COMMON:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v0, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iget-object v0, p0, Lfbg;->b:Ljava/lang/String;

    iput-object v0, v1, Lhby;->g:Ljava/lang/String;

    .line 695
    sget-object v0, Lham;->f:Lham;

    const-string v2, "download"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v1}, Lhby;->a()Lhbx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->a(Lhbx;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 697
    return-void
.end method
