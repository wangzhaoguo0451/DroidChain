.class Lcom/wandoujia/p4/pay/PayImpl$12;
.super Ljava/lang/Object;
.source "PayImpl.java"

# interfaces
.implements Lagt;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/PayImpl;

.field final synthetic val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/CallBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/wandoujia/p4/pay/PayImpl$12;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/PayImpl$12;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 3
    .parameter

    .prologue
    .line 647
    const-string v0, "PayImpl"

    invoke-static {v0, p1}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 648
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$12;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$12;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/CallBack;->onError(ILjava/lang/String;)V

    .line 650
    :cond_0
    return-void
.end method
