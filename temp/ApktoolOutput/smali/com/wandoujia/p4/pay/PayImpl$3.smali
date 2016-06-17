.class Lcom/wandoujia/p4/pay/PayImpl$3;
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
    .line 336
    iput-object p1, p0, Lcom/wandoujia/p4/pay/PayImpl$3;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/PayImpl$3;->val$callback:Lagu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/PayImpl$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4
    .parameter

    .prologue
    .line 340
    :try_start_0
    const-string v0, "onRes"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 342
    const-string v1, "result"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v1, Lcom/wandoujia/p4/pay/model/RechargePaySet;

    invoke-direct {v1}, Lcom/wandoujia/p4/pay/model/RechargePaySet;-><init>()V

    .line 344
    const-string v2, "needPassword"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/pay/model/RechargePaySet;->needPassword:Ljava/lang/Boolean;

    .line 345
    const-string v2, "chargeInfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/wandoujia/p4/pay/model/RechargePaySet;->rechargeInfo:Ljava/lang/String;

    .line 346
    const-string v2, "chargeOrderId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v1, Lcom/wandoujia/p4/pay/model/RechargePaySet;->rechargeOrderId:Ljava/lang/Long;

    .line 347
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$3;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    #getter for: Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/PayImpl;->access$000(Lcom/wandoujia/p4/pay/PayImpl;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    iget-object v2, v1, Lcom/wandoujia/p4/pay/model/RechargePaySet;->rechargeOrderId:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setLinkOrderId(Ljava/lang/Long;)V

    .line 348
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$3;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    #getter for: Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/PayImpl;->access$000(Lcom/wandoujia/p4/pay/PayImpl;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v0

    iget-object v2, v1, Lcom/wandoujia/p4/pay/model/RechargePaySet;->rechargeInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->setRechargeInfo(Ljava/lang/String;)V

    .line 349
    iget-object v0, v1, Lcom/wandoujia/p4/pay/model/RechargePaySet;->needPassword:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$3;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    #getter for: Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/PayImpl;->access$000(Lcom/wandoujia/p4/pay/PayImpl;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setNeedPassword(Z)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$3;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    #getter for: Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/PayImpl;->access$000(Lcom/wandoujia/p4/pay/PayImpl;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    iget-object v2, p0, Lcom/wandoujia/p4/pay/PayImpl$3;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    #getter for: Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v2}, Lcom/wandoujia/p4/pay/PayImpl;->access$000(Lcom/wandoujia/p4/pay/PayImpl;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->getOrder()Lcom/wandoujia/p4/pay/model/WandouOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setOrder(Lcom/wandoujia/p4/pay/model/WandouOrder;)V

    .line 353
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$3;->val$callback:Lagu;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$3;->val$callback:Lagu;

    invoke-interface {v0, v1}, Lagu;->onResponse(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_1
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    const-string v1, "getWithMD5"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
