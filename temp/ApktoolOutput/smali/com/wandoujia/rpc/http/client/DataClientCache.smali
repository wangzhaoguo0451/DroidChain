.class public Lcom/wandoujia/rpc/http/client/DataClientCache;
.super Lcom/wandoujia/rpc/http/client/DataClient;
.source "DataClientCache.java"


# instance fields
.field private final cache:Lcom/wandoujia/rpc/http/cache/DataCache;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/rpc/http/client/DataClientCache;-><init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/wandoujia/rpc/http/client/DataClient;-><init>()V

    .line 35
    new-instance v0, Lcom/wandoujia/rpc/http/cache/FileCache;

    invoke-direct {v0, p1}, Lcom/wandoujia/rpc/http/cache/FileCache;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClientCache;->cache:Lcom/wandoujia/rpc/http/cache/DataCache;

    .line 36
    iput-object p2, p0, Lcom/wandoujia/rpc/http/client/DataClientCache;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/rpc/http/client/DataClientCache;Ljava/lang/String;Lcom/wandoujia/rpc/http/cache/Cacheable;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/wandoujia/rpc/http/client/DataClientCache;->putItemToCache(Ljava/lang/String;Lcom/wandoujia/rpc/http/cache/Cacheable;Ljava/lang/String;)V

    return-void
.end method

