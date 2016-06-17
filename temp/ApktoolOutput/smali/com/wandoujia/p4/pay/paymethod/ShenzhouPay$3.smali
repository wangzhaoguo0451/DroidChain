.class Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$3;
.super Ljava/lang/Object;
.source "ShenzhouPay.java"

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
.field final synthetic this$0:Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;

.field final synthetic val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$3;->this$0:Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$3;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "PROCESSING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$3;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onProcessing()V

    .line 54
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$3;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    invoke-interface {v0}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onSuccess()V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$3;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    const-string v1, "message"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onPending(Ljava/lang/String;)V

    goto :goto_0
.end method
