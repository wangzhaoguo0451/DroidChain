.class public Lcom/wandoujia/rpc/http/client/DataClient;
.super Ljava/lang/Object;
.source "DataClient.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/client/DataApi;


# static fields
.field private static final UI_HANDLER:Landroid/os/Handler;


# instance fields
.field private httpClient:Lorg/apache/http/client/HttpClient;

.field protected isWorking:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private proxyHost:Lorg/apache/http/HttpHost;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/wandoujia/rpc/http/client/DataClient;->UI_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/rpc/http/client/DataClient;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->isWorking:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->proxyHost:Lorg/apache/http/HttpHost;

    .line 43
    iput-object p1, p0, Lcom/wandoujia/rpc/http/client/DataClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 44
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 45
    new-instance v0, Lcom/wandoujia/rpc/http/client/PhoenixHttpClient;

    invoke-direct {v0}, Lcom/wandoujia/rpc/http/client/PhoenixHttpClient;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 46
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/rpc/http/client/DataClient;->proxyHost:Lorg/apache/http/HttpHost;

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 47
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/rpc/http/callback/Callback;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/wandoujia/rpc/http/client/DataClient;->onSuccess(Lcom/wandoujia/rpc/http/callback/Callback;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/wandoujia/rpc/http/callback/Callback;Ljava/util/concurrent/ExecutionException;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/wandoujia/rpc/http/client/DataClient;->onError(Lcom/wandoujia/rpc/http/callback/Callback;Ljava/util/concurrent/ExecutionException;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/wandoujia/rpc/http/client/DataClient;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wandoujia/rpc/http/client/DataClient;)Lorg/apache/http/client/HttpClient;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic access$302(Lcom/wandoujia/rpc/http/client/DataClient;Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/wandoujia/rpc/http/client/DataClient;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object p1
.end method

.method private static onError(Lcom/wandoujia/rpc/http/callback/Callback;Ljava/util/concurrent/ExecutionException;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/wandoujia/rpc/http/callback/Callback",
            "<TT;",
            "Ljava/util/concurrent/ExecutionException;",
            ">;",
            "Ljava/util/concurrent/ExecutionException;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    if-eqz p0, :cond_1

    .line 183
    if-nez p2, :cond_0

    sget-object p2, Lcom/wandoujia/rpc/http/client/DataClient;->UI_HANDLER:Landroid/os/Handler;

    .line 184
    :cond_0
    new-instance v0, Lcom/wandoujia/rpc/http/client/DataClient$4;

    invoke-direct {v0, p0, p1}, Lcom/wandoujia/rpc/http/client/DataClient$4;-><init>(Lcom/wandoujia/rpc/http/callback/Callback;Ljava/util/concurrent/ExecutionException;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_1
    return-void
.end method

.method private static onSuccess(Lcom/wandoujia/rpc/http/callback/Callback;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/wandoujia/rpc/http/callback/Callback",
            "<TT;",
            "Ljava/util/concurrent/ExecutionException;",
            ">;TT;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    if-eqz p0, :cond_1

    .line 170
    if-nez p2, :cond_0

    sget-object p2, Lcom/wandoujia/rpc/http/client/DataClient;->UI_HANDLER:Landroid/os/Handler;

    .line 171
    :cond_0
    new-instance v0, Lcom/wandoujia/rpc/http/client/DataClient$3;

    invoke-direct {v0, p0, p1}, Lcom/wandoujia/rpc/http/client/DataClient$3;-><init>(Lcom/wandoujia/rpc/http/callback/Callback;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    :cond_1
    return-void
.end method


# virtual methods
.method public execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;
    .locals 3
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
    .line 52
    iget-boolean v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->isWorking:Z

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The client has been shut down."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 56
    :cond_0
    invoke-interface {p1}, Lcom/wandoujia/rpc/http/delegate/ApiDelegate;->getHttpRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Request cannot be null, some error happens."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 61
    :cond_1
    invoke-virtual {p0, v0}, Lcom/wandoujia/rpc/http/client/DataClient;->executeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 63
    :try_start_0
    invoke-interface {p1, v0}, Lcom/wandoujia/rpc/http/delegate/ApiDelegate;->processResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/wandoujia/rpc/http/delegate/ApiDelegate",
            "<TT;TE;>;",
            "Lcom/wandoujia/rpc/http/callback/Callback",
            "<TT;",
            "Ljava/util/concurrent/ExecutionException;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/wandoujia/rpc/http/client/DataClient;->executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/wandoujia/rpc/http/delegate/ApiDelegate",
            "<TT;TE;>;",
            "Lcom/wandoujia/rpc/http/callback/Callback",
            "<TT;",
            "Ljava/util/concurrent/ExecutionException;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/wandoujia/rpc/http/client/DataClient$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/wandoujia/rpc/http/client/DataClient$1;-><init>(Lcom/wandoujia/rpc/http/client/DataClient;Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected executeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 2
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 125
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 127
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 128
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/wandoujia/rpc/http/client/PhoenixHttpClient;

    invoke-direct {v0}, Lcom/wandoujia/rpc/http/client/PhoenixHttpClient;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 130
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/rpc/http/client/DataClient;->proxyHost:Lorg/apache/http/HttpHost;

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 133
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 136
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 144
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 145
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    :catch_1
    move-exception v0

    .line 147
    :try_start_2
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 149
    :catch_2
    move-exception v0

    .line 157
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 158
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 159
    :catch_3
    move-exception v0

    .line 160
    :try_start_4
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setProxyHttpHost(Lorg/apache/http/HttpHost;)V
    .locals 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/wandoujia/rpc/http/client/DataClient;->proxyHost:Lorg/apache/http/HttpHost;

    .line 196
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 197
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->httpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/rpc/http/client/DataClient;->proxyHost:Lorg/apache/http/HttpHost;

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 201
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->isWorking:Z

    .line 104
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/wandoujia/rpc/http/client/DataClient$2;

    invoke-direct {v1, p0}, Lcom/wandoujia/rpc/http/client/DataClient$2;-><init>(Lcom/wandoujia/rpc/http/client/DataClient;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/rpc/http/client/DataClient;->isWorking:Z

    .line 99
    return-void
.end method
