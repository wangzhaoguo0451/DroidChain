.class public final Lapc;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Lapm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lapm",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static a:J


# instance fields
.field private b:Lapb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapb",
            "<TK;",
            "Lapf",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private c:Lapb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapb",
            "<TK;",
            "Lapf",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final d:Lapr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lapr",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final e:Lakd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lakd",
            "<",
            "Lapn;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lapn;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lapc;->a:J

    return-void
.end method

.method public constructor <init>(Lapr;Lakd;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapr",
            "<TV;>;",
            "Lakd",
            "<",
            "Lapn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lapc;->d:Lapr;

    .line 111
    new-instance v0, Lapb;

    invoke-static {p1}, Lapc;->a(Lapr;)Lapr;

    move-result-object v1

    invoke-direct {v0, v1}, Lapb;-><init>(Lapr;)V

    iput-object v0, p0, Lapc;->b:Lapb;

    .line 112
    new-instance v0, Lapb;

    invoke-static {p1}, Lapc;->a(Lapr;)Lapr;

    move-result-object v1

    invoke-direct {v0, v1}, Lapb;-><init>(Lapr;)V

    iput-object v0, p0, Lapc;->c:Lapb;

    .line 113
    iput-object p2, p0, Lapc;->e:Lakd;

    .line 115
    iget-object v0, p0, Lapc;->e:Lakd;

    invoke-interface {v0}, Lakd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapn;

    iput-object v0, p0, Lapc;->f:Lapn;

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lapc;->g:J

    .line 117
    return-void
.end method

.method private declared-synchronized a(Lapf;)Lakk;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapf",
            "<TK;TV;>;)",
            "Lakk",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lapc;->d(Lapf;)V

    .line 197
    iget-object v0, p1, Lapf;->b:Lakk;

    invoke-virtual {v0}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lape;

    invoke-direct {v1, p0, p1}, Lape;-><init>(Lapc;Lapf;)V

    invoke-static {v0, v1}, Lakk;->a(Ljava/lang/Object;Lakn;)Lakk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Lapr;)Lapr;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapr",
            "<TV;>;)",
            "Lapr",
            "<",
            "Lapf",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lapd;

    invoke-direct {v0, p0}, Lapd;-><init>(Lapr;)V

    return-object v0
.end method

