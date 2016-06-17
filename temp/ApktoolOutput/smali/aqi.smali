.class public final Laqi;
.super Ljava/lang/Object;
.source "ProducerSequenceFactory.java"


# instance fields
.field private final a:Laqh;

.field private final b:Laub;

.field private final c:Z

.field private final d:Z

.field private e:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<",
            "Laqx;",
            ">;"
        }
    .end annotation
.end field

.field private g:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Laud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;",
            "Laud",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Laqh;Laub;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Laqi;->a:Laqh;

    .line 78
    iput-object p2, p0, Laqi;->b:Laub;

    .line 79
    iput-boolean p3, p0, Laqi;->c:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Laqi;->d:Z

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laqi;->m:Ljava/util/Map;

    .line 83
    return-void
.end method

.method private declared-synchronized a()Laud;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqi;->e:Laud;

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Laqi;->b()Laud;

    move-result-object v0

    invoke-direct {p0, v0}, Laqi;->c(Laud;)Laud;

    move-result-object v0

    iput-object v0, p0, Laqi;->e:Laud;

    .line 194
    :cond_0
    iget-object v0, p0, Laqi;->e:Laud;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Laud;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laud",
            "<",
            "Laqx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqi;->f:Laud;

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Laqi;->a:Laqh;

    iget-object v1, p0, Laqi;->b:Laub;

    new-instance v2, Laua;

    iget-object v3, v0, Laqh;->j:Larv;

    iget-object v0, v0, Laqh;->d:Larp;

    invoke-direct {v2, v3, v0, v1}, Laua;-><init>(Larv;Larp;Laub;)V

    invoke-direct {p0, v2}, Laqi;->d(Laud;)Laud;

    move-result-object v0

    .line 233
    invoke-static {v0}, Laqh;->a(Laud;)Lasb;

    move-result-object v0

    iput-object v0, p0, Laqi;->f:Laud;

    .line 236
    iget-boolean v0, p0, Laqi;->c:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Laqi;->a:Laqh;

    iget-object v1, p0, Laqi;->f:Laud;

    invoke-virtual {v0, v1}, Laqh;->b(Laud;)Lauh;

    move-result-object v0

    iput-object v0, p0, Laqi;->f:Laud;

    .line 242
    :cond_0
    iget-object v0, p0, Laqi;->f:Laud;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Laud;)Laud;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laud",
            "<",
            "Laqx;",
            ">;)",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 362
    invoke-direct {p0, p1}, Laqi;->d(Laud;)Laud;

    move-result-object v0

    .line 363
    invoke-static {v0}, Laqh;->a(Laud;)Lasb;

    move-result-object v0

    iget-object v1, p0, Laqi;->a:Laqh;

    invoke-virtual {v1, v0}, Laqh;->b(Laud;)Lauh;

    move-result-object v0

    iget-object v1, p0, Laqi;->a:Laqh;

    new-instance v2, Laus;

    iget-object v1, v1, Laqh;->i:Lapv;

    iget-object v1, v1, Lapv;->d:Ljava/util/concurrent/Executor;

    invoke-direct {v2, v1, v0}, Laus;-><init>(Ljava/util/concurrent/Executor;Laud;)V

    iget-object v0, p0, Laqi;->a:Laqh;

    new-instance v1, Latk;

    iget-object v3, v0, Laqh;->i:Lapv;

    iget-object v3, v3, Lapv;->a:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Laqh;->j:Larv;

    invoke-direct {v1, v3, v0}, Latk;-><init>(Ljava/util/concurrent/Executor;Larv;)V

    iget-object v0, p0, Laqi;->a:Laqh;

    invoke-virtual {v0, v1}, Laqh;->b(Laud;)Lauh;

    move-result-object v0

    new-instance v1, Lasi;

    invoke-direct {v1, v0, v2}, Lasi;-><init>(Laud;Laud;)V

    .line 364
    invoke-direct {p0, v1}, Laqi;->c(Laud;)Laud;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized c()Laud;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqi;->g:Laud;

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Laqi;->a:Laqh;

    new-instance v1, Latq;

    iget-object v2, v0, Laqh;->i:Lapv;

    iget-object v2, v2, Lapv;->a:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Laqh;->j:Larv;

    invoke-direct {v1, v2, v0}, Latq;-><init>(Ljava/util/concurrent/Executor;Larv;)V

    .line 258
    invoke-direct {p0, v1}, Laqi;->b(Laud;)Laud;

    move-result-object v0

    iput-object v0, p0, Laqi;->g:Laud;

    .line 261
    :cond_0
    iget-object v0, p0, Laqi;->g:Laud;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Laud;)Laud;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laud",
            "<",
            "Laqx;",
            ">;)",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v6, p0, Laqi;->a:Laqh;

    new-instance v0, Lasm;

    iget-object v1, v6, Laqh;->d:Larp;

    iget-object v2, v6, Laqh;->i:Lapv;

    iget-object v2, v2, Lapv;->b:Ljava/util/concurrent/Executor;

    iget-object v3, v6, Laqh;->e:Laqo;

    iget-object v4, v6, Laqh;->f:Laqq;

    const/4 v5, 0x0

    iget-boolean v6, v6, Laqh;->h:Z

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lasm;-><init>(Larp;Ljava/util/concurrent/Executor;Laqo;Laqq;ZZLaud;)V

    .line 375
    invoke-direct {p0, v0}, Laqi;->e(Laud;)Laud;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized d()Laud;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqi;->h:Laud;

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Laqi;->a:Laqh;

    new-instance v1, Lats;

    iget-object v0, v0, Laqh;->i:Lapv;

    iget-object v0, v0, Lapv;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v0}, Lats;-><init>(Ljava/util/concurrent/Executor;)V

    .line 273
    invoke-direct {p0, v1}, Laqi;->e(Laud;)Laud;

    move-result-object v0

    iput-object v0, p0, Laqi;->h:Laud;

    .line 276
    :cond_0
    iget-object v0, p0, Laqi;->h:Laud;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(Laud;)Laud;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laud",
            "<",
            "Laqx;",
            ">;)",
            "Laud",
            "<",
            "Laqx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Laqi;->a:Laqh;

    invoke-virtual {v0, p1}, Laqh;->c(Laud;)Lauv;

    move-result-object p1

    .line 388
    :cond_0
    iget-object v0, p0, Laqi;->a:Laqh;

    new-instance v1, Last;

    iget-object v2, v0, Laqh;->k:Laox;

    iget-object v3, v0, Laqh;->l:Laox;

    iget-object v0, v0, Laqh;->o:Lapa;

    invoke-direct {v1, v2, v3, v0, p1}, Last;-><init>(Laox;Laox;Lapa;Laud;)V

    .line 389
    iget-object v0, p0, Laqi;->a:Laqh;

    new-instance v2, Lasy;

    iget-object v3, v0, Laqh;->m:Lapm;

    iget-object v0, v0, Laqh;->o:Lapa;

    invoke-direct {v2, v3, v0, v1}, Lasy;-><init>(Lapm;Lapa;Laud;)V

    .line 391
    iget-object v0, p0, Laqi;->a:Laqh;

    new-instance v1, Lasx;

    iget-object v0, v0, Laqh;->o:Lapa;

    invoke-direct {v1, v0, v2}, Lasx;-><init>(Lapa;Laud;)V

    return-object v1
