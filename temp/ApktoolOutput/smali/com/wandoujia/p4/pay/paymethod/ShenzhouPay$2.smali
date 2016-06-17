.class Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$2;
.super Ljava/lang/Object;
.source "ShenzhouPay.java"

# interfaces
.implements Lagt;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;

.field final synthetic val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$2;->this$0:Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$2;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    const-string v0, "shenzhou"

    invoke-static {v0, p1}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    const-string v0, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 37
    iget-object v1, p0, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$2;->val$callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onError(ILjava/lang/String;)V

    .line 38
    return-void
.end method
