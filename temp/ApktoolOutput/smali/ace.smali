.class public final Lace;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lace;


# instance fields
.field public a:Landroid/util/SparseArray;

.field public b:Landroid/util/SparseArray;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lace;->a:Landroid/util/SparseArray;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lace;->b:Landroid/util/SparseArray;

    .line 50
    return-void
.end method

.method public static final a()Lace;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lace;->c:Lace;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lace;

    invoke-direct {v0}, Lace;-><init>()V

    sput-object v0, Lace;->c:Lace;

    .line 34
    :cond_0
    sget-object v0, Lace;->c:Lace;

    return-object v0
.end method

.method public static a(Lace;Lacd;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-virtual {p1}, Lacd;->c()Lacf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lacd;->c()Lacf;

    move-result-object v0

    invoke-virtual {v0}, Lacf;->b()Z

    .line 42
    :cond_0
    invoke-virtual {p1}, Lacd;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lace;->d(I)V

    .line 43
    iget-object v0, p1, Lacd;->c:Ladr;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p1, Lacd;->c:Ladr;

    invoke-virtual {v0}, Ladr;->b()V

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lace;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lace;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lace;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized b(I)Lacd;
    .locals 2
    .parameter

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lace;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacd;

    .line 58
    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lacd;

    invoke-direct {v0, p1}, Lacd;-><init>(I)V

    .line 61
    iget-object v1, p0, Lace;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit p0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(I)Lacd;
    .locals 4
    .parameter

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 68
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lace;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v1, v0, :cond_1

    .line 76
    const/4 v0, 0x0

    :cond_0
    monitor-exit p0

    return-object v0

    .line 69
    :cond_1
    :try_start_1
    iget-object v0, p0, Lace;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 70
    iget-object v3, p0, Lace;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lacd;

    .line 71
    if-eqz v0, :cond_2

    iget v3, v0, Lacd;->a:I

    if-ne v3, v2, :cond_2

    .line 72
    invoke-virtual {v0}, Lacd;->a()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v3, p1, :cond_0

    .line 68
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(I)V
    .locals 2
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lace;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lace;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 107
    return-void
.end method

.method public final e(I)Lcom/alipay/android/app/c;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lace;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/c;

    return-object v0
.end method
