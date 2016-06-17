.class Lcom/wandoujia/rpc/http/client/DataClient$2;
.super Ljava/lang/Object;
.source "DataClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/rpc/http/client/DataClient;


# direct methods
.method constructor <init>(Lcom/wandoujia/rpc/http/client/DataClient;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/wandoujia/rpc/http/client/DataClient$2;->this$0:Lcom/wandoujia/rpc/http/client/DataClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient$2;->this$0:Lcom/wandoujia/rpc/http/client/DataClient;

    #getter for: Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v0}, Lcom/wandoujia/rpc/http/client/DataClient;->access$200(Lcom/wandoujia/rpc/http/client/DataClient;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 108
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient$2;->this$0:Lcom/wandoujia/rpc/http/client/DataClient;

    #getter for: Lcom/wandoujia/rpc/http/client/DataClient;->httpClient:Lorg/apache/http/client/HttpClient;
    invoke-static {v0}, Lcom/wandoujia/rpc/http/client/DataClient;->access$300(Lcom/wandoujia/rpc/http/client/DataClient;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient$2;->this$0:Lcom/wandoujia/rpc/http/client/DataClient;

    #getter for: Lcom/wandoujia/rpc/http/client/DataClient;->httpClient:Lorg/apache/http/client/HttpClient;
    invoke-static {v0}, Lcom/wandoujia/rpc/http/client/DataClient;->access$300(Lcom/wandoujia/rpc/http/client/DataClient;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient$2;->this$0:Lcom/wandoujia/rpc/http/client/DataClient;

    #getter for: Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v0}, Lcom/wandoujia/rpc/http/client/DataClient;->access$200(Lcom/wandoujia/rpc/http/client/DataClient;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 113
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient$2;->this$0:Lcom/wandoujia/rpc/http/client/DataClient;

    #getter for: Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v0}, Lcom/wandoujia/rpc/http/client/DataClient;->access$200(Lcom/wandoujia/rpc/http/client/DataClient;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 114
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient$2;->this$0:Lcom/wandoujia/rpc/http/client/DataClient;

    const/4 v1, 0x0

    #setter for: Lcom/wandoujia/rpc/http/client/DataClient;->httpClient:Lorg/apache/http/client/HttpClient;
    invoke-static {v0, v1}, Lcom/wandoujia/rpc/http/client/DataClient;->access$302(Lcom/wandoujia/rpc/http/client/DataClient;Lorg/apache/http/client/HttpClient;)Lorg/apache/http/client/HttpClient;

    .line 115
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient$2;->this$0:Lcom/wandoujia/rpc/http/client/DataClient;

    #getter for: Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v0}, Lcom/wandoujia/rpc/http/client/DataClient;->access$200(Lcom/wandoujia/rpc/http/client/DataClient;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 119
    :goto_1
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient$2;->this$0:Lcom/wandoujia/rpc/http/client/DataClient;

    #getter for: Lcom/wandoujia/rpc/http/client/DataClient;->lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-static {v0}, Lcom/wandoujia/rpc/http/client/DataClient;->access$200(Lcom/wandoujia/rpc/http/client/DataClient;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method
