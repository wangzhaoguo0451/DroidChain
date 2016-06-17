.class public abstract Lcom/facebook/imagepipeline/memory/BasePool;
.super Ljava/lang/Object;
.source "BasePool.java"

# interfaces
.implements Larp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Larp",
        "<TV;>;"
    }
.end annotation


# instance fields
.field public final a:Lart;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Larf",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Larb;

.field private g:Larb;


# direct methods
.method public constructor <init>(Lmv;Lart;Lmv;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->b:Ljava/lang/Class;

    .line 169
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {p2}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lart;

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lart;

    .line 171
    invoke-static {p3}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Landroid/util/SparseArray;

    .line 175
    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->a(Landroid/util/SparseIntArray;)V

    .line 177
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->d:Ljava/util/Set;

    .line 179
    new-instance v0, Larb;

    invoke-direct {v0}, Larb;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    .line 180
    new-instance v0, Larb;

    invoke-direct {v0}, Larb;-><init>()V

    iput-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    .line 181
    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    .prologue
    .line 444
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    iget v0, v0, Larb;->b:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ld;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    monitor-exit p0

    return-void

    .line 444
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Landroid/util/SparseIntArray;)V
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 453
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 459
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lart;

    iget-object v1, v1, Lart;->c:Landroid/util/SparseIntArray;

    .line 460
    if-eqz v1, :cond_1

    .line 461
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 462
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 463
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 464
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 465
    iget-object v5, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Landroid/util/SparseArray;

    new-instance v6, Larf;

    invoke-virtual {p0, v2}, Lcom/facebook/imagepipeline/memory/BasePool;->d(I)I

    move-result v7

    invoke-direct {v6, v7, v3, v4}, Larf;-><init>(III)V

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :goto_1
    monitor-exit p0

    return-void

    .line 474
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()V
    .locals 1

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lart;

    iget v0, v0, Lart;->b:I

    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    :cond_0
    monitor-exit p0

    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Z
    .locals 2

    .prologue
    .line 636
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    iget v0, v0, Larb;->b:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    iget v1, v1, Larb;->b:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lart;

    iget v1, v1, Lart;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    .line 638
    :goto_0
    monitor-exit p0

    return v0

    .line 636
    :cond_0
    const/4 v0, 0x0

    .line 638
    goto :goto_0

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InvalidAccessToGuardedField"
        }
    .end annotation

    .prologue
    .line 685
    const/4 v0, 0x2

    invoke-static {v0}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->b:Ljava/lang/Class;

    const-string v1, "Used = (%d, %d); Free = (%d, %d)"

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    iget v2, v2, Larb;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    iget v3, v3, Larb;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    iget v4, v4, Larb;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    iget v5, v5, Larb;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 694
    :cond_0
    return-void
.end method

