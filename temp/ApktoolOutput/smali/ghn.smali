.class public final Lghn;
.super Landroid/os/AsyncTask;
.source "VideoDownloadAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Lgho;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

.field private synthetic f:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;JJLgho;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lghn;->f:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 398
    iput-wide p2, p0, Lghn;->a:J

    .line 399
    iput-wide p4, p0, Lghn;->b:J

    .line 400
    iput-object p6, p0, Lghn;->c:Lgho;

    .line 401
    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 406
    new-instance v0, Lcql;

    iget-wide v4, p0, Lghn;->a:J

    iget-wide v6, p0, Lghn;->b:J

    invoke-direct {v0, v4, v5, v6, v7}, Lcql;-><init>(JJ)V

    .line 409
    :try_start_0
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lghn;->d:Ljava/util/List;

    .line 410
    invoke-static {}, Lgkr;->a()Lgkr;

    move-result-object v0

    iget-wide v4, p0, Lghn;->a:J

    invoke-virtual {v0, v4, v5}, Lgkr;->a(J)Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    move-result-object v0

    iput-object v0, p0, Lghn;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 412
    cmp-long v2, v0, v8

    if-gez v2, :cond_0

    .line 413
    sub-long v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 415
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 419
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 417
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 388
    invoke-direct {p0}, Lghn;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    .line 388
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lghn;->c:Lgho;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lghn;->c:Lgho;

    invoke-interface {v0}, Lgho;->a()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lghn;->f:Lcom/wandoujia/p4/video2/download/VideoDownloadAction;

    iget-object v1, p0, Lghn;->d:Ljava/util/List;

    iget-object v2, p0, Lghn;->e:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/p4/video2/download/VideoDownloadAction;->a(Lcom/wandoujia/p4/video2/download/VideoDownloadAction;Ljava/util/List;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V

    :cond_1
    return-void
.end method
