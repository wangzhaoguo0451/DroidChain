.class public final Lcta;
.super Ljava/lang/Object;
.source "WandoujiaDownload.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcsw;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Landroid/os/Handler;

.field private g:Lcsx;

.field private h:Lepb;

.field private i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcta;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcta;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcsx;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcta;->f:Landroid/os/Handler;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcta;->a:Ljava/util/List;

    .line 195
    new-instance v0, Lctc;

    invoke-direct {v0, p0}, Lctc;-><init>(Lcta;)V

    iput-object v0, p0, Lcta;->i:Ljava/lang/Runnable;

    .line 41
    iput-object p2, p0, Lcta;->e:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcta;->g:Lcsx;

    .line 43
    iput-object p4, p0, Lcta;->c:Ljava/lang/String;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcta;->d:I

    .line 45
    invoke-direct {p0, p1}, Lcta;->a(Landroid/content/Context;)V

    .line 46
    sget-object v0, Lcta;->b:Ljava/lang/String;

    const-string v1, "init wandoujia download name = %s maxRunningTasks = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcta;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcsx;Ljava/lang/String;B)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x5

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcta;->f:Landroid/os/Handler;

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcta;->a:Ljava/util/List;

    .line 195
    new-instance v0, Lctc;

    invoke-direct {v0, p0}, Lctc;-><init>(Lcta;)V

    iput-object v0, p0, Lcta;->i:Ljava/lang/Runnable;

    .line 55
    iput-object p2, p0, Lcta;->e:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcta;->g:Lcsx;

    .line 57
    iput-object p4, p0, Lcta;->c:Ljava/lang/String;

    .line 58
    iput v4, p0, Lcta;->d:I

    .line 59
    invoke-direct {p0, p1}, Lcta;->a(Landroid/content/Context;)V

    .line 60
    sget-object v0, Lcta;->b:Ljava/lang/String;

    const-string v1, "init wandoujia download name = %s maxRunningTasks = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcta;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcta;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcta;->a:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    new-instance v0, Lepb;

    new-instance v1, Lctb;

    invoke-direct {v1, p0}, Lctb;-><init>(Lcta;)V

    invoke-direct {v0, p1, v1}, Lepb;-><init>(Landroid/content/Context;Lepi;)V

    iput-object v0, p0, Lcta;->h:Lepb;

    .line 123
    return-void
.end method

