.class final Lcom/wandoujia/rpc/http/client/DataClient$4;
.super Ljava/lang/Object;
.source "DataClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/wandoujia/rpc/http/callback/Callback;

.field final synthetic val$e:Ljava/util/concurrent/ExecutionException;


# direct methods
.method constructor <init>(Lcom/wandoujia/rpc/http/callback/Callback;Ljava/util/concurrent/ExecutionException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/wandoujia/rpc/http/client/DataClient$4;->val$callback:Lcom/wandoujia/rpc/http/callback/Callback;

    iput-object p2, p0, Lcom/wandoujia/rpc/http/client/DataClient$4;->val$e:Ljava/util/concurrent/ExecutionException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient$4;->val$callback:Lcom/wandoujia/rpc/http/callback/Callback;

    iget-object v1, p0, Lcom/wandoujia/rpc/http/client/DataClient$4;->val$e:Ljava/util/concurrent/ExecutionException;

    invoke-interface {v0, v1}, Lcom/wandoujia/rpc/http/callback/Callback;->onError(Ljava/lang/Exception;)V

    .line 188
    return-void
.end method
