.class final Latx;
.super Ljava/lang/Object;
.source "MultiplexProducer.java"


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lask",
            "<TT;>;",
            "Laue;",
            ">;>;"
        }
    .end annotation
.end field

.field c:Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field d:F

.field e:Lasd;

.field f:Latz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Latw",
            "<TK;TT;>.atx.atz;"
        }
    .end annotation
.end field

.field final synthetic g:Latw;


# direct methods
.method public constructor <init>(Latw;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 175
    iput-object p1, p0, Latx;->g:Latw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Latx;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 177
    iput-object p2, p0, Latx;->a:Ljava/lang/Object;

    .line 178
    return-void
.end method

.method static a(Ljava/io/Closeable;)V
    .locals 2
    .parameter

    .prologue
    .line 485
    if-eqz p0, :cond_0

    .line 486
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :cond_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized e()Z
    .locals 2

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Latx;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 351
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Laue;

    invoke-interface {v0}, Laue;->f()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 355
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()Z
    .locals 2

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Latx;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 369
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Laue;

    invoke-interface {v0}, Laue;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const/4 v0, 0x1

    .line 373
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()Lcom/facebook/imagepipeline/common/Priority;
    .locals 3

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/common/Priority;->LOW:Lcom/facebook/imagepipeline/common/Priority;

    .line 386
    iget-object v1, p0, Latx;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 387
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Laue;

    invoke-interface {v0}, Laue;->g()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/imagepipeline/common/Priority;->getHigherPriority(Lcom/facebook/imagepipeline/common/Priority;Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/imagepipeline/common/Priority;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    move-object v1, v0

    .line 388
    goto :goto_0

    .line 389
    :cond_0
    monitor-exit p0

    return-object v1

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final a()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 311
    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v3, p0, Latx;->e:Lasd;

    if-nez v3, :cond_0

    move v3, v1

    :goto_0
    invoke-static {v3}, Ld;->a(Z)V

    .line 313
    iget-object v3, p0, Latx;->f:Latz;

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v1}, Ld;->a(Z)V

    .line 316
    iget-object v1, p0, Latx;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    iget-object v1, p0, Latx;->g:Latw;

    iget-object v2, p0, Latx;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2, p0}, Latw;->a(Ljava/lang/Object;Latx;)V

    .line 318
    monitor-exit p0

    .line 339
    :goto_2
    return-void

    :cond_0
    move v3, v2

    .line 312
    goto :goto_0

    :cond_1
    move v1, v2

    .line 313
    goto :goto_1

    .line 321
    :cond_2
    iget-object v1, p0, Latx;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Laue;

    move-object v6, v0

    .line 322
    new-instance v1, Lasd;

    invoke-interface {v6}, Laue;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    invoke-interface {v6}, Laue;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Laue;->c()Laug;

    move-result-object v4

    invoke-interface {v6}, Laue;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6}, Laue;->e()Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    move-result-object v6

    invoke-direct {p0}, Latx;->e()Z

    move-result v7

    invoke-direct {p0}, Latx;->f()Z

    move-result v8

    invoke-direct {p0}, Latx;->g()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lasd;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/String;Laug;Ljava/lang/Object;Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;ZZLcom/facebook/imagepipeline/common/Priority;)V

    iput-object v1, p0, Latx;->e:Lasd;

    .line 332
    new-instance v1, Latz;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Latz;-><init>(Latx;B)V

    iput-object v1, p0, Latx;->f:Latz;

    .line 333
    iget-object v1, p0, Latx;->e:Lasd;

    .line 334
    iget-object v2, p0, Latx;->f:Latz;

    .line 335
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iget-object v3, p0, Latx;->g:Latw;

    iget-object v3, v3, Latw;->a:Laud;

    invoke-interface {v3, v2, v1}, Laud;->a(Lask;Laue;)V

    goto :goto_2

    .line 335
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a(Latz;Ljava/io/Closeable;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Latw",
            "<TK;TT;>.atx.atz;TT;Z)V"
        }
    .end annotation

    .prologue
    .line 421
    monitor-enter p0

    .line 423
    :try_start_0
    iget-object v0, p0, Latx;->f:Latz;

    if-eq v0, p1, :cond_1

    .line 424
    monitor-exit p0

    .line 444
    :cond_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Latx;->c:Ljava/io/Closeable;

    invoke-static {v0}, Latx;->a(Ljava/io/Closeable;)V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Latx;->c:Ljava/io/Closeable;

    .line 430
    iget-object v0, p0, Latx;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 431
    if-nez p3, :cond_2

    .line 432
    iget-object v0, p0, Latx;->g:Latw;

    invoke-virtual {v0, p2}, Latw;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    iput-object v0, p0, Latx;->c:Ljava/io/Closeable;

    .line 437
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 439
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/util/Pair;

    .line 441
    monitor-enter v1

    .line 442
    :try_start_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lask;

    invoke-virtual {v0, p2, p3}, Lask;->b(Ljava/lang/Object;Z)V

    .line 443
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 434
    :cond_2
    :try_start_2
    iget-object v0, p0, Latx;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 435
    iget-object v0, p0, Latx;->g:Latw;

    iget-object v1, p0, Latx;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Latw;->a(Ljava/lang/Object;Latx;)V

    goto :goto_0

    .line 437
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final a(Lask;Laue;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lask",
            "<TT;>;",
            "Laue;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v2, p0, Latx;->g:Latw;

    iget-object v3, p0, Latx;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Latw;->a(Ljava/lang/Object;)Latx;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 205
    monitor-exit p0

    .line 239
    :goto_0
    return v0

    .line 207
    :cond_0
    iget-object v0, p0, Latx;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {p0}, Latx;->b()Ljava/util/List;

    move-result-object v2

    .line 209
    invoke-virtual {p0}, Latx;->d()Ljava/util/List;

    move-result-object v3

    .line 210
    invoke-virtual {p0}, Latx;->c()Ljava/util/List;

    move-result-object v4

    .line 211
    iget-object v0, p0, Latx;->c:Ljava/io/Closeable;

    .line 212
    iget v5, p0, Latx;->d:F

    .line 213
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-static {v2}, Lasd;->a(Ljava/util/List;)V

    .line 216
    invoke-static {v3}, Lasd;->c(Ljava/util/List;)V

    .line 217
    invoke-static {v4}, Lasd;->b(Ljava/util/List;)V

    .line 219
    monitor-enter v1

    .line 221
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 222
    :try_start_2
    iget-object v2, p0, Latx;->c:Ljava/io/Closeable;

    if-eq v0, v2, :cond_4

    .line 223
    const/4 v0, 0x0

    .line 227
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 229
    if-eqz v0, :cond_3

    .line 230
    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-lez v2, :cond_2

    .line 231
    :try_start_3
    invoke-virtual {p1, v5}, Lask;->b(F)V

    .line 233
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lask;->b(Ljava/lang/Object;Z)V

    .line 234
    invoke-static {v0}, Latx;->a(Ljava/io/Closeable;)V

    .line 236
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 238
    new-instance v0, Laty;

    invoke-direct {v0, p0, v1}, Laty;-><init>(Latx;Landroid/util/Pair;)V

    invoke-interface {p2, v0}, Laue;->a(Lauf;)V

    .line 239
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 224
    :cond_4
    if-eqz v0, :cond_1

    .line 225
    :try_start_5
    iget-object v2, p0, Latx;->g:Latw;

    invoke-virtual {v2, v0}, Latw;->a(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    goto :goto_1

    .line 227
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    .line 236
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method

.method final declared-synchronized b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lauf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Latx;->e:Lasd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x0

    .line 346
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Latx;->e:Lasd;

    invoke-direct {p0}, Latx;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lasd;->a(Z)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lauf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Latx;->e:Lasd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 363
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Latx;->e:Lasd;

    invoke-direct {p0}, Latx;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lasd;->b(Z)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lauf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Latx;->e:Lasd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 379
    const/4 v0, 0x0

    .line 381
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Latx;->e:Lasd;

    invoke-direct {p0}, Latx;->g()Lcom/facebook/imagepipeline/common/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lasd;->a(Lcom/facebook/imagepipeline/common/Priority;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