.method private a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcsw;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-object v2, p3, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    .line 307
    new-instance v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    .line 308
    new-instance v4, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    invoke-direct {v4}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;-><init>()V

    .line 309
    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v3, v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    .line 312
    iget-object v0, p0, Lcta;->c:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->client_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    move-result-object v5

    iget-object v0, v2, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    sget-object v6, Lcte;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/download2/DownloadInfo2$State;->ordinal()I

    move-result v0

    aget v0, v6, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->status(Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    move-result-object v0

    iget-object v5, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v5, v5, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->url(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    move-result-object v0

    iget-object v5, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v5, v5, Lcom/wandoujia/download2/DownloadRequestParam;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    sget-object v6, Lcte;->b:[I

    invoke-virtual {v5}, Lcom/wandoujia/download2/DownloadRequestParam$Type;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_1

    :goto_1
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    move-result-object v0

    iget-object v1, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->cookies(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    move-result-object v0

    iget-object v1, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->refer(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    move-result-object v0

    iget-object v1, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->file_path(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    move-result-object v0

    iget-object v1, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->f:Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->verify_type(Lcom/wandoujia/logv3/model/packages/DownloadPackage$VerifyType;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    move-result-object v0

    iget-object v1, v2, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadRequestParam;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->verify_digest(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    .line 321
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 322
    sget-object v0, Lcte;->a:[I

    iget-object v5, v2, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    invoke-virtual {v5}, Lcom/wandoujia/download2/DownloadInfo2$State;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_2

    .line 341
    :goto_2
    new-instance v0, Lctd;

    invoke-direct {v0, v2, v1, v4, v3}, Lctd;-><init>(Lcom/wandoujia/download2/DownloadInfo2;Ljava/util/List;Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;)V

    .line 373
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/wandoujia/base/utils/AsyncTaskUtils;->runAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 374
    return-void

    .line 312
    :pswitch_1
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->PENDING:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->RUNNING:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->CANCELED:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->SUCCEED:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;->FAILED:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Status;

    goto :goto_0

    :pswitch_6
    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->APP:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    goto :goto_1

    :pswitch_7
    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->COMMON:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    goto :goto_1

    :pswitch_8
    sget-object v1, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;->PLAY_EXP:Lcom/wandoujia/logv3/model/packages/DownloadPackage$Type;

    goto :goto_1

    .line 324
    :pswitch_9
    iget-object v0, v2, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "need exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    iget-object v0, v2, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/wandoujia/net/HttpException;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, v2, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;

    check-cast v0, Lcom/wandoujia/net/HttpException;

    .line 328
    invoke-virtual {v0}, Lcom/wandoujia/net/HttpException;->getType()Lcom/wandoujia/net/HttpException$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/net/HttpException$Type;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->error_code(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    .line 329
    invoke-virtual {v0}, Lcom/wandoujia/net/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->error_detail(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    .line 337
    :goto_3
    :pswitch_a
    iget-wide v6, v2, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->total_size(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    move-result-object v0

    invoke-virtual {p3}, Lcsw;->k()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->download_size(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    move-result-object v0

    invoke-virtual {p3}, Lcsw;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->duration(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    .line 340
    invoke-virtual {p3}, Lcsw;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 331
    :cond_1
    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;->error_code(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/DownloadPackage$Builder;

    .line 332
    iget-object v0, v2, Lcom/wandoujia/download2/DownloadInfo2;->g:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->error_detail(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    goto :goto_3

    .line 312
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 322
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private a(Lcsw;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 243
    iget-object v0, p1, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    invoke-virtual {v0}, Lcom/wandoujia/download2/DownloadInfo2;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcta;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsw;

    .line 245
    iget-object v1, v0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    sget-object v5, Lcom/wandoujia/download2/DownloadInfo2$State;->PENDING:Lcom/wandoujia/download2/DownloadInfo2$State;

    if-ne v1, v5, :cond_2

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v0}, Lcsw;->e()V

    .line 251
    :cond_1
    iget-object v0, p0, Lcta;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcta;->b:Ljava/lang/String;

    const-string v1, "task completed tasks.size = %d"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcta;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    return-void

    :cond_2
    move v1, v3

    .line 245
    goto :goto_0
.end method

.method static synthetic a(Lcta;Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcsw;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcta;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcsw;)V

    return-void
.end method

.method static synthetic a(Lcta;Lcsw;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcta;->a(Lcsw;)V

    return-void
.end method

.method static synthetic b(Lcta;)Lcsx;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcta;->g:Lcsx;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lcta;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcta;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    return-void
.end method

.method private static c()V
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "MUST call in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    return-void
.end method

.method static synthetic c(Lcta;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcta;->b()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/download2/DownloadRequestParam;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-static {}, Lcta;->c()V

    .line 130
    sget-object v0, Lcta;->b:Ljava/lang/String;

    const-string v2, "add task url = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/wandoujia/download2/DownloadRequestParam;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v2, p0, Lcta;->e:Ljava/lang/String;

    iget-object v3, p0, Lcta;->h:Lepb;

    sget-object v0, Lcte;->b:[I

    iget-object v4, p1, Lcom/wandoujia/download2/DownloadRequestParam;->a:Lcom/wandoujia/download2/DownloadRequestParam$Type;

    invoke-virtual {v4}, Lcom/wandoujia/download2/DownloadRequestParam$Type;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 132
    :goto_0
    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "download type not support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :pswitch_0
    new-instance v0, Lcsu;

    invoke-direct {v0, p1, v2, v3}, Lcsu;-><init>(Lcom/wandoujia/download2/DownloadRequestParam;Ljava/lang/String;Lepb;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/wandoujia/download2/AppDownloadTask2;

    invoke-direct {v0, p1, v2, v3}, Lcom/wandoujia/download2/AppDownloadTask2;-><init>(Lcom/wandoujia/download2/DownloadRequestParam;Ljava/lang/String;Lepb;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/wandoujia/download2/PlayExpDownloadTask2;

    invoke-direct {v0, p1, v2, v3}, Lcom/wandoujia/download2/PlayExpDownloadTask2;-><init>(Lcom/wandoujia/download2/DownloadRequestParam;Ljava/lang/String;Lepb;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v2, p0, Lcta;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcta;->d:I

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcta;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 137
    :cond_1
    invoke-virtual {v0}, Lcsw;->e()V

    .line 139
    :cond_2
    iget-object v2, p0, Lcta;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    invoke-direct {p0}, Lcta;->b()V

    .line 142
    :cond_3
    iget-object v2, p0, Lcta;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->START:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-direct {p0, v2, v1, v0}, Lcta;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcsw;)V

    .line 144
    return-void

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    invoke-static {}, Lcta;->c()V

    .line 148
    sget-object v0, Lcta;->b:Ljava/lang/String;

    const-string v1, "remove task url = %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcta;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcsw;

    .line 150
    invoke-virtual {v0}, Lcsw;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->CANCEL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-direct {p0, v1, v2, v0}, Lcta;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;Lcsw;)V

    .line 152
    iget-object v1, v0, Lcsw;->c:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v1, v1, Lcom/wandoujia/download2/DownloadInfo2;->b:Lcom/wandoujia/download2/DownloadInfo2$State;

    sget-object v2, Lcom/wandoujia/download2/DownloadInfo2$State;->RUNNING:Lcom/wandoujia/download2/DownloadInfo2$State;

    if-ne v1, v2, :cond_1

    .line 153
    invoke-virtual {v0}, Lcsw;->f()V

    .line 155
    :cond_1
    invoke-direct {p0, v0}, Lcta;->a(Lcsw;)V

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_2
    sget-object v0, Lcta;->b:Ljava/lang/String;

    const-string v1, "no task to remove url = %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 167
    invoke-static {}, Lcta;->c()V

    .line 168
    sget-object v0, Lcta;->b:Ljava/lang/String;

    const-string v1, "delete cache "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcta;->h:Lepb;

    invoke-virtual {v0, p1}, Lepb;->a(Ljava/lang/String;)V

    .line 170
    return-void
.end method
