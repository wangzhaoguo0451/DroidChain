.class Lcom/wandoujia/p4/pay/PayImpl$1;
.super Ljava/lang/Object;
.source "PayImpl.java"

# interfaces
.implements Lagu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lagu",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/PayImpl;

.field final synthetic val$callback:Lagu;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/PayImpl;Lagu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/wandoujia/p4/pay/PayImpl$1;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/PayImpl$1;->val$callback:Lagu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/PayImpl$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 6
    .parameter

    .prologue
    .line 234
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :try_start_1
    const-string v1, "content"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "order"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 237
    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl$1;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    #getter for: Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/PayImpl;->access$000(Lcom/wandoujia/p4/pay/PayImpl;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    .line 238
    const-string v3, "orderId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/pay/model/WandouOrder;->setOrderId(Ljava/lang/Long;)V

    .line 239
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl$1;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    #getter for: Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/PayImpl;->access$000(Lcom/wandoujia/p4/pay/PayImpl;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setOrder(Lcom/wandoujia/p4/pay/model/WandouOrder;)V

    .line 240
    const-string v1, "account"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl$1;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    #getter for: Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/PayImpl;->access$000(Lcom/wandoujia/p4/pay/PayImpl;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    const-string v3, "balance"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setBalance(Ljava/lang/Long;)V

    .line 242
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl$1;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    #getter for: Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/PayImpl;->access$000(Lcom/wandoujia/p4/pay/PayImpl;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    const-string v2, "bonusMoney"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setBonusMoney(Ljava/lang/Long;)V

    .line 243
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl$1;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    #getter for: Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/PayImpl;->access$000(Lcom/wandoujia/p4/pay/PayImpl;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    const-string v2, "payMethod"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setPayMethodList(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl$1;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    #getter for: Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v1}, Lcom/wandoujia/p4/pay/PayImpl;->access$000(Lcom/wandoujia/p4/pay/PayImpl;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v1

    const-string v2, "alipayOrderIdPrefix"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setOrderIdPrefix(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    :goto_0
    invoke-static {}, Lcom/wandoujia/p4/pay/utils/LogEvent;->createOrder()V

    .line 250
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl$1;->val$callback:Lagu;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl$1;->val$callback:Lagu;

    invoke-interface {v1, v0}, Lagu;->onResponse(Ljava/lang/Object;)V

    .line 253
    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v0, p1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method
