.class Lcom/wandoujia/p4/pay/paymethod/BalancePay$1;
.super Ljava/lang/Object;
.source "BalancePay.java"

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
.field final synthetic this$0:Lcom/wandoujia/p4/pay/paymethod/BalancePay;

.field final synthetic val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/paymethod/BalancePay;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/wandoujia/p4/pay/paymethod/BalancePay$1;->this$0:Lcom/wandoujia/p4/pay/paymethod/BalancePay;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/paymethod/BalancePay$1;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/paymethod/BalancePay$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    .line 23
    invoke-static {}, Lcom/wandoujia/p4/pay/paymethod/BalancePay;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, "resultStatus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    const-string v1, "message"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    const-string v2, "SUCCESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/wandoujia/p4/pay/paymethod/BalancePay$1;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onSuccess()V

    .line 31
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/paymethod/BalancePay$1;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method
