.class Lcom/wandoujia/rpc/http/client/DataClientCache$1;
.super Ljava/lang/Object;
.source "DataClientCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/rpc/http/client/DataClientCache;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$delegate:Lcom/wandoujia/rpc/http/delegate/ApiDelegate;

.field final synthetic val$finalKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wandoujia/rpc/http/client/DataClientCache;Ljava/lang/String;Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/wandoujia/rpc/http/client/DataClientCache$1;->this$0:Lcom/wandoujia/rpc/http/client/DataClientCache;

    iput-object p2, p0, Lcom/wandoujia/rpc/http/client/DataClientCache$1;->val$finalKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/wandoujia/rpc/http/client/DataClientCache$1;->val$delegate:Lcom/wandoujia/rpc/http/delegate/ApiDelegate;

    iput-object p4, p0, Lcom/wandoujia/rpc/http/client/DataClientCache$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/wandoujia/rpc/http/client/DataClientCache$1;->this$0:Lcom/wandoujia/rpc/http/client/DataClientCache;

    iget-object v2, p0, Lcom/wandoujia/rpc/http/client/DataClientCache$1;->val$finalKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/wandoujia/rpc/http/client/DataClientCache$1;->val$delegate:Lcom/wandoujia/rpc/http/delegate/ApiDelegate;

    check-cast v0, Lcom/wandoujia/rpc/http/cache/Cacheable;

    iget-object v3, p0, Lcom/wandoujia/rpc/http/client/DataClientCache$1;->val$content:Ljava/lang/String;

    #calls: Lcom/wandoujia/rpc/http/client/DataClientCache;->putItemToCache(Ljava/lang/String;Lcom/wandoujia/rpc/http/cache/Cacheable;Ljava/lang/String;)V
    invoke-static {v1, v2, v0, v3}, Lcom/wandoujia/rpc/http/client/DataClientCache;->access$000(Lcom/wandoujia/rpc/http/client/DataClientCache;Ljava/lang/String;Lcom/wandoujia/rpc/http/cache/Cacheable;Ljava/lang/String;)V

    .line 94
    return-void
.end method
