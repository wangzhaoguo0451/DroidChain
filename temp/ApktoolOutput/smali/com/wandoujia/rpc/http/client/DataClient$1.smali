.class Lcom/wandoujia/rpc/http/client/DataClient$1;
.super Ljava/lang/Object;
.source "DataClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wandoujia/rpc/http/client/DataClient;

.field final synthetic val$callback:Lcom/wandoujia/rpc/http/callback/Callback;

.field final synthetic val$delegate:Lcom/wandoujia/rpc/http/delegate/ApiDelegate;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/wandoujia/rpc/http/client/DataClient;Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/wandoujia/rpc/http/client/DataClient$1;->this$0:Lcom/wandoujia/rpc/http/client/DataClient;

    iput-object p2, p0, Lcom/wandoujia/rpc/http/client/DataClient$1;->val$delegate:Lcom/wandoujia/rpc/http/delegate/ApiDelegate;

    iput-object p3, p0, Lcom/wandoujia/rpc/http/client/DataClient$1;->val$callback:Lcom/wandoujia/rpc/http/callback/Callback;

    iput-object p4, p0, Lcom/wandoujia/rpc/http/client/DataClient$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient$1;->this$0:Lcom/wandoujia/rpc/http/client/DataClient;

    iget-object v2, p0, Lcom/wandoujia/rpc/http/client/DataClient$1;->val$delegate:Lcom/wandoujia/rpc/http/delegate/ApiDelegate;

    invoke-virtual {v0, v2}, Lcom/wandoujia/rpc/http/client/DataClient;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :try_start_1
    iget-object v1, p0, Lcom/wandoujia/rpc/http/client/DataClient$1;->val$callback:Lcom/wandoujia/rpc/http/callback/Callback;

    iget-object v2, p0, Lcom/wandoujia/rpc/http/client/DataClient$1;->val$handler:Landroid/os/Handler;

    #calls: Lcom/wandoujia/rpc/http/client/DataClient;->onSuccess(Lcom/wandoujia/rpc/http/callback/Callback;Ljava/lang/Object;Landroid/os/Handler;)V
    invoke-static {v1, v0, v2}, Lcom/wandoujia/rpc/http/client/DataClient;->access$000(Lcom/wandoujia/rpc/http/callback/Callback;Ljava/lang/Object;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 88
    :goto_1
    iget-object v2, p0, Lcom/wandoujia/rpc/http/client/DataClient$1;->val$callback:Lcom/wandoujia/rpc/http/callback/Callback;

    iget-object v3, p0, Lcom/wandoujia/rpc/http/client/DataClient$1;->val$handler:Landroid/os/Handler;

    #calls: Lcom/wandoujia/rpc/http/client/DataClient;->onError(Lcom/wandoujia/rpc/http/callback/Callback;Ljava/util/concurrent/ExecutionException;Landroid/os/Handler;)V
    invoke-static {v2, v1, v3}, Lcom/wandoujia/rpc/http/client/DataClient;->access$100(Lcom/wandoujia/rpc/http/callback/Callback;Ljava/util/concurrent/ExecutionException;Landroid/os/Handler;)V

    goto :goto_0

    .line 87
    :catch_1
    move-exception v1

    goto :goto_1
.end method
