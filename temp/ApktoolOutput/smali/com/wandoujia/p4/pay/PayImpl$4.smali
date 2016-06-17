.class Lcom/wandoujia/p4/pay/PayImpl$4;
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
    .line 379
    iput-object p1, p0, Lcom/wandoujia/p4/pay/PayImpl$4;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/PayImpl$4;->val$callback:Lagu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/PayImpl$4;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$4;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    #getter for: Lcom/wandoujia/p4/pay/PayImpl;->localStorage:Lcom/wandoujia/p4/pay/storage/LocalStorage;
    invoke-static {v0}, Lcom/wandoujia/p4/pay/PayImpl;->access$000(Lcom/wandoujia/p4/pay/PayImpl;)Lcom/wandoujia/p4/pay/storage/LocalStorage;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/pay/storage/LocalStorage;->setRechargeMoneyListResult(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$4;->val$callback:Lagu;

    invoke-interface {v0, p1}, Lagu;->onResponse(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    const-string v1, "queryCampaignList"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