.end method

.method private declared-synchronized e()Laud;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqi;->i:Laud;

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Laqi;->a:Laqh;

    new-instance v1, Latj;

    iget-object v2, v0, Laqh;->i:Lapv;

    iget-object v2, v2, Lapv;->a:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Laqh;->j:Larv;

    iget-object v0, v0, Laqh;->a:Landroid/content/ContentResolver;

    invoke-direct {v1, v2, v3, v0}, Latj;-><init>(Ljava/util/concurrent/Executor;Larv;Landroid/content/ContentResolver;)V

    .line 292
    invoke-direct {p0, v1}, Laqi;->b(Laud;)Laud;

    move-result-object v0

    iput-object v0, p0, Laqi;->i:Laud;

    .line 295
    :cond_0
    iget-object v0, p0, Laqi;->i:Laud;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e(Laud;)Laud;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;)",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Laqi;->a:Laqh;

    new-instance v1, Lasg;

    iget-object v2, v0, Laqh;->n:Lapm;

    iget-object v0, v0, Laqh;->o:Lapa;

    invoke-direct {v1, v2, v0, p1}, Lasg;-><init>(Lapm;Lapa;Laud;)V

    .line 403
    iget-object v0, p0, Laqi;->a:Laqh;

    new-instance v2, Lasf;

    iget-object v0, v0, Laqh;->o:Lapa;

    invoke-direct {v2, v0, v1}, Lasf;-><init>(Lapa;Laud;)V

    .line 405
    iget-object v0, p0, Laqi;->a:Laqh;

    new-instance v1, Laup;

    iget-object v0, v0, Laqh;->i:Lapv;

    iget-object v0, v0, Lapv;->d:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v0, v2}, Laup;-><init>(Ljava/util/concurrent/Executor;Laud;)V

    .line 407
    iget-object v0, p0, Laqi;->a:Laqh;

    new-instance v2, Lase;

    iget-object v3, v0, Laqh;->n:Lapm;

    iget-object v0, v0, Laqh;->o:Lapa;

    invoke-direct {v2, v3, v0, v1}, Lase;-><init>(Lapm;Lapa;Laud;)V

    return-object v2
