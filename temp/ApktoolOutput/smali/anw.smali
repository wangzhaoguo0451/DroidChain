.class public Lanw;
.super Lanq;
.source "AnimatedDrawableCachingBackendImpl.java"

# interfaces
.implements Lanj;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final c:Lajt;

.field private final d:Laog;

.field private final e:Landroid/app/ActivityManager;

.field private final f:Lakt;

.field private final g:Lani;

.field private final h:Lank;

.field private final i:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

.field private final j:Lakn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakn",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final k:I

.field private final l:I

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lek",
            "<",
            "Lwd",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final o:Lek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lek",
            "<",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final p:Laof;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lanw;

    sput-object v0, Lanw;->a:Ljava/lang/Class;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lanw;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lajt;Landroid/app/ActivityManager;Laog;Lakt;Lani;Lank;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p5}, Lanq;-><init>(Lani;)V

    .line 96
    iput-object p1, p0, Lanw;->c:Lajt;

    .line 97
    iput-object p2, p0, Lanw;->e:Landroid/app/ActivityManager;

    .line 98
    iput-object p3, p0, Lanw;->d:Laog;

    .line 99
    iput-object p4, p0, Lanw;->f:Lakt;

    .line 100
    iput-object p5, p0, Lanw;->g:Lani;

    .line 101
    iput-object p6, p0, Lanw;->h:Lank;

    .line 102
    iget v0, p6, Lank;->c:I

    if-ltz v0, :cond_0

    iget v0, p6, Lank;->c:I

    :goto_0
    iput v0, p0, Lanw;->k:I

    .line 104
    new-instance v0, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    new-instance v1, Lanx;

    invoke-direct {v1, p0}, Lanx;-><init>(Lanw;)V

    invoke-direct {v0, p5, v1}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;-><init>(Lani;Laoe;)V

    iput-object v0, p0, Lanw;->i:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    .line 117
    new-instance v0, Lany;

    invoke-direct {v0, p0}, Lany;-><init>(Lanw;)V

    iput-object v0, p0, Lanw;->j:Lakn;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanw;->m:Ljava/util/List;

    .line 124
    new-instance v0, Lek;

    invoke-direct {v0, v2}, Lek;-><init>(B)V

    iput-object v0, p0, Lanw;->n:Lek;

    .line 125
    new-instance v0, Lek;

    invoke-direct {v0, v2}, Lek;-><init>(B)V

    iput-object v0, p0, Lanw;->o:Lek;

    .line 126
    new-instance v0, Laof;

    iget-object v1, p0, Lanw;->g:Lani;

    invoke-interface {v1}, Lani;->c()I

    move-result v1

    invoke-direct {v0, v1}, Laof;-><init>(I)V

    iput-object v0, p0, Lanw;->p:Laof;

    .line 127
    iget-object v0, p0, Lanw;->g:Lani;

    invoke-interface {v0}, Lani;->c()I

    move-result v0

    iget-object v1, p0, Lanw;->g:Lani;

    invoke-interface {v1}, Lani;->f()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lanw;->g:Lani;

    invoke-interface {v1}, Lani;->g()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lanw;->l:I

    .line 131
    return-void

    .line 102
    :cond_0
    invoke-virtual {p2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    const/high16 v0, 0x50

    goto :goto_0

    :cond_1
    const/high16 v0, 0x30

    goto :goto_0
.end method

.method static synthetic a(Lanw;I)Lakk;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lanw;->i(I)Lakk;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 401
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 402
    add-int v0, p1, v1

    :try_start_0
    iget-object v2, p0, Lanw;->g:Lani;

    invoke-interface {v2}, Lani;->c()I

    move-result v2

    rem-int v2, v0, v2

    .line 403
    invoke-direct {p0, v2}, Lanw;->j(I)Z

    move-result v3

    .line 404
    iget-object v0, p0, Lanw;->n:Lek;

    invoke-virtual {v0, v2}, Lek;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwd;

    .line 405
    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Lanz;

    invoke-direct {v0, p0, v2}, Lanz;-><init>(Lanw;I)V

    iget-object v3, p0, Lanw;->c:Lajt;

    invoke-static {v0, v3}, Lwd;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lwd;

    move-result-object v0

    .line 414
    iget-object v3, p0, Lanw;->n:Lek;

    invoke-virtual {v3, v2, v0}, Lek;->a(ILjava/lang/Object;)V

    .line 415
    new-instance v3, Laoa;

    invoke-direct {v3, p0, v0, v2}, Laoa;-><init>(Lanw;Lwd;I)V

    invoke-virtual {v0, v3}, Lwd;->a(Lwc;)Lwd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 425
    :cond_1
    monitor-exit p0

    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(ILakk;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanw;->p:Laof;

    iget-object v0, v0, Laof;->a:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 521
    :goto_0
    monitor-exit p0

    return-void

    .line 514
    :cond_0
    :try_start_1
    iget-object v0, p0, Lanw;->o:Lek;

    invoke-virtual {v0, p1}, Lek;->e(I)I

    move-result v1

    .line 515
    if-ltz v1, :cond_1

    .line 516
    iget-object v0, p0, Lanw;->o:Lek;

    invoke-virtual {v0, v1}, Lek;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakk;

    .line 517
    invoke-virtual {v0}, Lakk;->close()V

    .line 518
    iget-object v0, p0, Lanw;->o:Lek;

    invoke-virtual {v0, v1}, Lek;->b(I)V

    .line 520
    :cond_1
    iget-object v0, p0, Lanw;->o:Lek;

    invoke-virtual {p2}, Lakk;->b()Lakk;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lek;->a(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lanw;ILandroid/graphics/Bitmap;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lanw;->p:Laof;

    iget-object v1, v1, Laof;->a:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lanw;->o:Lek;

    invoke-virtual {v1, p1}, Lek;->a(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lanw;->k()Lakk;

    move-result-object v1

    :try_start_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-virtual {v1}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-direct {p0, p1, v1}, Lanw;->a(ILakk;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Lakk;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lakk;->close()V

    throw v0
.end method

.method static synthetic a(Lanw;Lwd;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lanw;->a(Lwd;I)V

    return-void
.end method

.method private declared-synchronized a(Lwd;I)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanw;->n:Lek;

    invoke-virtual {v0, p2}, Lek;->e(I)I

    move-result v1

    .line 466
    if-ltz v1, :cond_0

    .line 467
    iget-object v0, p0, Lanw;->n:Lek;

    invoke-virtual {v0, v1}, Lek;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwd;

    .line 468
    if-ne v0, p1, :cond_0

    .line 469
    iget-object v0, p0, Lanw;->n:Lek;

    invoke-virtual {v0, v1}, Lek;->b(I)V

    .line 470
    invoke-virtual {p1}, Lwd;->d()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    sget-object v0, Lanw;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Lwd;->d()Ljava/lang/Exception;

    move-result-object v1

    const-string v2, "Failed to render frame %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lakf;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    :cond_0
    monitor-exit p0

    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 478
    monitor-enter p0

    const/4 v0, 0x0

    .line 479
    :goto_0
    :try_start_0
    iget-object v1, p0, Lanw;->n:Lek;

    invoke-virtual {v1}, Lek;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 480
    iget-object v1, p0, Lanw;->n:Lek;

    invoke-virtual {v1, v0}, Lek;->c(I)I

    move-result v1

    .line 481
    invoke-static {p1, p2, v1}, Laog;->a(III)Z

    move-result v1

    .line 482
    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lanw;->n:Lek;

    invoke-virtual {v1, v0}, Lek;->d(I)Ljava/lang/Object;

    .line 484
    iget-object v1, p0, Lanw;->n:Lek;

    invoke-virtual {v1, v0}, Lek;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 487
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 489
    goto :goto_0

    .line 490
    :cond_1
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lanw;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanw;->p:Laof;

    iget-object v0, v0, Laof;->a:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lanw;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lanw;->g:Lani;

    invoke-interface {v0, p1}, Lani;->e(I)Lakk;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_2
    invoke-direct {p0, p1, v2}, Lanw;->a(ILakk;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-static {v2}, Lakk;->c(Lakk;)V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-direct {p0}, Lanw;->k()Lakk;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    :try_start_4
    iget-object v4, p0, Lanw;->i:Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;

    invoke-virtual {v3}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v1, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, v4, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a:Lani;

    invoke-interface {v1, p1}, Lani;->a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->e:Z

    if-eqz v1, :cond_4

    if-lez p1, :cond_4

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v4, v1, v5}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a(ILandroid/graphics/Canvas;)I

    move-result v1

    :goto_2
    if-ge v1, p1, :cond_5

    iget-object v6, v4, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a:Lani;

    invoke-interface {v6, v1}, Lani;->a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v6

    iget-object v7, v6, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->f:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v8, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-eq v7, v8, :cond_3

    iget-object v8, v4, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a:Lani;

    invoke-interface {v8, v1, v5}, Lani;->a(ILandroid/graphics/Canvas;)V

    iget-object v8, v4, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->b:Laoe;

    invoke-interface {v8, v1, v0}, Laoe;->a(ILandroid/graphics/Bitmap;)V

    sget-object v8, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_BACKGROUND:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v7, v8, :cond_3

    invoke-virtual {v4, v5, v6}, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a(Landroid/graphics/Canvas;Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, p1

    goto :goto_2

    :cond_5
    iget-object v0, v4, Lcom/facebook/imagepipeline/animated/impl/AnimatedImageCompositor;->a:Lani;

    invoke-interface {v0, p1, v5}, Lani;->a(ILandroid/graphics/Canvas;)V

    invoke-direct {p0, p1, v3}, Lanw;->a(ILakk;)V

    sget-object v0, Lanw;->a:Ljava/lang/Class;

    const-string v1, "Prefetch rendered frame %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v3}, Lakk;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v2}, Lakk;->c(Lakk;)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v3}, Lakk;->close()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method private h(I)Lakk;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0xa

    .line 244
    iget-object v0, p0, Lanw;->f:Lakt;

    invoke-interface {v0}, Lakt;->a()J

    move-result-wide v2

    .line 248
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 249
    :try_start_1
    iget-object v0, p0, Lanw;->p:Laof;

    iget-object v0, v0, Laof;->a:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 250
    invoke-direct {p0, p1}, Lanw;->i(I)Lakk;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_1

    .line 252
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    iget-object v1, p0, Lanw;->f:Lakt;

    invoke-interface {v1}, Lakt;->a()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 272
    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 273
    const-string v1, "ok"

    .line 281
    sget-object v4, Lanw;->a:Ljava/lang/Class;

    const-string v5, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5, v6, v2, v1}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 283
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    iget-object v0, p0, Lanw;->f:Lakt;

    invoke-interface {v0}, Lakt;->a()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 272
    cmp-long v2, v0, v6

    if-lez v2, :cond_2

    .line 273
    const-string v2, "deferred"

    .line 279
    sget-object v3, Lanw;->a:Ljava/lang/Class;

    const-string v4, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4, v5, v0, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 283
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 271
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lanw;->f:Lakt;

    invoke-interface {v1}, Lakt;->a()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 272
    cmp-long v1, v2, v6

    if-lez v1, :cond_3

    .line 273
    const-string v1, "ok"

    .line 281
    sget-object v4, Lanw;->a:Ljava/lang/Class;

    const-string v5, "obtainBitmap for frame %d took %d ms (%s)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5, v6, v2, v1}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 283
    :cond_3
    throw v0
.end method

.method private declared-synchronized i(I)Lakk;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanw;->o:Lek;

    invoke-virtual {v0, p1}, Lek;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakk;

    invoke-static {v0}, Lakk;->b(Lakk;)Lakk;

    move-result-object v0

    .line 526
    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lanw;->g:Lani;

    invoke-interface {v0, p1}, Lani;->e(I)Lakk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 529
    :cond_0
    monitor-exit p0

    return-object v0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j(I)Z
    .locals 1
    .parameter

    .prologue
    .line 533
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanw;->o:Lek;

    invoke-virtual {v0, p1}, Lek;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lanw;->g:Lani;

    invoke-interface {v0, p1}, Lani;->f(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()Lakk;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    monitor-enter p0

    .line 327
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 328
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 329
    :goto_0
    iget-object v4, p0, Lanw;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 331
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v0, v2, v0

    invoke-virtual {v4, p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 332
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 335
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 339
    :cond_0
    :try_start_3
    iget-object v0, p0, Lanw;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    sget-object v0, Lanw;->a:Ljava/lang/Class;

    const-string v1, "Creating new bitmap"

    invoke-static {v0, v1}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;)V

    sget-object v0, Lanw;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    sget-object v0, Lanw;->a:Ljava/lang/Class;

    const-string v1, "Total bitmaps: %d"

    sget-object v2, Lanw;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lanw;->g:Lani;

    invoke-interface {v0}, Lani;->f()I

    move-result v0

    iget-object v1, p0, Lanw;->g:Lani;

    invoke-interface {v1}, Lani;->g()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 344
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    iget-object v1, p0, Lanw;->j:Lakn;

    invoke-static {v0, v1}, Lakk;->a(Ljava/lang/Object;Lakn;)Lakk;

    move-result-object v0

    return-object v0

    .line 342
    :cond_1
    :try_start_4
    iget-object v0, p0, Lanw;->m:Ljava/util/List;

    iget-object v1, p0, Lanw;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized l()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 353
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lanw;->g:Lani;

    iget v3, p0, Lanw;->q:I

    invoke-interface {v1, v3}, Lani;->a(I)Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;

    move-result-object v1

    .line 354
    iget-object v1, v1, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo;->f:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    sget-object v3, Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;->DISPOSE_TO_PREVIOUS:Lcom/facebook/imagepipeline/animated/base/AnimatedDrawableFrameInfo$DisposalMethod;

    if-ne v1, v3, :cond_1

    move v5, v2

    .line 356
    :goto_0
    const/4 v3, 0x0

    iget v4, p0, Lanw;->q:I

    if-eqz v5, :cond_2

    move v1, v2

    :goto_1
    sub-int v1, v4, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 357
    iget-object v3, p0, Lanw;->h:Lank;

    iget-boolean v3, v3, Lank;->b:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    move v4, v3

    .line 358
    :goto_2
    if-eqz v5, :cond_4

    move v3, v2

    :goto_3
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 359
    add-int v4, v1, v3

    iget-object v5, p0, Lanw;->g:Lani;

    invoke-interface {v5}, Lani;->c()I

    move-result v5

    rem-int/2addr v4, v5

    .line 360
    invoke-direct {p0, v1, v4}, Lanw;->b(II)V

    .line 362
    iget v5, p0, Lanw;->l:I

    iget v6, p0, Lanw;->k:I

    if-ge v5, v6, :cond_5

    :goto_4
    if-nez v2, :cond_8

    .line 363
    iget-object v2, p0, Lanw;->p:Laof;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Laof;->a(Z)V

    .line 364
    iget-object v2, p0, Lanw;->p:Laof;

    :goto_5
    iget-object v5, v2, Laof;->a:[Z

    array-length v5, v5

    if-ge v0, v5, :cond_6

    invoke-static {v1, v4, v0}, Laog;->a(III)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v2, Laof;->a:[Z

    const/4 v6, 0x0

    aput-boolean v6, v5, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1
    move v5, v0

    .line 354
    goto :goto_0

    :cond_2
    move v1, v0

    .line 356
    goto :goto_1

    :cond_3
    move v4, v0

    .line 357
    goto :goto_2

    :cond_4
    move v3, v0

    .line 358
    goto :goto_3

    :cond_5
    move v2, v0

    .line 362
    goto :goto_4

    :cond_6
    move v0, v1

    .line 368
    :goto_6
    if-ltz v0, :cond_7

    .line 369
    iget-object v2, p0, Lanw;->o:Lek;

    invoke-virtual {v2, v0}, Lek;->a(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 370
    iget-object v2, p0, Lanw;->p:Laof;

    iget-object v2, v2, Laof;->a:[Z

    const/4 v4, 0x1

    aput-boolean v4, v2, v0

    .line 374
    :cond_7
    invoke-direct {p0}, Lanw;->m()V

    .line 376
    :cond_8
    iget-object v0, p0, Lanw;->h:Lank;

    iget-boolean v0, v0, Lank;->b:Z

    if-eqz v0, :cond_a

    .line 377
    invoke-direct {p0, v1, v3}, Lanw;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    :goto_7
    monitor-exit p0

    return-void

    .line 368
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 379
    :cond_a
    :try_start_1
    iget v0, p0, Lanw;->q:I

    iget v1, p0, Lanw;->q:I

    invoke-direct {p0, v0, v1}, Lanw;->b(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()V
    .locals 3

    .prologue
    .line 493
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 494
    :goto_0
    :try_start_0
    iget-object v0, p0, Lanw;->o:Lek;

    invoke-virtual {v0}, Lek;->a()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 495
    iget-object v0, p0, Lanw;->o:Lek;

    invoke-virtual {v0, v1}, Lek;->c(I)I

    move-result v0

    .line 496
    iget-object v2, p0, Lanw;->p:Laof;

    iget-object v2, v2, Laof;->a:[Z

    aget-boolean v0, v2, v0

    .line 497
    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lanw;->o:Lek;

    invoke-virtual {v0, v1}, Lek;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakk;

    .line 499
    iget-object v2, p0, Lanw;->o:Lek;

    invoke-virtual {v2, v1}, Lek;->b(I)V

    .line 500
    invoke-virtual {v0}, Lakk;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 502
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 504
    goto :goto_0

    .line 505
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/graphics/Rect;)Lani;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lanw;->b(Landroid/graphics/Rect;)Lanj;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILandroid/graphics/Canvas;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 156
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final declared-synchronized a(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanw;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Landroid/graphics/Rect;)Lanj;
    .locals 7
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lanw;->g:Lani;

    invoke-interface {v0, p1}, Lani;->a(Landroid/graphics/Rect;)Lani;

    move-result-object v5

    .line 183
    iget-object v0, p0, Lanw;->g:Lani;

    if-ne v5, v0, :cond_0

    .line 186
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lanw;

    iget-object v1, p0, Lanw;->c:Lajt;

    iget-object v2, p0, Lanw;->e:Landroid/app/ActivityManager;

    iget-object v3, p0, Lanw;->d:Laog;

    iget-object v4, p0, Lanw;->f:Lakt;

    iget-object v6, p0, Lanw;->h:Lank;

    invoke-direct/range {v0 .. v6}, Lanw;-><init>(Lajt;Landroid/app/ActivityManager;Laog;Lakt;Lani;Lank;)V

    move-object p0, v0

    goto :goto_0
.end method

.method protected declared-synchronized finalize()V
    .locals 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 136
    iget-object v0, p0, Lanw;->o:Lek;

    invoke-virtual {v0}, Lek;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 137
    sget-object v0, Lanw;->a:Ljava/lang/Class;

    const-string v1, "Finalizing with rendered bitmaps"

    invoke-static {v0, v1}, Lakf;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 139
    :cond_0
    sget-object v0, Lanw;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lanw;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 140
    iget-object v0, p0, Lanw;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final g(I)Lakk;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iput p1, p0, Lanw;->q:I

    .line 162
    invoke-direct {p0, p1}, Lanw;->h(I)Lakk;

    move-result-object v0

    .line 163
    invoke-direct {p0}, Lanw;->l()V

    .line 164
    return-object v0
.end method

.method public final declared-synchronized i()V
    .locals 3

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanw;->p:Laof;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laof;->a(Z)V

    .line 198
    invoke-direct {p0}, Lanw;->m()V

    .line 199
    iget-object v0, p0, Lanw;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 200
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 201
    sget-object v0, Lanw;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_0
    :try_start_1
    iget-object v0, p0, Lanw;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 204
    iget-object v0, p0, Lanw;->g:Lani;

    invoke-interface {v0}, Lani;->i()V

    .line 205
    sget-object v0, Lanw;->a:Ljava/lang/Class;

    const-string v1, "Total bitmaps: %d"

    sget-object v2, Lanw;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    monitor-exit p0

    return-void
.end method

.method public final j()Lakk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lanw;->a()Lano;

    move-result-object v0

    invoke-virtual {v0}, Lano;->a()Lakk;

    move-result-object v0

    return-object v0
.end method
