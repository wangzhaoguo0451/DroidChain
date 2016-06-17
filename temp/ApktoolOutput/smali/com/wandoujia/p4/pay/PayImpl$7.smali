.class Lcom/wandoujia/p4/pay/PayImpl$7;
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
    .line 567
    iput-object p1, p0, Lcom/wandoujia/p4/pay/PayImpl$7;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/PayImpl$7;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/PayImpl$7;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    .line 570
    if-eqz p1, :cond_0

    const-string v0, "SUCCESS"

    const-string v1, "resultStatus"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/pay/model/PayChannel;->load(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$7;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    #getter for: Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/PayImpl;->access$000(Lcom/wandoujia/p4/pay/PayImpl;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayChannel;->methodList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setPayMethodList(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$7;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wandoujia/p4/pay/model/CallBack;->onSuccess(Ljava/lang/Object;)V

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$7;->val$callBack:Lcom/wandoujia/p4/pay/model/CallBack;

    const/4 v1, 0x1

    const-string v2, "message"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/CallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method
