.class public final Lfyi;
.super Ljava/lang/Object;
.source "JupiterDownloadAdapter.java"

# interfaces
.implements Leen;
.implements Lhfq;


# instance fields
.field final a:Lgdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgdw",
            "<",
            "Leeq;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgdw",
            "<",
            "Lega;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private e:Lhbr;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lfyi;->d:Ljava/util/concurrent/ExecutorService;

    .line 45
    new-instance v0, Lgdw;

    invoke-direct {v0}, Lgdw;-><init>()V

    iput-object v0, p0, Lfyi;->a:Lgdw;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfyi;->b:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfyi;->c:Ljava/util/Set;

    .line 50
    new-instance v0, Lfyj;

    invoke-direct {v0, p0}, Lfyj;-><init>(Lfyi;)V

    iput-object v0, p0, Lfyi;->e:Lhbr;

    .line 130
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    iget-object v1, p0, Lfyi;->e:Lhbr;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;->g:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method static a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/launcher_base/download/DownloadInfo;
    .locals 1
    .parameter

    .prologue
    .line 356
    if-eqz p0, :cond_0

    .line 357
    new-instance v0, Lfyx;

    invoke-direct {v0, p0}, Lfyx;-><init>(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 359
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/wandoujia/launcher_base/download/DownloadRequest;)Lhbx;
    .locals 4
    .parameter

    .prologue
    .line 397
    new-instance v1, Lhby;

    invoke-direct {v1}, Lhby;-><init>()V

    .line 399
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->d:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->DPK:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->d:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->GPK:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    if-ne v0, v2, :cond_2

    .line 401
    :cond_0
    sget-object v0, Lcom/wandoujia/download2/DownloadRequestParam$Type;->GAME_PACKET:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v0, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    .line 402
    const-string v0, "game_packet"

    iput-object v0, v1, Lhby;->n:Ljava/lang/String;

    .line 403
    const-string v0, "extra.packet.dst.path"

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/download/DownloadRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "extra.packet.src.path"

    invoke-virtual {p0, v2}, Lcom/wandoujia/launcher_base/download/DownloadRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ld;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->o:Ljava/lang/String;

    .line 409
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->j:Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;->PF5:Lcom/wandoujia/launcher_base/download/DownloadRequest$VerifyType;

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->PF5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    :goto_1
    iput-object v0, v1, Lhby;->b:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    .line 412
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->k:Ljava/lang/String;

    iput-object v0, v1, Lhby;->c:Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->a:Ljava/lang/String;

    iput-object v0, v1, Lhby;->d:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->c:Ljava/lang/String;

    iput-object v0, v1, Lhby;->j:Ljava/lang/String;

    .line 416
    :try_start_0
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lcom/wandoujia/launcher_base/download/DownloadRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lhby;->k:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_2
    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, v1, Lhby;->l:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    .line 422
    iget-wide v2, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->f:J

    iput-wide v2, v1, Lhby;->p:J

    .line 423
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->b:Ljava/lang/String;

    iput-object v0, v1, Lhby;->h:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->g:Ljava/lang/String;

    iput-object v0, v1, Lhby;->i:Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->c:Ljava/lang/String;

    iput-object v0, v1, Lhby;->g:Ljava/lang/String;

    .line 426
    iget v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->l:I

    iput v0, v1, Lhby;->k:I

    .line 427
    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->i:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lhby;->e:Ljava/lang/String;

    .line 430
    :cond_1
    iget-boolean v0, p0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->e:Z

    iput-boolean v0, v1, Lhby;->q:Z

    .line 431
    invoke-virtual {v1}, Lhby;->a()Lhbx;

    move-result-object v0

    return-object v0

    .line 407
    :cond_2
    sget-object v0, Lcom/wandoujia/download2/DownloadRequestParam$Type;->APP:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v0, v1, Lhby;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    goto :goto_0

    .line 409
    :cond_3
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->MD5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static synthetic e(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;
    .locals 4
    .parameter

    .prologue
    .line 43
    new-instance v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-direct {v1}, Lcom/wandoujia/ripple_framework/download/DownloadInfo;-><init>()V

    new-instance v0, Lcom/wandoujia/download2/DownloadInfo2;

    new-instance v2, Lcom/wandoujia/download2/DownloadRequestParam;

    invoke-direct {v2}, Lcom/wandoujia/download2/DownloadRequestParam;-><init>()V

    sget-object v3, Lcom/wandoujia/download2/DownloadRequestParam$Type;->COMMON:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    iput-object v3, v2, Lcom/wandoujia/download2/DownloadRequestParam;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;->MD5:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    iput-object v3, v2, Lcom/wandoujia/download2/DownloadRequestParam;->f:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->k()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/wandoujia/download2/DownloadRequestParam;->g:Ljava/lang/String;

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->l()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/wandoujia/download2/DownloadInfo2;-><init>(Lcom/wandoujia/download2/DownloadRequestParam;)V

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->e()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    invoke-virtual {v1, v0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a(Lcom/wandoujia/download2/DownloadInfo2;)V

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->m()Z

    move-result v0

    iput-boolean v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->h:Z

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->l()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->b:Ljava/lang/String;

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->a:Ljava/lang/String;

    sget-object v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->CREATED:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    iput-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->f:Ljava/lang/String;

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->g:Ljava/lang/String;

    sget-object v0, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    iput-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->i:J

    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->m:I

    return-object v1

    :cond_0
    invoke-interface {p0}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher_base/download/DownloadRequest;)Lcom/wandoujia/launcher_base/download/DownloadInfo;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 136
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-object v0

    .line 139
    :cond_1
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {p1}, Lfyi;->c(Lcom/wandoujia/launcher_base/download/DownloadRequest;)Lhbx;

    move-result-object v2

    .line 142
    new-instance v3, Lfyv;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lfyv;-><init>(B)V

    .line 143
    monitor-enter v1

    .line 144
    :try_start_0
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lfyo;

    invoke-direct {v5, v2, v3, v1}, Lfyo;-><init>(Lhbx;Lfyv;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    iget-object v1, v3, Lfyv;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    if-eqz v1, :cond_0

    .line 164
    iget-object v0, v3, Lfyv;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-static {v0}, Lfyi;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Lcom/wandoujia/launcher_base/download/DownloadInfo;
    .locals 4
    .parameter

    .prologue
    .line 172
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Lfyv;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lfyv;-><init>(B)V

    .line 174
    monitor-enter v1

    .line 175
    :try_start_0
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lfyp;

    invoke-direct {v3, p1, v0, v1}, Lfyp;-><init>(Ljava/lang/String;Lfyv;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    iget-object v1, v0, Lfyv;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    if-eqz v1, :cond_0

    .line 194
    iget-object v0, v0, Lfyv;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-static {v0}, Lfyi;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    .line 196
    :goto_1
    return-object v0

    .line 190
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/launcher_base/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Lfyw;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lfyw;-><init>(B)V

    .line 314
    monitor-enter v1

    .line 315
    :try_start_0
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lfym;

    invoke-direct {v3, v0, v1}, Lfym;-><init>(Lfyw;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 339
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    iget-object v2, v0, Lfyw;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 344
    iget-object v0, v0, Lfyw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 345
    invoke-static {v0}, Lfyi;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)Lcom/wandoujia/launcher_base/download/DownloadInfo;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 339
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 351
    :cond_1
    return-object v1
.end method

.method public final a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 224
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lfyr;

    invoke-direct {v1, p1}, Lfyr;-><init>(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Leeo;)V
    .locals 4
    .parameter

    .prologue
    .line 202
    iget-object v0, p1, Leeo;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p1, Leeo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_base/download/DownloadRequest;

    .line 204
    iget-object v2, v0, Lcom/wandoujia/launcher_base/download/DownloadRequest;->d:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    sget-object v3, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->APP:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    if-ne v2, v3, :cond_0

    .line 205
    invoke-virtual {p0, v0}, Lfyi;->b(Lcom/wandoujia/launcher_base/download/DownloadRequest;)V

    .line 210
    :cond_1
    return-void
.end method

.method public final a(Leeq;)V
    .locals 1
    .parameter

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lfyi;->a:Lgdw;

    invoke-virtual {v0, p1}, Lgdw;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lega;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 285
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lfyu;

    invoke-direct {v1, p0, p1, p2}, Lfyu;-><init>(Lfyi;Ljava/lang/String;Lega;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method

.method public final b(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lfyi;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    .line 240
    return-void
.end method

.method public final b(Lcom/wandoujia/launcher_base/download/DownloadRequest;)V
    .locals 2
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lfyi;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lfyq;

    invoke-direct {v1, p0, p1}, Lfyq;-><init>(Lfyi;Lcom/wandoujia/launcher_base/download/DownloadRequest;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method public final c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lfys;

    invoke-direct {v1, p1}, Lfys;-><init>(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final d(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lfyt;

    invoke-direct {v1, p1}, Lfyt;-><init>(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onEvent(Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lfyn;

    invoke-direct {v1, p0, p1}, Lfyn;-><init>(Lfyi;Lcom/wandoujia/ripple_framework/installer/install/InstallTaskInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method