.method private putItemToCache(Ljava/lang/String;Lcom/wandoujia/rpc/http/cache/Cacheable;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/wandoujia/rpc/http/cache/Cacheable",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    invoke-interface {p2}, Lcom/wandoujia/rpc/http/cache/Cacheable;->getTimeoutInterval()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p3, v0, v1, v2, v3}, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;->from(Ljava/lang/String;JJ)Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/wandoujia/rpc/http/client/DataClientCache;->cache:Lcom/wandoujia/rpc/http/cache/DataCache;

    invoke-interface {v1, p1, v0}, Lcom/wandoujia/rpc/http/cache/DataCache;->put(Ljava/lang/String;Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;)V

    .line 185
    return-void
.end method


# virtual methods
.method public execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/wandoujia/rpc/http/delegate/ApiDelegate",
            "<TT;TE;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 50
    iget-boolean v2, p0, Lcom/wandoujia/rpc/http/client/DataClientCache;->isWorking:Z

    if-nez v2, :cond_0

    .line 51
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The client has been shut down."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 55
    :cond_0
    instance-of v2, p1, Lcom/wandoujia/rpc/http/cache/Cacheable;

    if-eqz v2, :cond_3

    instance-of v2, p1, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 56
    check-cast v2, Lcom/wandoujia/rpc/http/cache/Cacheable;

    invoke-interface {v2}, Lcom/wandoujia/rpc/http/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    .line 57
    iget-object v2, p0, Lcom/wandoujia/rpc/http/client/DataClientCache;->cache:Lcom/wandoujia/rpc/http/cache/DataCache;

    invoke-interface {v2, v3}, Lcom/wandoujia/rpc/http/cache/DataCache;->get(Ljava/lang/String;)Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;

    move-result-object v5

    .line 58
    if-eqz v5, :cond_1

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;->getLastModificationTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5}, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;->getTimeout()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-gtz v2, :cond_1

    .line 61
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;->getContentProcessor()Lcom/wandoujia/rpc/http/processor/Processor;

    move-result-object v2

    invoke-virtual {v5}, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/wandoujia/rpc/http/processor/Processor;->process(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 63
    if-eqz v2, :cond_1

    move-object v4, v2

    .line 105
    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    .line 69
    :cond_1
    :goto_1
    instance-of v2, p1, Lcom/wandoujia/rpc/http/cache/Cacheable;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;

    if-eqz v2, :cond_2

    .line 78
    invoke-interface {p1}, Lcom/wandoujia/rpc/http/delegate/ApiDelegate;->getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/wandoujia/rpc/http/client/DataClient;->executeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 81
    :try_start_1
    new-instance v5, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;

    invoke-direct {v5}, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;-><init>()V

    invoke-virtual {v5, v2}, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;->process(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/wandoujia/rpc/http/exception/HttpException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 87
    :try_start_2
    move-object v0, p1

    check-cast v0, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;->getContentProcessor()Lcom/wandoujia/rpc/http/processor/Processor;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/wandoujia/rpc/http/processor/Processor;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 89
    iget-object v6, p0, Lcom/wandoujia/rpc/http/client/DataClientCache;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/wandoujia/rpc/http/client/DataClientCache$1;

    invoke-direct {v7, p0, v3, p1, v5}, Lcom/wandoujia/rpc/http/client/DataClientCache$1;-><init>(Lcom/wandoujia/rpc/http/client/DataClientCache;Ljava/lang/String;Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Lcom/wandoujia/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v2

    .line 96
    goto :goto_0

    .line 82
    :catch_1
    move-exception v2

    .line 83
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 105
    :cond_2
    invoke-super {p0, p1}, Lcom/wandoujia/rpc/http/client/DataClient;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_0

    .line 98
    :catch_3
    move-exception v2

    goto :goto_0

    .line 67
    :catch_4
    move-exception v2

    goto :goto_1

    :cond_3
    move-object v3, v4

    goto :goto_1
.end method

.method public executeByCache(Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;)Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "M:",
            "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
            "<*TT;>;:",
            "Lcom/wandoujia/rpc/http/cache/Cacheable",
            "<TT;>;>(TM;)",
            "Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p1

    check-cast v0, Lcom/wandoujia/rpc/http/cache/Cacheable;

    invoke-interface {v0}, Lcom/wandoujia/rpc/http/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/wandoujia/rpc/http/client/DataClientCache;->cache:Lcom/wandoujia/rpc/http/cache/DataCache;

    invoke-interface {v1, v0}, Lcom/wandoujia/rpc/http/cache/DataCache;->get(Ljava/lang/String;)Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_1

    .line 123
    :try_start_0
    invoke-virtual {p1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;->getContentProcessor()Lcom/wandoujia/rpc/http/processor/Processor;

    move-result-object v0

    invoke-virtual {v2}, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wandoujia/rpc/http/processor/Processor;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 124
    if-eqz v3, :cond_1

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2}, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;->getLastModificationTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-virtual {v2}, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;->getTimeout()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 127
    :goto_0
    new-instance v0, Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult;

    invoke-virtual {v2}, Lcom/wandoujia/rpc/http/cache/CacheItemWrapper;->getLastModificationTime()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5, v1}, Lcom/wandoujia/rpc/http/client/DataClientCache$CacheResult;-><init>(Ljava/lang/Object;JZ)V
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_1
    return-object v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 130
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public executeByNetwork(Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "M:",
            "Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate",
            "<*TT;>;:",
            "Lcom/wandoujia/rpc/http/cache/Cacheable",
            "<TT;>;>(TM;)TT;"
        }
    .end annotation

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/wandoujia/rpc/http/client/DataClientCache;->isWorking:Z

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The client has been shut down."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 152
    check-cast v0, Lcom/wandoujia/rpc/http/cache/Cacheable;

    invoke-interface {v0}, Lcom/wandoujia/rpc/http/cache/Cacheable;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {p1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;->getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/wandoujia/rpc/http/client/DataClient;->executeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 157
    :try_start_0
    new-instance v2, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;

    invoke-direct {v2}, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;-><init>()V

    invoke-virtual {v2, v0}, Lcom/wandoujia/rpc/http/processor/GZipHttpResponseProcessor;->process(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/wandoujia/rpc/http/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 163
    :try_start_1
    invoke-virtual {p1}, Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;->getContentProcessor()Lcom/wandoujia/rpc/http/processor/Processor;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/wandoujia/rpc/http/processor/Processor;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    iget-object v3, p0, Lcom/wandoujia/rpc/http/client/DataClientCache;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/wandoujia/rpc/http/client/DataClientCache$2;

    invoke-direct {v4, p0, v1, p1, v2}, Lcom/wandoujia/rpc/http/client/DataClientCache$2;-><init>(Lcom/wandoujia/rpc/http/client/DataClientCache;Ljava/lang/String;Lcom/wandoujia/rpc/http/delegate/GZipHttpDelegate;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lcom/wandoujia/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 175
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 173
    :catch_2
    move-exception v0

    goto :goto_1
.end method
