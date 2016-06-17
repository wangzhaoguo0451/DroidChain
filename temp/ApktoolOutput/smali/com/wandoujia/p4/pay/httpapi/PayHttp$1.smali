.class Lcom/wandoujia/p4/pay/httpapi/PayHttp$1;
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
    .line 100
    iput-object p1, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp$1;->this$0:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp$1;->val$callback:Lagu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/httpapi/PayHttp$1;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp$1;->val$callback:Lagu;

    invoke-interface {v0, p1}, Lagu;->onResponse(Ljava/lang/Object;)V

    .line 108
    return-void
.end method
