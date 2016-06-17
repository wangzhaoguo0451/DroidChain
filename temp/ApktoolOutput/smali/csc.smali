.class public final Lcsc;
.super Ljava/lang/Object;
.source "CleanDataClient.java"

# interfaces
.implements Lcom/wandoujia/rpc/http/client/DataApi;


# instance fields
.field private a:Lcom/wandoujia/rpc/http/client/DataClientCache;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lorg/apache/http/HttpHost;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcsc;->b:Z

    .line 31
    iput-object p1, p0, Lcsc;->c:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private declared-synchronized a()Lcom/wandoujia/rpc/http/client/DataClientCache;
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcsc;->a:Lcom/wandoujia/rpc/http/client/DataClientCache;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lcom/wandoujia/rpc/http/client/DataClientCache;

    iget-object v1, p0, Lcsc;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/wandoujia/rpc/http/client/DataClientCache;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcsc;->a:Lcom/wandoujia/rpc/http/client/DataClientCache;

    .line 91
    iget-object v0, p0, Lcsc;->d:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcsc;->a:Lcom/wandoujia/rpc/http/client/DataClientCache;

    iget-object v1, p0, Lcsc;->d:Lorg/apache/http/HttpHost;

    invoke-virtual {v0, v1}, Lcom/wandoujia/rpc/http/client/DataClientCache;->setProxyHttpHost(Lorg/apache/http/HttpHost;)V

    .line 94
    :cond_0
    iget-boolean v0, p0, Lcsc;->b:Z

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcsc;->a:Lcom/wandoujia/rpc/http/client/DataClientCache;

    invoke-virtual {v0}, Lcom/wandoujia/rpc/http/client/DataClientCache;->start()V

    .line 100
    :cond_1
    :goto_0
    iget-object v0, p0, Lcsc;->a:Lcom/wandoujia/rpc/http/client/DataClientCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 97
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcsc;->a:Lcom/wandoujia/rpc/http/client/DataClientCache;

    invoke-virtual {v0}, Lcom/wandoujia/rpc/http/client/DataClientCache;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;
    .locals 1
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
    .line 36
    invoke-direct {p0}, Lcsc;->a()Lcom/wandoujia/rpc/http/client/DataClientCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/rpc/http/client/DataClientCache;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;)Ljava/util/concurrent/Future;
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
    .line 42
    invoke-direct {p0}, Lcsc;->a()Lcom/wandoujia/rpc/http/client/DataClientCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/wandoujia/rpc/http/client/DataClientCache;->executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 1
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
    .line 48
    invoke-direct {p0}, Lcsc;->a()Lcom/wandoujia/rpc/http/client/DataClientCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/wandoujia/rpc/http/client/DataClientCache;->executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final setProxyHttpHost(Lorg/apache/http/HttpHost;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcsc;->a:Lcom/wandoujia/rpc/http/client/DataClientCache;

    if-nez v0, :cond_0

    .line 81
    iput-object p1, p0, Lcsc;->d:Lorg/apache/http/HttpHost;

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcsc;->a:Lcom/wandoujia/rpc/http/client/DataClientCache;

    invoke-virtual {v0, p1}, Lcom/wandoujia/rpc/http/client/DataClientCache;->setProxyHttpHost(Lorg/apache/http/HttpHost;)V

    goto :goto_0
.end method

.method public final declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcsc;->a:Lcom/wandoujia/rpc/http/client/DataClientCache;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcsc;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcsc;->a:Lcom/wandoujia/rpc/http/client/DataClientCache;

    invoke-virtual {v0}, Lcom/wandoujia/rpc/http/client/DataClientCache;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized start()V
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcsc;->a:Lcom/wandoujia/rpc/http/client/DataClientCache;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcsc;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcsc;->a:Lcom/wandoujia/rpc/http/client/DataClientCache;

    invoke-virtual {v0}, Lcom/wandoujia/rpc/http/client/DataClientCache;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
