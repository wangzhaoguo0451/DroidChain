.class public Lcom/wandoujia/p4/pay/paymethod/Alipay;
.super Ljava/lang/Object;
.source "Alipay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/content/Intent;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 39
    const-string v0, "resultStatus"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, "memo"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    const-string v2, "9000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-interface {p2}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onSuccess()V

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v0, v1}, Lcom/wandoujia/p4/pay/model/PayCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public pay(Landroid/app/Activity;Lcom/wandoujia/p4/pay/model/WandouOrder;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-virtual {p2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getShowMoney()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getRehargeInfo()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/p4/pay/PayImpl;->ALIPAY_FAST_CALLBACK_URL:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/wandoujia/p4/pay/paymethod/alipay/AlipayUtil;->getOrderInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {}, Lcom/wandoujia/p4/pay/paymethod/alipay/AlipayUtil;->getSignType()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0, v1}, Lcom/wandoujia/p4/pay/paymethod/alipay/AlipayUtil;->sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 30
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sign=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/p4/pay/paymethod/alipay/AlipayUtil;->getSignType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "alipay"

    invoke-static {v1, v0}, Lcom/wandoujia/p4/pay/utils/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;->getInstance(Landroid/app/Activity;)Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;->pay(Ljava/lang/String;I)V

    .line 34
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
