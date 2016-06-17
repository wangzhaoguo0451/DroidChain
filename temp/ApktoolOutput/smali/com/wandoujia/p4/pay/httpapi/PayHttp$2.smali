.class Lcom/wandoujia/p4/pay/httpapi/PayHttp$2;
.super Ljava/lang/Object;
.source "PayHttp.java"

# interfaces
.implements Lagt;


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

.field final synthetic val$errorListener:Lagt;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/pay/httpapi/PayHttp;Lagt;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp$2;->this$0:Lcom/wandoujia/p4/pay/httpapi/PayHttp;

    iput-object p2, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp$2;->val$errorListener:Lagt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/wandoujia/p4/pay/httpapi/PayHttp$2;->val$errorListener:Lagt;

    invoke-interface {v0, p1}, Lagt;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 114
    return-void
.end method
