.class Lcom/wandoujia/p4/pay/PayImpl$13;
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

.field final synthetic val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/CallBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/wandoujia/p4/pay/PayImpl$13;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/PayImpl$13;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/PayImpl$13;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    .line 670
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 671
    const-string v1, "unionPayId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    const-string v1, "tn"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl$13;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl$13;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    invoke-interface {v1, v0}, Lcom/wandoujia/p4/pay/model/CallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 676
    const-string v1, "PayImpl"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 677
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl$13;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl$13;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/wandoujia/p4/pay/model/CallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method