.end method

.method private declared-synchronized f()Laud;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqi;->j:Laud;

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Laqi;->a:Laqh;

    new-instance v1, Latr;

    iget-object v2, v0, Laqh;->i:Lapv;

    iget-object v2, v2, Lapv;->a:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Laqh;->j:Larv;

    iget-object v0, v0, Laqh;->b:Landroid/content/res/Resources;

    invoke-direct {v1, v2, v3, v0}, Latr;-><init>(Ljava/util/concurrent/Executor;Larv;Landroid/content/res/Resources;)V

    .line 311
    invoke-direct {p0, v1}, Laqi;->b(Laud;)Laud;

    move-result-object v0

    iput-object v0, p0, Laqi;->j:Laud;

    .line 314
    :cond_0
    iget-object v0, p0, Laqi;->j:Laud;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Laud;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqi;->k:Laud;

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Laqi;->a:Laqh;

    new-instance v1, Lati;

    iget-object v2, v0, Laqh;->i:Lapv;

    iget-object v2, v2, Lapv;->a:Ljava/util/concurrent/Executor;

    iget-object v3, v0, Laqh;->j:Larv;

    iget-object v0, v0, Laqh;->c:Landroid/content/res/AssetManager;

    invoke-direct {v1, v2, v3, v0}, Lati;-><init>(Ljava/util/concurrent/Executor;Larv;Landroid/content/res/AssetManager;)V

    .line 329
    invoke-direct {p0, v1}, Laqi;->b(Laud;)Laud;

    move-result-object v0

    iput-object v0, p0, Laqi;->k:Laud;

    .line 332
    :cond_0
    iget-object v0, p0, Laqi;->k:Laud;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h()Laud;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqi;->l:Laud;

    if-nez v0, :cond_1

    .line 342
    iget-object v1, p0, Laqi;->a:Laqh;

    new-instance v0, Lasl;

    iget-object v1, v1, Laqh;->j:Larv;

    invoke-direct {v0, v1}, Lasl;-><init>(Larv;)V

    .line 343
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    .line 344
    iget-object v1, p0, Laqi;->a:Laqh;

    invoke-virtual {v1, v0}, Laqh;->c(Laud;)Lauv;

    move-result-object v0

    .line 346
    :cond_0
    invoke-static {v0}, Laqh;->a(Laud;)Lasb;

    move-result-object v0

    .line 347
    iget-object v1, p0, Laqi;->a:Laqh;

    invoke-virtual {v1, v0}, Laqh;->b(Laud;)Lauh;

    move-result-object v0

    .line 350
    invoke-direct {p0, v0}, Laqi;->c(Laud;)Laud;

    move-result-object v0

    iput-object v0, p0, Laqi;->l:Laud;

    .line 352
    :cond_1
    iget-object v0, p0, Laqi;->l:Laud;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Laud;)Laud;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;)",
            "Laud",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laqi;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Laun;

    invoke-direct {v0, p1}, Laun;-><init>(Laud;)V

    .line 464
    iget-object v1, p0, Laqi;->m:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_0
    iget-object v0, p0, Laqi;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laud;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/facebook/imagepipeline/request/ImageRequest;)Laud;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ")",
            "Laud",
            "<",
            "Lakk",
            "<",
            "Laqv;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x1e

    .line 155
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    .line 158
    const-string v1, "Uri is null."

    invoke-static {v0, v1}, Ld;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-static {v0}, Ld;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-direct {p0}, Laqi;->a()Laud;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 161
    :cond_0
    invoke-static {v0}, Ld;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laki;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laki;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-direct {p0}, Laqi;->d()Laud;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0}, Laqi;->c()Laud;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_2
    invoke-static {v0}, Ld;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    invoke-direct {p0}, Laqi;->e()Laud;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_3
    invoke-static {v0}, Ld;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    invoke-direct {p0}, Laqi;->g()Laud;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_4
    invoke-static {v0}, Ld;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 172
    invoke-direct {p0}, Laqi;->f()Laud;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_5
    const-string v1, "data"

    invoke-static {v0}, Ld;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 174
    invoke-direct {p0}, Laqi;->h()Laud;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_6
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_7

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported uri scheme! Uri is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
