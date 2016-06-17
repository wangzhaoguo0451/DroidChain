.class Lcom/wandoujia/p4/pay/httpapi/PayHttp$3;
.super Ljava/lang/Object;
.source "PayHttp.java"

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
.field final synthetic this$0:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

.field final synthetic val$callback:Lagu;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/httpapi/PayHttp;Lagu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp$3;->this$0:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp$3;->val$callback:Lagu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/httpapi/PayHttp$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp$3;->val$callback:Lagu;

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp$3;->val$callback:Lagu;

    invoke-interface {v1, v0}, Lagu;->onResponse(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v1, "getWithMD5"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