.method private declared-synchronized a(II)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lapf",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 316
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 317
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 319
    iget-object v0, p0, Lapc;->b:Lapb;

    invoke-virtual {v0}, Lapb;->a()I

    move-result v0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lapc;->b:Lapb;

    invoke-virtual {v0}, Lapb;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gt v0, v2, :cond_1

    .line 320
    const/4 v0, 0x0

    .line 328
    :cond_0
    monitor-exit p0

    return-object v0

    .line 322
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    :goto_0
    iget-object v3, p0, Lapc;->b:Lapb;

    invoke-virtual {v3}, Lapb;->a()I

    move-result v3

    if-gt v3, v1, :cond_2

    iget-object v3, p0, Lapc;->b:Lapb;

    invoke-virtual {v3}, Lapb;->b()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 324
    :cond_2
    iget-object v3, p0, Lapc;->b:Lapb;

    invoke-virtual {v3}, Lapb;->c()Ljava/lang/Object;

    move-result-object v3

    .line 325
    iget-object v4, p0, Lapc;->b:Lapb;

    invoke-virtual {v4, v3}, Lapb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v4, p0, Lapc;->c:Lapb;

    invoke-virtual {v4, v3}, Lapb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a()V
    .locals 4

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lapc;->g:J

    sget-wide v2, Lapc;->a:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 284
    :goto_0
    monitor-exit p0

    return-void

    .line 282
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lapc;->g:J

    .line 283
    iget-object v0, p0, Lapc;->e:Lakd;

    invoke-interface {v0}, Lakd;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapn;

    iput-object v0, p0, Lapc;->f:Lapn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lapc;Lapf;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lapc;->e(Lapf;)V

    invoke-direct {p0, p1}, Lapc;->b(Lapf;)V

    invoke-direct {p0, p1}, Lapc;->f(Lapf;)Lakk;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lakk;->c(Lakk;)V

    invoke-direct {p0}, Lapc;->a()V

    invoke-direct {p0}, Lapc;->b()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lapf",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 338
    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapf;

    .line 340
    invoke-direct {p0, v0}, Lapc;->f(Lapf;)Lakk;

    move-result-object v0

    invoke-static {v0}, Lakk;->c(Lakk;)V

    goto :goto_0

    .line 343
    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 294
    monitor-enter p0

    .line 295
    const v0, 0x7fffffff

    :try_start_0
    iget-object v1, p0, Lapc;->f:Lapn;

    iget v1, v1, Lapn;->b:I

    invoke-direct {p0}, Lapc;->c()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 298
    iget-object v1, p0, Lapc;->f:Lapn;

    iget v1, v1, Lapn;->c:I

    iget-object v2, p0, Lapc;->f:Lapn;

    iget v2, v2, Lapn;->a:I

    invoke-direct {p0}, Lapc;->d()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 301
    invoke-direct {p0, v0, v1}, Lapc;->a(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 302
    invoke-direct {p0, v0}, Lapc;->b(Ljava/util/ArrayList;)V

    .line 303
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-direct {p0, v0}, Lapc;->a(Ljava/util/ArrayList;)V

    .line 305
    return-void

    .line 303
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized b(Lapf;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapf",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lapf;->d:Z

    if-nez v0, :cond_0

    iget v0, p1, Lapf;->c:I

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lapc;->b:Lapb;

    iget-object v1, p1, Lapf;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lapb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lapf",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 347
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 348
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapf;

    .line 349
    invoke-direct {p0, v0}, Lapc;->c(Lapf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 352
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lapc;->d:Lapr;

    invoke-interface {v0, p1}, Lapr;->a(Ljava/lang/Object;)I

    move-result v0

    .line 169
    iget-object v1, p0, Lapc;->f:Lapn;

    iget v1, v1, Lapn;->d:I

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lapc;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lapc;->f:Lapn;

    iget v2, v2, Lapn;->b:I

    if-gt v1, v2, :cond_0

    invoke-direct {p0}, Lapc;->d()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lapc;->f:Lapn;

    iget v1, v1, Lapn;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()I
    .locals 2

    .prologue
    .line 394
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lapc;->c:Lapb;

    invoke-virtual {v0}, Lapb;->a()I

    move-result v0

    iget-object v1, p0, Lapc;->b:Lapb;

    invoke-virtual {v1}, Lapb;->a()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Lapf;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapf",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 356
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-boolean v1, p1, Lapf;->d:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Ld;->b(Z)V

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p1, Lapf;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    .line 357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()I
    .locals 2

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lapc;->c:Lapb;

    invoke-virtual {v0}, Lapb;->b()I

    move-result v0

    iget-object v1, p0, Lapc;->b:Lapb;

    invoke-virtual {v1}, Lapb;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Lapf;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapf",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-boolean v0, p1, Lapf;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->b(Z)V

    .line 365
    iget v0, p1, Lapf;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lapf;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit p0

    return-void

    .line 364
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e(Lapf;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapf",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget v0, p1, Lapf;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->b(Z)V

    .line 372
    iget v0, p1, Lapf;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lapf;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 371
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f(Lapf;)Lakk;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lapf",
            "<TK;TV;>;)",
            "Lakk",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-boolean v0, p1, Lapf;->d:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lapf;->c:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lapf;->b:Lakk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/android/internal/util/Predicate;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<TK;>;)I"
        }
    .end annotation

    .prologue
    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lapc;->b:Lapb;

    invoke-virtual {v0, p1}, Lapb;->a(Lcom/android/internal/util/Predicate;)Ljava/util/ArrayList;

    .line 238
    iget-object v0, p0, Lapc;->c:Lapb;

    invoke-virtual {v0, p1}, Lapb;->a(Lcom/android/internal/util/Predicate;)Ljava/util/ArrayList;

    move-result-object v0

    .line 239
    invoke-direct {p0, v0}, Lapc;->b(Ljava/util/ArrayList;)V

    .line 240
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-direct {p0, v0}, Lapc;->a(Ljava/util/ArrayList;)V

    .line 242
    invoke-direct {p0}, Lapc;->a()V

    .line 243
    invoke-direct {p0}, Lapc;->b()V

    .line 244
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 240
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/Object;)Lakk;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lakk",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lapc;->b:Lapb;

    invoke-virtual {v0, p1}, Lapb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lapc;->c:Lapb;

    invoke-virtual {v0, p1}, Lapb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapf;

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, v0}, Lapc;->a(Lapf;)Lakk;

    move-result-object v0

    .line 188
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-direct {p0}, Lapc;->a()V

    .line 190
    invoke-direct {p0}, Lapc;->b()V

    .line 191
    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Lakk;)Lakk;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lakk",
            "<TV;>;)",
            "Lakk",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {p2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-direct {p0}, Lapc;->a()V

    .line 145
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lapc;->b:Lapb;

    invoke-virtual {v0, p1}, Lapb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lapc;->c:Lapb;

    invoke-virtual {v0, p1}, Lapb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapf;

    .line 149
    if-eqz v0, :cond_1

    .line 150
    invoke-direct {p0, v0}, Lapc;->c(Lapf;)V

    .line 151
    invoke-direct {p0, v0}, Lapc;->f(Lapf;)Lakk;

    move-result-object v0

    move-object v2, v0

    .line 154
    :goto_0
    invoke-virtual {p2}, Lakk;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lapc;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lapf;

    invoke-direct {v0, p1, p2}, Lapf;-><init>(Ljava/lang/Object;Lakk;)V

    .line 156
    iget-object v1, p0, Lapc;->c:Lapb;

    invoke-virtual {v1, p1, v0}, Lapb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-direct {p0, v0}, Lapc;->a(Lapf;)Lakk;

    move-result-object v0

    .line 159
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-static {v2}, Lakk;->c(Lakk;)V

    .line 162
    invoke-direct {p0}, Lapc;->b()V

    .line 163
    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method