.method private declared-synchronized f(I)V
    .locals 6
    .parameter

    .prologue
    .line 557
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    iget v0, v0, Larb;->b:I

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    iget v1, v1, Larb;->b:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    iget v1, v1, Larb;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 558
    if-gtz v1, :cond_1

    .line 598
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 561
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    invoke-static {v0}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->b:Ljava/lang/Class;

    const-string v2, "trimToSize: TargetSize = %d; Initial Size = %d; Bytes to free = %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    iget v4, v4, Larb;->b:I

    iget-object v5, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    iget v5, v5, Larb;->b:I

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 569
    :cond_2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->d()V

    .line 573
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 574
    if-lez v1, :cond_4

    .line 575
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larf;

    .line 578
    :goto_2
    if-lez v1, :cond_3

    .line 579
    invoke-virtual {v0}, Larf;->a()Ljava/lang/Object;

    move-result-object v3

    .line 580
    if-eqz v3, :cond_3

    .line 581
    invoke-virtual {p0, v3}, Lcom/facebook/imagepipeline/memory/BasePool;->b(Ljava/lang/Object;)V

    .line 584
    iget v3, v0, Larf;->a:I

    sub-int/2addr v1, v3

    .line 585
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    iget v4, v0, Larf;->a:I

    invoke-virtual {v3, v4}, Larb;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 573
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 590
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->d()V

    .line 591
    const/4 v0, 0x2

    invoke-static {v0}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->b:Ljava/lang/Class;

    const-string v1, "trimToSize: TargetSize = %d; Final Size = %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    iget v3, v3, Larb;->b:I

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    iget v4, v4, Larb;->b:I

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized g(I)Larf;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Larf",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 609
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Larf;

    .line 610
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 620
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 615
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    invoke-static {v0}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->b:Ljava/lang/Class;

    const-string v1, "creating new bucket %s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 618
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->e(I)Larf;

    move-result-object v0

    .line 619
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized h(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 655
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lart;

    iget v1, v1, Lart;->a:I

    .line 659
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    iget v2, v2, Larb;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, p1

    if-le v2, v1, :cond_1

    .line 676
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 665
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lart;

    iget v2, v2, Lart;->b:I

    .line 666
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    iget v3, v3, Larb;->b:I

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    iget v4, v4, Larb;->b:I

    add-int/2addr v3, v4

    add-int/2addr v3, p1

    if-le v3, v2, :cond_2

    .line 667
    sub-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/facebook/imagepipeline/memory/BasePool;->f(I)V

    .line 671
    :cond_2
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    iget v2, v2, Larb;->b:I

    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    iget v3, v3, Larb;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v2, v3

    add-int/2addr v2, p1

    if-gt v2, v1, :cond_0

    .line 676
    const/4 v0, 0x1

    goto :goto_0

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->a()V

    .line 206
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->c(I)I

    move-result v1

    .line 207
    monitor-enter p0

    .line 210
    :try_start_0
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/memory/BasePool;->g(I)Larf;

    move-result-object v2

    .line 212
    if-eqz v2, :cond_2

    .line 214
    invoke-virtual {v2}, Larf;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v3, v2, Larf;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Larf;->d:I

    .line 215
    :cond_0
    if-eqz v0, :cond_2

    .line 216
    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ld;->b(Z)V

    .line 220
    invoke-virtual {p0, v0}, Lcom/facebook/imagepipeline/memory/BasePool;->c(Ljava/lang/Object;)I

    move-result v1

    .line 221
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/memory/BasePool;->d(I)I

    move-result v2

    .line 222
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    invoke-virtual {v3, v2}, Larb;->a(I)V

    .line 223
    iget-object v3, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    invoke-virtual {v3, v2}, Larb;->b(I)V

    .line 224
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->d()V

    .line 226
    const/4 v2, 0x2

    invoke-static {v2}, Lakf;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->b:Ljava/lang/Class;

    const-string v3, "get (reuse) (object, size) = (%x, %s)"

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    :cond_1
    monitor-exit p0

    .line 293
    :goto_0
    return-object v0

    .line 238
    :cond_2
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/memory/BasePool;->d(I)I

    move-result v3

    .line 239
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/memory/BasePool;->h(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    new-instance v0, Lcom/facebook/imagepipeline/memory/BasePool$PoolSizeViolationException;

    iget-object v1, p0, Lcom/facebook/imagepipeline/memory/BasePool;->a:Lart;

    iget v1, v1, Lart;->a:I

    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    iget v2, v2, Larb;->b:I

    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    iget v4, v4, Larb;->b:I

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/facebook/imagepipeline/memory/BasePool$PoolSizeViolationException;-><init>(IIII)V

    throw v0

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 248
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    invoke-virtual {v0, v3}, Larb;->a(I)V

    .line 249
    if-eqz v2, :cond_4

    .line 250
    iget v0, v2, Larf;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Larf;->d:I

    .line 252
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    const/4 v0, 0x0

    .line 259
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/facebook/imagepipeline/memory/BasePool;->b(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 278
    :goto_1
    monitor-enter p0

    .line 279
    :try_start_3
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ld;->b(Z)V

    .line 281
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->b()V

    .line 282
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->d()V

    .line 284
    const/4 v2, 0x2

    invoke-static {v2}, Lakf;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->b:Ljava/lang/Class;

    const-string v3, "get (alloc) (object, size) = (%x, %s)"

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    :cond_5
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 260
    :catch_0
    move-exception v2

    .line 263
    monitor-enter p0

    .line 264
    :try_start_4
    iget-object v4, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    invoke-virtual {v4, v3}, Larb;->b(I)V

    .line 265
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/memory/BasePool;->g(I)Larf;

    move-result-object v3

    .line 266
    if-eqz v3, :cond_6

    .line 267
    invoke-virtual {v3}, Larf;->b()V

    .line 269
    :cond_6
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 270
    invoke-static {v2}, Ld;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 269
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 308
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->c(Ljava/lang/Object;)I

    move-result v3

    .line 311
    invoke-virtual {p0, v3}, Lcom/facebook/imagepipeline/memory/BasePool;->d(I)I

    move-result v4

    .line 312
    monitor-enter p0

    .line 313
    :try_start_0
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/memory/BasePool;->g(I)Larf;

    move-result-object v5

    .line 314
    iget-object v2, p0, Lcom/facebook/imagepipeline/memory/BasePool;->d:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 317
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->b:Ljava/lang/Class;

    const-string v1, "release (free, value unrecognized) (object, size) = (%x, %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lakf;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->b(Ljava/lang/Object;)V

    .line 366
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->d()V

    .line 367
    monitor-exit p0

    return-void

    .line 334
    :cond_1
    if-eqz v5, :cond_2

    iget v2, v5, Larf;->d:I

    iget-object v6, v5, Larf;->c:Ljava/util/Queue;

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    add-int/2addr v2, v6

    iget v6, v5, Larf;->b:I

    if-le v2, v6, :cond_5

    move v2, v0

    :goto_1
    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/facebook/imagepipeline/memory/BasePool;->c()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->d(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 338
    :cond_2
    if-eqz v5, :cond_3

    .line 339
    invoke-virtual {v5}, Larf;->b()V

    .line 342
    :cond_3
    const/4 v0, 0x2

    invoke-static {v0}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->b:Ljava/lang/Class;

    const-string v1, "release (free) (object, size) = (%x, %s)"

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    :cond_4
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->b(Ljava/lang/Object;)V

    .line 350
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    invoke-virtual {v0, v4}, Larb;->b(I)V

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    move v2, v1

    .line 334
    goto :goto_1

    .line 353
    :cond_6
    :try_start_1
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v5, Larf;->d:I

    if-lez v2, :cond_7

    :goto_2
    invoke-static {v0}, Ld;->b(Z)V

    iget v0, v5, Larf;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v5, Larf;->d:I

    invoke-virtual {v5, p1}, Larf;->a(Ljava/lang/Object;)V

    .line 354
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->g:Larb;

    invoke-virtual {v0, v4}, Larb;->a(I)V

    .line 355
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->f:Larb;

    invoke-virtual {v0, v4}, Larb;->b(I)V

    .line 356
    const/4 v0, 0x2

    invoke-static {v0}, Lakf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/BasePool;->b:Ljava/lang/Class;

    const-string v1, "release (reuse) (object, size) = (%x, %s)"

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lakf;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 353
    goto :goto_2
.end method

.method public abstract b(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public abstract c(I)I
.end method

.method public abstract c(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation
.end method

.method public abstract d(I)I
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 435
    invoke-static {p1}, Ld;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public e(I)Larf;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Larf",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 624
    new-instance v0, Larf;

    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/BasePool;->d(I)I

    move-result v1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Larf;-><init>(III)V

    return-object v0
.end method
