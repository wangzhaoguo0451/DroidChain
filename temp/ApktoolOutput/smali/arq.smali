.class public final Larq;
.super Ljava/lang/Object;
.source "PoolConfig.java"


# instance fields
.field final a:Lart;

.field final b:Lmv;

.field final c:Lart;

.field final d:Lmv;

.field final e:Lart;

.field final f:Lmv;

.field final g:Lart;

.field final h:Lmv;


# direct methods
.method private constructor <init>()V
    .locals 12

    .prologue
    const/high16 v11, 0x100

    const/high16 v10, 0x10

    const/16 v9, 0x4000

    const/4 v1, 0x2

    const/4 v8, 0x5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Larg;->a()Lart;

    move-result-object v0

    iput-object v0, p0, Larq;->a:Lart;

    .line 40
    invoke-static {}, Larn;->a()Larn;

    move-result-object v0

    iput-object v0, p0, Larq;->b:Lmv;

    .line 44
    invoke-static {}, Larh;->a()Lart;

    move-result-object v0

    iput-object v0, p0, Larq;->c:Lart;

    .line 48
    invoke-static {}, Lakj;->a()Lakj;

    move-result-object v0

    iput-object v0, p0, Larq;->d:Lmv;

    .line 52
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    const/16 v0, 0x400

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x800

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x1000

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x2000

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    const v0, 0x8000

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v0, 0x1

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v0, 0x2

    invoke-virtual {v2, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v0, 0x4

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v0, 0x8

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v3, Lart;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v4, 0x7fffffff

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    if-ge v0, v11, :cond_0

    const/high16 v0, 0x30

    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    if-ge v1, v11, :cond_2

    div-int/lit8 v1, v1, 0x2

    :goto_1
    invoke-direct {v3, v0, v1, v2}, Lart;-><init>(IILandroid/util/SparseIntArray;)V

    iput-object v3, p0, Larq;->e:Lart;

    .line 56
    invoke-static {}, Larn;->a()Larn;

    move-result-object v0

    iput-object v0, p0, Larq;->f:Lmv;

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual {v0, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v1, Lart;

    const v2, 0x14000

    invoke-direct {v1, v2, v10, v0}, Lart;-><init>(IILandroid/util/SparseIntArray;)V

    iput-object v1, p0, Larq;->g:Lart;

    .line 64
    invoke-static {}, Larn;->a()Larn;

    move-result-object v0

    iput-object v0, p0, Larq;->h:Lmv;

    .line 68
    return-void

    .line 52
    :cond_0
    const/high16 v1, 0x200

    if-ge v0, v1, :cond_1

    const/high16 v0, 0x60

    goto :goto_0

    :cond_1
    const/high16 v0, 0xc0

    goto :goto_0

    :cond_2
    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    goto :goto_1
.end method

.method public synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Larq;-><init>()V

    return-void
.end method
