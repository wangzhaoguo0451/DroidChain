.class Lcom/wandoujia/p4/pay/paymethod/GameCardPay$1;
.super Ljava/lang/Object;
.source "GameCardPay.java"

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
.field final synthetic this$0:Lcom/wandoujia/p4/pay/paymethod/GameCardPay;

.field final synthetic val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/paymethod/GameCardPay;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/wandoujia/p4/pay/paymethod/GameCardPay$1;->this$0:Lcom/wandoujia/p4/pay/paymethod/GameCardPay;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/paymethod/GameCardPay$1;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/paymethod/GameCardPay$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    .line 22
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "PROCESSING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/wandoujia/p4/pay/paymethod/GameCardPay$1;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onProcessing()V

    .line 30
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/wandoujia/p4/pay/paymethod/GameCardPay$1;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onSuccess()V

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/paymethod/GameCardPay$1;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    const/4 v1, 0x0

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method
