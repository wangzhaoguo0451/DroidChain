.class Lcom/wandoujia/p4/pay/paymethod/GameCardPay$2;
.super Ljava/lang/Object;
.source "GameCardPay.java"

# interfaces
.implements Lagt;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/paymethod/GameCardPay;

.field final synthetic val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/paymethod/GameCardPay;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/wandoujia/p4/pay/paymethod/GameCardPay$2;->this$0:Lcom/wandoujia/p4/pay/paymethod/GameCardPay;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/paymethod/GameCardPay$2;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wandoujia/p4/pay/paymethod/GameCardPay$2;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onError(ILjava/lang/String;)V

    .line 35
    return-void
.end method
