.class public interface abstract Lcom/wandoujia/rpc/http/client/DataApi;
.super Ljava/lang/Object;
.source "DataApi.java"


# virtual methods
.method public abstract execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;
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
.end method

.method public abstract executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;Landroid/os/Handler;)Ljava/util/concurrent/Future;
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
.end method

.method public abstract setProxyHttpHost(Lorg/apache/http/HttpHost;)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract start()V
.end method
