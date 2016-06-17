.class public Lcom/wandoujia/p4/pay/utils/PaymentUtil;
.super Ljava/lang/Object;
.source "PaymentUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBonus(Lcom/wandoujia/rpc/http/callback/Callback;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/rpc/http/callback/Callback",
            "<",
            "Lcom/wandoujia/p4/model/PayParams;",
            "Ljava/util/concurrent/ExecutionException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    :try_start_0
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/httpapi/GetPayParamsDelegate;->getBonusContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 28
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 32
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/p4/pay/httpapi/GetPayParamsDelegate;

    const-string v3, "https://pay.wandoujia.com/pay/bonus/query?"

    invoke-direct {v2, v3, v0}, Lcom/wandoujia/p4/pay/httpapi/GetPayParamsDelegate;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p0}, Lfvu;->executeAsync(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;Lcom/wandoujia/rpc/http/callback/Callback;)Ljava/util/concurrent/Future;

    .line 35
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
