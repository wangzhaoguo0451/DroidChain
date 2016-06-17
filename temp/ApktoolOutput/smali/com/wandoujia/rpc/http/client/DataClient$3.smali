.class final Lcom/wandoujia/rpc/http/client/DataClient$3;
.super Ljava/lang/Object;
.source "DataClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/wandoujia/rpc/http/callback/Callback;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/wandoujia/rpc/http/callback/Callback;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/wandoujia/rpc/http/client/DataClient$3;->val$callback:Lcom/wandoujia/rpc/http/callback/Callback;

    iput-object p2, p0, Lcom/wandoujia/rpc/http/client/DataClient$3;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClient$3;->val$callback:Lcom/wandoujia/rpc/http/callback/Callback;

    iget-object v1, p0, Lcom/wandoujia/rpc/http/client/DataClient$3;->val$result:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/wandoujia/rpc/http/callback/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 175
    return-void
.end method
