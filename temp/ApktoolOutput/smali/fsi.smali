.class public abstract Lfsi;
.super Ljava/lang/Object;
.source "BaseFetcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field c:Landroid/os/Handler;

.field final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfsi;->d:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfsi;->e:Ljava/util/Set;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lfsi;->c:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lfsi;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()Lfsp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfsp",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lfsi;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lfsi;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    .line 238
    invoke-static {v0}, Lfsq;->a(Ljava/lang/String;)Lfsp;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(II)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 211
    .line 212
    const/4 v0, 0x3

    .line 213
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_5

    .line 215
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lfsi;->a(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 231
    :goto_1
    invoke-direct {p0}, Lfsi;->c()Lfsp;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, p2, :cond_4

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_3

    add-int v5, p1, v3

    invoke-virtual {p0, v2}, Lfsi;->a(Ljava/lang/Object;)Ljava/lang/ref/Reference;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lfsp;->a(ILjava/lang/ref/Reference;)V

    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 217
    :catch_0
    move-exception v0

    .line 218
    invoke-static {v0}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->canRetry(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    .line 219
    rsub-int/lit8 v0, v2, 0x3

    .line 220
    const/4 v3, 0x1

    add-int/lit8 v0, v0, -0x1

    shl-int v0, v3, v0

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 222
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 225
    goto :goto_0

    .line 226
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->is404NotFound(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 227
    throw v0

    :cond_1
    move v0, v2

    .line 229
    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 231
    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Lfsp;->a()I

    move-result v2

    if-ge v3, v2, :cond_4

    add-int v2, p1, v3

    invoke-virtual {v4, v2}, Lfsp;->a(I)V

    goto :goto_4

    .line 232
    :cond_4
    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method protected a(Ljava/lang/Object;)Ljava/lang/ref/Reference;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/ref/Reference",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract a(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final declared-synchronized a(IILfsr;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfsr",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lfsi;->a(IILfsr;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(IILfsr;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lfsr",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 60
    iget-object v0, p0, Lfsi;->d:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    new-instance v0, Lfsj;

    move-object v1, p0

    move v2, p1

    move v3, p4

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lfsj;-><init>(Lfsi;IZILfsr;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lfsi;->d:Ljava/util/Set;

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v1, p0, Lfsi;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(II)Lfss;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lfss",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lfsi;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lfsi;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lfsq;->a(Ljava/lang/String;)Lfsp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfsp;->b()V

    .line 245
    :cond_0
    return-void
.end method

.method protected d(II)Ljava/util/List;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2}, Lfsi;->e(II)Ljava/util/List;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p2, :cond_0

    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p1

    .line 175
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int v2, p2, v2

    .line 176
    invoke-direct {p0, v1, v2}, Lfsi;->c(II)Ljava/util/List;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_0

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    :cond_0
    return-object v0
.end method

.method final e(II)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 306
    invoke-direct {p0}, Lfsi;->c()Lfsp;

    move-result-object v2

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    if-nez v2, :cond_1

    .line 322
    :cond_0
    return-object v0

    .line 311
    :cond_1
    add-int v1, p1, p2

    .line 312
    if-gez v1, :cond_2

    .line 313
    invoke-virtual {v2}, Lfsp;->a()I

    move-result v1

    .line 315
    :cond_2
    :goto_0
    if-ge p1, v1, :cond_0

    .line 316
    invoke-virtual {v2, p1}, Lfsp;->b(I)Ljava/lang/Object;

    move-result-object v3

    .line 317
    if-eqz v3, :cond_0

    .line 318
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
