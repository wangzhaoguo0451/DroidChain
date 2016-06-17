.class public Land;
.super Landroid/graphics/drawable/Drawable;
.source "AnimatedDrawable.java"

# interfaces
.implements Lali;
.implements Lanc;


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private final B:Ljava/lang/Runnable;

.field private final C:Ljava/lang/Runnable;

.field private final D:Ljava/lang/Runnable;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Lakt;

.field private final d:I

.field private final e:I

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Paint;

.field private i:Lanj;

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Lakk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakk",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:J

.field private t:Z

.field private u:Z

.field private v:F

.field private w:F

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Land;

    sput-object v0, Land;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lanj;Lmv;Lakt;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/high16 v3, 0x3f80

    const/4 v2, -0x1

    .line 136
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Land;->f:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Land;->g:Landroid/graphics/Rect;

    .line 80
    iput v2, p0, Land;->o:I

    .line 83
    iput v2, p0, Land;->p:I

    .line 89
    iput-wide v4, p0, Land;->s:J

    .line 94
    iput v3, p0, Land;->v:F

    .line 95
    iput v3, p0, Land;->w:F

    .line 98
    iput-wide v4, p0, Land;->z:J

    .line 100
    new-instance v0, Lane;

    invoke-direct {v0, p0}, Lane;-><init>(Land;)V

    iput-object v0, p0, Land;->A:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lanf;

    invoke-direct {v0, p0}, Lanf;-><init>(Land;)V

    iput-object v0, p0, Land;->B:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Lang;

    invoke-direct {v0, p0}, Lang;-><init>(Land;)V

    iput-object v0, p0, Land;->C:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lanh;

    invoke-direct {v0, p0}, Lanh;-><init>(Land;)V

    iput-object v0, p0, Land;->D:Ljava/lang/Runnable;

    .line 137
    iput-object p1, p0, Land;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 138
    iput-object p2, p0, Land;->i:Lanj;

    .line 139
    iput-object p4, p0, Land;->c:Lakt;

    .line 141
    iget-object v0, p0, Land;->i:Lanj;

    invoke-interface {v0}, Lanj;->b()I

    move-result v0

    iput v0, p0, Land;->d:I

    .line 142
    iget-object v0, p0, Land;->i:Lanj;

    invoke-interface {v0}, Lanj;->c()I

    move-result v0

    iput v0, p0, Land;->e:I

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Land;->h:Landroid/graphics/Paint;

    .line 145
    iget-object v0, p0, Land;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Land;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    iget-object v0, p0, Land;->i:Lanj;

    invoke-interface {v0}, Lanj;->h()I

    move-result v0

    iput v0, p0, Land;->k:I

    iget v0, p0, Land;->k:I

    iput v0, p0, Land;->l:I

    iput v2, p0, Land;->m:I

    iput v2, p0, Land;->n:I

    .line 150
    return-void
.end method

