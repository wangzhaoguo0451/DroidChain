.class public Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;
.super Ljava/lang/Object;
.source "CachedThreadPoolExecutorWithCapacity.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final cacheTimeMs:J

.field private isShutdown:Z

.field private final maxThreadNum:I

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final runningThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcqs;",
            ">;"
        }
    .end annotation
.end field

.field private final threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final threadPoolName:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    .line 41
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;-><init>(IJLjava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;-><init>(ILjava/util/concurrent/BlockingQueue;JLjava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, p0

    move v2, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;-><init>(ILjava/util/concurrent/BlockingQueue;JLjava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/BlockingQueue;JLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 82
    iput p1, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->maxThreadNum:I

    .line 83
    iput-object p2, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 84
    iput-wide p3, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->cacheTimeMs:J

    .line 85
    iput-object p5, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->threadPoolName:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static synthetic access$400(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->isShutdown:Z

    return v0
.end method

.method public static synthetic access$500(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)J
    .locals 2
    .parameter

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->cacheTimeMs:J

    return-wide v0
.end method

.method public static synthetic access$600(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->queue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v1, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    monitor-enter v1

    .line 185
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 187
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 188
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 190
    const/4 v0, 0x0

    monitor-exit v1

    .line 194
    :goto_0
    return v0

    .line 193
    :cond_1
    monitor-exit v1

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel(Ljava/lang/Runnable;Z)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 124
    if-eqz p2, :cond_2

    .line 126
    iget-object v1, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 128
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqs;

    .line 130
    invoke-static {v0}, Lcqs;->a(Lcqs;)Ljava/lang/Runnable;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 131
    invoke-virtual {v0}, Lcqs;->interrupt()V

    .line 132
    const/4 v0, 0x1

    monitor-exit v1

    .line 138
    :goto_0
    return v0

    .line 135
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->queue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    .line 138
    :try_start_1
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 135
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 4
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->isShutdown:Z

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->queue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 95
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    iget-object v1, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    monitor-enter v1

    .line 97
    :try_start_1
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->maxThreadNum:I

    if-ge v0, v2, :cond_1

    .line 99
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->threadPoolName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 100
    new-instance v0, Lcqs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->threadPoolName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcqs;-><init>(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;Ljava/lang/String;)V

    .line 105
    :goto_1
    iget-object v2, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {v0}, Lcqs;->start()V

    .line 108
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 95
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 102
    :cond_2
    :try_start_3
    new-instance v0, Lcqs;

    invoke-direct {v0, p0}, Lcqs;-><init>(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->isShutdown:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->isShutdown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 144
    iget-object v1, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->queue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    iget-object v1, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    monitor-enter v1

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 149
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 146
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 151
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->isShutdown:Z

    .line 153
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 158
    iget-object v2, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->queue:Ljava/util/concurrent/BlockingQueue;

    monitor-enter v2

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 160
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 161
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    iget-object v2, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    monitor-enter v2

    .line 163
    :try_start_1
    iget-object v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 164
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 161
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 166
    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->isShutdown:Z

    .line 168
    return-object v1
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->isShutdown:Z

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "This executive service is shut down already."

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    new-instance v0, Lcqr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcqr;-><init>(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;B)V

    .line 250
    new-instance v1, Lcqq;

    invoke-direct {v1, p1, v0}, Lcqq;-><init>(Ljava/lang/Runnable;Lcqr;)V

    .line 262
    invoke-static {v0, v1}, Lcqr;->a(Lcqr;Ljava/lang/Runnable;)V

    .line 263
    invoke-virtual {p0, v1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->execute(Ljava/lang/Runnable;)V

    .line 264
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->isShutdown:Z

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "This executive service is shut down already."

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    new-instance v0, Lcqr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcqr;-><init>(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;B)V

    .line 226
    new-instance v1, Lcqp;

    invoke-direct {v1, p1, v0, p2}, Lcqp;-><init>(Ljava/lang/Runnable;Lcqr;Ljava/lang/Object;)V

    .line 238
    invoke-static {v0, v1}, Lcqr;->a(Lcqr;Ljava/lang/Runnable;)V

    .line 239
    invoke-virtual {p0, v1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->execute(Ljava/lang/Runnable;)V

    .line 240
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->isShutdown:Z

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "This executive service is shut down already."

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    new-instance v0, Lcqr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcqr;-><init>(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;B)V

    .line 203
    new-instance v1, Lcqo;

    invoke-direct {v1, p1, v0}, Lcqo;-><init>(Ljava/util/concurrent/Callable;Lcqr;)V

    .line 215
    invoke-static {v0, v1}, Lcqr;->a(Lcqr;Ljava/lang/Runnable;)V

    .line 216
    invoke-virtual {p0, v1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->execute(Ljava/lang/Runnable;)V

    .line 217
    return-object v0
.end method
