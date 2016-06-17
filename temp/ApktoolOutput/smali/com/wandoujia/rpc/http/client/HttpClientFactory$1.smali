.class final Lcom/wandoujia/rpc/http/client/HttpClientFactory$1;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$clients:[Lorg/apache/http/client/HttpClient;


# direct methods
.method constructor <init>([Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/wandoujia/rpc/http/client/HttpClientFactory$1;->val$clients:[Lorg/apache/http/client/HttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/HttpClientFactory$1;->val$clients:[Lorg/apache/http/client/HttpClient;

    const/4 v1, 0x0

    new-instance v2, Lcom/wandoujia/rpc/http/client/PhoenixHttpClient;

    invoke-direct {v2}, Lcom/wandoujia/rpc/http/client/PhoenixHttpClient;-><init>()V

    aput-object v2, v0, v1

    .line 85
    iget-object v1, p0, Lcom/wandoujia/rpc/http/client/HttpClientFactory$1;->val$clients:[Lorg/apache/http/client/HttpClient;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/HttpClientFactory$1;->val$clients:[Lorg/apache/http/client/HttpClient;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 87
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
