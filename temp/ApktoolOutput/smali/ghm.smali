.class public final Lghm;
.super Landroid/os/AsyncTask;
.source "VideoDownloadAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:Lgho;

.field private synthetic c:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;JLgho;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lghm;->c:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 442
    iput-wide p2, p0, Lghm;->a:J

    .line 443
    iput-object p4, p0, Lghm;->b:Lgho;

    .line 444
    return-void
.end method

.method private varargs a()Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 449
    new-instance v0, Ldyk;

    iget-wide v4, p0, Lghm;->a:J

    invoke-direct {v0, v4, v5}, Ldyk;-><init>(J)V

    .line 452
    :try_start_0
    new-instance v1, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;

    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v4

    invoke-virtual {v4, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v4

    iget-wide v6, p0, Lghm;->a:J

    invoke-virtual {v4, v6, v7}, Lgkr;->a(J)Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;-><init>(Ljava/util/List;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 456
    cmp-long v0, v2, v8

    if-gez v0, :cond_0

    .line 457
    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v0, v1

    .line 463
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 461
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 436
    invoke-direct {p0}, Lghm;->a()Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 436
    check-cast p1, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;

    iget-object v0, p0, Lghm;->b:Lgho;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lghm;->b:Lgho;

    invoke-interface {v0}, Lgho;->a()V

    :cond_0
    iget-object v0, p0, Lghm;->c:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    invoke-static {v0, p1}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->b(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;)V

    return-void
.end method
