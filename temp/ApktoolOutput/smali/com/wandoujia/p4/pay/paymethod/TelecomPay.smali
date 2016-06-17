.class public Lcom/wandoujia/p4/pay/paymethod/TelecomPay;
.super Ljava/lang/Object;
.source "TelecomPay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sendSMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public pay(Landroid/content/Context;Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getRehargeInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v1, "accessNo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sms"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/wandoujia/p4/pay/paymethod/TelecomPay;->sendSMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {p3}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onSuccess()V

    .line 33
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    invoke-interface {p3, v0, v1}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "Telecom"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
