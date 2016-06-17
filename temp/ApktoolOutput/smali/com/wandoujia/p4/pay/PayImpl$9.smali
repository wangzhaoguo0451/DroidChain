.class Lcom/wandoujia/p4/pay/PayImpl$9;
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
    .line 598
    iput-object p1, p0, Lcom/wandoujia/p4/pay/PayImpl$9;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/PayImpl$9;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/PayImpl$9;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    .line 601
    new-instance v0, Lcom/wandoujia/p4/pay/model/OrderResult;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/model/OrderResult;-><init>()V

    .line 603
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 604
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/wandoujia/p4/pay/model/OrderResult;->status:Ljava/lang/Integer;

    .line 605
    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/wandoujia/p4/pay/model/OrderResult;->message:Ljava/lang/String;

    .line 606
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/p4/pay/model/OrderResult;->title:Ljava/lang/String;

    .line 607
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl$9;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    invoke-interface {v1, v0}, Lcom/wandoujia/p4/pay/model/CallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :goto_0
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    const-string v1, "PayImpl"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    iget-object v1, p0, Lcom/wandoujia/p4/pay/PayImpl$9;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/wandoujia/p4/pay/model/CallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method