.method static synthetic a(Land;)V
    .locals 4
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Land;->t:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Land;->c:Lakt;

    invoke-interface {v0}, Lakt;->a()J

    move-result-wide v0

    iput-wide v0, p0, Land;->j:J

    const/4 v0, 0x0

    iput v0, p0, Land;->k:I

    const/4 v0, 0x0

    iput v0, p0, Land;->l:I

    iget-wide v0, p0, Land;->j:J

    iget-object v2, p0, Land;->i:Lanj;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lanj;->d(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Land;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Land;->scheduleSelf(Ljava/lang/Runnable;J)V

    iput-wide v0, p0, Land;->z:J

    invoke-direct {p0}, Land;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private a(Z)V
    .locals 8
    .parameter

    .prologue
    .line 252
    iget v0, p0, Land;->d:I

    if-nez v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Land;->c:Lakt;

    invoke-interface {v0}, Lakt;->a()J

    move-result-wide v2

    .line 256
    iget-wide v0, p0, Land;->j:J

    sub-long v0, v2, v0

    iget v4, p0, Land;->d:I

    int-to-long v4, v4

    div-long/2addr v0, v4

    long-to-int v1, v0

    .line 257
    iget-wide v4, p0, Land;->j:J

    sub-long v4, v2, v4

    iget v0, p0, Land;->d:I

    int-to-long v6, v0

    rem-long/2addr v4, v6

    long-to-int v4, v4

    .line 258
    iget-object v0, p0, Land;->i:Lanj;

    invoke-interface {v0, v4}, Lanj;->b(I)I

    move-result v5

    .line 259
    iget v0, p0, Land;->k:I

    if-eq v0, v5, :cond_2

    const/4 v0, 0x1

    .line 260
    :goto_1
    iput v5, p0, Land;->k:I

    .line 261
    iget v6, p0, Land;->e:I

    mul-int/2addr v1, v6

    add-int/2addr v1, v5

    iput v1, p0, Land;->l:I

    .line 263
    if-eqz p1, :cond_0

    .line 269
    if-eqz v0, :cond_3

    .line 270
    invoke-direct {p0}, Land;->d()V

    goto :goto_0

    .line 259
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 272
    :cond_3
    iget-object v0, p0, Land;->i:Lanj;

    iget v1, p0, Land;->k:I

    invoke-interface {v0, v1}, Lanj;->c(I)I

    move-result v0

    iget-object v1, p0, Land;->i:Lanj;

    iget v5, p0, Land;->k:I

    invoke-interface {v1, v5}, Lanj;->d(I)I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v4

    .line 275
    iget v1, p0, Land;->k:I

    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Land;->e:I

    rem-int/2addr v1, v4

    .line 276
    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 277
    iget-wide v4, p0, Land;->z:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-wide v4, p0, Land;->z:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 278
    :cond_4
    sget-object v4, Land;->a:Ljava/lang/Class;

    const-string v5, "(%s) Next frame (%d) in %d ms"

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v5, v6, v1, v0}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Land;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Land;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 280
    iget-object v0, p0, Land;->B:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Land;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 281
    iput-wide v2, p0, Land;->z:J

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;II)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 429
    iget-object v0, p0, Land;->i:Lanj;

    invoke-interface {v0, p2}, Lanj;->g(I)Lakk;

    move-result-object v1

    .line 431
    if-eqz v1, :cond_2

    .line 432
    invoke-virtual {v1}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Land;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 433
    iget-object v0, p0, Land;->q:Lakk;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Land;->q:Lakk;

    invoke-virtual {v0}, Lakk;->close()V

    .line 437
    :cond_0
    iget-boolean v0, p0, Land;->t:Z

    if-eqz v0, :cond_1

    iget v0, p0, Land;->p:I

    if-le p3, v0, :cond_1

    .line 438
    iget v0, p0, Land;->p:I

    sub-int v0, p3, v0

    add-int/lit8 v0, v0, -0x1

    .line 439
    if-lez v0, :cond_1

    .line 442
    sget-object v2, Land;->a:Ljava/lang/Class;

    const-string v3, "(%s) Dropped %d frames"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 445
    :cond_1
    iput-object v1, p0, Land;->q:Lakk;

    .line 446
    iput p2, p0, Land;->o:I

    .line 447
    iput p3, p0, Land;->p:I

    .line 448
    sget-object v0, Land;->a:Ljava/lang/Class;

    const-string v1, "(%s) Drew frame %d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    const/4 v0, 0x1

    .line 451
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Land;->a:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic b(Land;)V
    .locals 2
    .parameter

    .prologue
    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Land;->z:J

    iget-boolean v0, p0, Land;->t:Z

    if-eqz v0, :cond_0

    iget v0, p0, Land;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Land;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 401
    iget-boolean v0, p0, Land;->y:Z

    if-eqz v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Land;->y:Z

    .line 405
    iget-object v0, p0, Land;->C:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v0, v2, v3}, Land;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method static synthetic c(Land;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Land;->y:Z

    return v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Land;->r:Z

    .line 488
    iget-object v0, p0, Land;->c:Lakt;

    invoke-interface {v0}, Lakt;->a()J

    move-result-wide v0

    iput-wide v0, p0, Land;->s:J

    .line 489
    invoke-virtual {p0}, Land;->invalidateSelf()V

    .line 490
    return-void
.end method

.method static synthetic d(Land;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Land;->d()V

    return-void
.end method

.method static synthetic e(Land;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    iput-boolean v2, p0, Land;->u:Z

    iget-boolean v0, p0, Land;->t:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Land;->c:Lakt;

    invoke-interface {v0}, Lakt;->a()J

    move-result-wide v4

    iget-boolean v0, p0, Land;->r:Z

    if-eqz v0, :cond_3

    iget-wide v6, p0, Land;->s:J

    sub-long v6, v4, v6

    cmp-long v0, v6, v10

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iget-wide v6, p0, Land;->z:J

    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    iget-wide v6, p0, Land;->z:J

    sub-long/2addr v4, v6

    cmp-long v3, v4, v10

    if-lez v3, :cond_0

    move v2, v1

    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_4

    :cond_1
    invoke-virtual {p0}, Land;->a()V

    invoke-direct {p0}, Land;->d()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Land;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p0, Land;->D:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    iput-boolean v1, p0, Land;->u:Z

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 582
    sget-object v0, Land;->a:Ljava/lang/Class;

    const-string v1, "(%s) Dropping caches"

    invoke-static {v0, v1, v3}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    iget-object v0, p0, Land;->q:Lakk;

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Land;->q:Lakk;

    invoke-virtual {v0}, Lakk;->close()V

    .line 585
    iput-object v3, p0, Land;->q:Lakk;

    .line 586
    iput v2, p0, Land;->o:I

    .line 587
    iput v2, p0, Land;->p:I

    .line 589
    :cond_0
    iget-object v0, p0, Land;->i:Lanj;

    invoke-interface {v0}, Lanj;->i()V

    .line 590
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v7, -0x1

    .line 288
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Land;->r:Z

    .line 291
    iget-boolean v2, p0, Land;->t:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Land;->u:Z

    if-nez v2, :cond_0

    .line 292
    iget-object v2, p0, Land;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v3, p0, Land;->D:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 296
    const/4 v2, 0x1

    iput-boolean v2, p0, Land;->u:Z

    .line 299
    :cond_0
    iget-boolean v2, p0, Land;->x:Z

    if-eqz v2, :cond_2

    .line 300
    iget-object v2, p0, Land;->g:Landroid/graphics/Rect;

    invoke-virtual {p0}, Land;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 301
    iget-object v2, p0, Land;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 302
    iget-object v2, p0, Land;->i:Lanj;

    iget-object v3, p0, Land;->g:Landroid/graphics/Rect;

    invoke-interface {v2, v3}, Lanj;->b(Landroid/graphics/Rect;)Lanj;

    move-result-object v2

    .line 304
    iget-object v3, p0, Land;->i:Lanj;

    if-eq v2, v3, :cond_1

    .line 305
    iget-object v3, p0, Land;->i:Lanj;

    invoke-interface {v3}, Lanj;->i()V

    .line 306
    iput-object v2, p0, Land;->i:Lanj;

    .line 307
    :cond_1
    iget-object v2, p0, Land;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Land;->i:Lanj;

    invoke-interface {v3}, Lanj;->f()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Land;->v:F

    .line 310
    iget-object v2, p0, Land;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Land;->i:Lanj;

    invoke-interface {v3}, Lanj;->g()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Land;->w:F

    .line 311
    const/4 v2, 0x0

    iput-boolean v2, p0, Land;->x:Z

    .line 315
    :cond_2
    iget-object v2, p0, Land;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 393
    :goto_0
    return-void

    .line 320
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 321
    iget v2, p0, Land;->v:F

    iget v3, p0, Land;->w:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 325
    iget v2, p0, Land;->m:I

    if-eq v2, v7, :cond_4

    .line 327
    iget v0, p0, Land;->m:I

    iget v2, p0, Land;->n:I

    invoke-direct {p0, p1, v0, v2}, Land;->a(Landroid/graphics/Canvas;II)Z

    move-result v2

    .line 329
    or-int/lit8 v0, v2, 0x0

    .line 330
    if-eqz v2, :cond_a

    .line 331
    sget-object v2, Land;->a:Ljava/lang/Class;

    const-string v3, "(%s) Rendered pending frame %d"

    const/4 v4, 0x0

    iget v5, p0, Land;->m:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    const/4 v2, -0x1

    iput v2, p0, Land;->m:I

    .line 333
    const/4 v2, -0x1

    iput v2, p0, Land;->n:I

    .line 341
    :cond_4
    :goto_1
    iget v2, p0, Land;->m:I

    if-ne v2, v7, :cond_6

    .line 343
    iget-boolean v2, p0, Land;->t:Z

    if-eqz v2, :cond_5

    .line 344
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Land;->a(Z)V

    .line 346
    :cond_5
    iget v2, p0, Land;->k:I

    iget v3, p0, Land;->l:I

    invoke-direct {p0, p1, v2, v3}, Land;->a(Landroid/graphics/Canvas;II)Z

    move-result v2

    .line 350
    or-int/2addr v0, v2

    .line 351
    if-eqz v2, :cond_b

    .line 352
    sget-object v2, Land;->a:Ljava/lang/Class;

    const-string v3, "(%s) Rendered current frame %d"

    const/4 v4, 0x0

    iget v5, p0, Land;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 353
    iget-boolean v2, p0, Land;->t:Z

    if-eqz v2, :cond_6

    .line 354
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Land;->a(Z)V

    .line 364
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 365
    iget-object v2, p0, Land;->q:Lakk;

    if-eqz v2, :cond_7

    .line 366
    iget-object v0, p0, Land;->q:Lakk;

    invoke-virtual {v0}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Land;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 368
    sget-object v0, Land;->a:Ljava/lang/Class;

    const-string v2, "(%s) Rendered last known frame %d"

    const/4 v3, 0x0

    iget v4, p0, Land;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v1

    .line 372
    :cond_7
    if-nez v0, :cond_8

    .line 374
    iget-object v2, p0, Land;->i:Lanj;

    invoke-interface {v2}, Lanj;->j()Lakk;

    move-result-object v2

    .line 376
    if-eqz v2, :cond_8

    .line 377
    invoke-virtual {v2}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Land;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 378
    invoke-virtual {v2}, Lakk;->close()V

    .line 379
    sget-object v0, Land;->a:Ljava/lang/Class;

    const-string v2, "(%s) Rendered preview frame"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 384
    :cond_8
    if-nez v0, :cond_9

    .line 386
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Land;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Land;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Land;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 387
    sget-object v0, Land;->a:Ljava/lang/Class;

    const-string v1, "(%s) Failed to draw a frame"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 393
    :catchall_0
    move-exception v0

    throw v0

    .line 336
    :cond_a
    :try_start_1
    sget-object v2, Land;->a:Ljava/lang/Class;

    const-string v3, "(%s) Trying again later for pending %d"

    const/4 v4, 0x0

    iget v5, p0, Land;->m:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 337
    invoke-direct {p0}, Land;->c()V

    goto/16 :goto_1

    .line 357
    :cond_b
    sget-object v2, Land;->a:Ljava/lang/Class;

    const-string v3, "(%s) Trying again later for current %d"

    const/4 v4, 0x0

    iget v5, p0, Land;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    iget v2, p0, Land;->k:I

    iput v2, p0, Land;->m:I

    .line 359
    iget v2, p0, Land;->l:I

    iput v2, p0, Land;->n:I

    .line 360
    invoke-direct {p0}, Land;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 162
    iget-object v0, p0, Land;->q:Lakk;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Land;->q:Lakk;

    invoke-virtual {v0}, Lakk;->close()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Land;->q:Lakk;

    .line 166
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Land;->i:Lanj;

    invoke-interface {v0}, Lanj;->e()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Land;->i:Lanj;

    invoke-interface {v0}, Lanj;->d()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Land;->t:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 206
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Land;->x:Z

    .line 208
    iget-object v0, p0, Land;->q:Lakk;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Land;->q:Lakk;

    invoke-virtual {v0}, Lakk;->close()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Land;->q:Lakk;

    .line 212
    :cond_0
    iput v1, p0, Land;->o:I

    .line 213
    iput v1, p0, Land;->p:I

    .line 214
    iget-object v0, p0, Land;->i:Lanj;

    invoke-interface {v0}, Lanj;->i()V

    .line 215
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 528
    iget-boolean v1, p0, Land;->t:Z

    if-eqz v1, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v0

    .line 533
    :cond_1
    iget-object v1, p0, Land;->i:Lanj;

    invoke-interface {v1, p1}, Lanj;->b(I)I

    move-result v1

    .line 534
    iget v2, p0, Land;->k:I

    if-eq v1, v2, :cond_0

    .line 539
    :try_start_0
    iput v1, p0, Land;->k:I

    .line 540
    iput v1, p0, Land;->l:I

    .line 541
    invoke-direct {p0}, Land;->d()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    const/4 v0, 0x1

    goto :goto_0

    .line 545
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Land;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 190
    invoke-direct {p0}, Land;->d()V

    .line 191
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Land;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 196
    invoke-direct {p0}, Land;->d()V

    .line 197
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 509
    iget v0, p0, Land;->d:I

    if-eqz v0, :cond_0

    iget v0, p0, Land;->e:I

    if-gt v0, v1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iput-boolean v1, p0, Land;->t:Z

    .line 513
    iget-object v0, p0, Land;->A:Ljava/lang/Runnable;

    iget-object v1, p0, Land;->c:Lakt;

    invoke-interface {v1}, Lakt;->a()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Land;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 518
    const/4 v0, 0x0

    iput-boolean v0, p0, Land;->t:Z

    .line 519
    return-void
.end method
