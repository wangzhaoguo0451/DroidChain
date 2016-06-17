.class public final Lcqs;
.super Ljava/lang/Thread;
.source "CachedThreadPoolExecutorWithCapacity.java"


# instance fields
.field private a:Ljava/lang/Runnable;

.field private synthetic b:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;


# direct methods
.method public constructor <init>(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcqs;->b:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    .line 298
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 299
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcqs;->b:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    .line 302
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public static synthetic a(Lcqs;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcqs;->a:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 307
    :goto_0
    iget-object v0, p0, Lcqs;->b:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    #getter for: Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->isShutdown:Z
    invoke-static {v0}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->access$400(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 310
    iget-object v0, p0, Lcqs;->b:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    #getter for: Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->cacheTimeMs:J
    invoke-static {v0}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->access$500(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcqs;->b:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    #getter for: Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v0}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->access$600(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcqs;->b:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    #getter for: Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->cacheTimeMs:J
    invoke-static {v1}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->access$500(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcqs;->a:Ljava/lang/Runnable;

    .line 315
    :goto_1
    iget-object v0, p0, Lcqs;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcqs;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcqs;->a:Ljava/lang/Runnable;

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcqs;->b:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    #getter for: Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->queue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v0}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->access$600(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcqs;->a:Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 325
    :cond_1
    iget-object v0, p0, Lcqs;->b:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    #getter for: Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->access$700(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 326
    :try_start_1
    iget-object v0, p0, Lcqs;->b:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    #getter for: Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->access$700(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lcqs;->b:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    #getter for: Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->access$700(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcqs;->b:Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    #getter for: Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->runningThreads:Ljava/util/List;
    invoke-static {v0}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;->access$700(Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 330
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
