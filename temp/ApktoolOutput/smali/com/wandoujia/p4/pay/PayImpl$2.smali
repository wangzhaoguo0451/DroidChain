.class Lcom/wandoujia/p4/pay/PayImpl$2;
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
    .line 286
    iput-object p1, p0, Lcom/wandoujia/p4/pay/PayImpl$2;->this$0:Lcom/wandoujia/p4/pay/PayImpl;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/PayImpl$2;->val$callback:Lagu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/pay/PayImpl$2;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$2;->val$callback:Lagu;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/wandoujia/p4/pay/PayImpl$2;->val$callback:Lagu;

    invoke-interface {v0, p1}, Lagu;->onResponse(Ljava/lang/Object;)V

    .line 292
    :cond_0
    return-void
.end method
