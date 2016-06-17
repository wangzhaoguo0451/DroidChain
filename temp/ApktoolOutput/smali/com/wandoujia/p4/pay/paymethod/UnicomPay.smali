.class public Lcom/wandoujia/p4/pay/paymethod/UnicomPay;
.super Ljava/lang/Object;
.source "UnicomPay.java"


# static fields
.field private static appId:Ljava/lang/String;

.field private static channel:Ljava/lang/String;

.field private static company:Ljava/lang/String;

.field private static cpCode:Ljava/lang/String;

.field private static cpId:Ljava/lang/String;

.field private static game:Ljava/lang/String;

.field private static payKey:Ljava/lang/String;

.field private static telephone:Ljava/lang/String;


# instance fields
.field private callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "90107922164"

    sput-object v0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->cpCode:Ljava/lang/String;

    .line 23
    const-string v0, "86008955"

    sput-object v0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->cpId:Ljava/lang/String;

    .line 24
    const-string v0, "9010792216420140226175549009300"

    sput-object v0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->appId:Ljava/lang/String;

    .line 25
    const-string v0, "263d532e490446067500"

    sput-object v0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->payKey:Ljava/lang/String;

    .line 26
    const-string v0, "\u8c4c\u8c46\u835a"

    sput-object v0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->company:Ljava/lang/String;

    .line 27
    const-string v0, "4006528705"

    sput-object v0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->telephone:Ljava/lang/String;

    .line 28
    const-string v0, "\u8c4c\u8c46\u835a"

    sput-object v0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->game:Ljava/lang/String;

    .line 29
    const-string v0, "00018692"

    sput-object v0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->channel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay$1;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/pay/paymethod/UnicomPay$1;-><init>(Lcom/wandoujia/p4/pay/paymethod/UnicomPay;)V

    iput-object v0, p0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/wandoujia/p4/pay/paymethod/UnicomPay;)Lcom/wandoujia/p4/pay/model/PayCallBack;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    return-object v0
.end method


# virtual methods
.method public pay(Landroid/app/Activity;Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p4, p0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->callBack:Lcom/wandoujia/p4/pay/model/PayCallBack;

    .line 36
    new-instance v0, Lcom/unipay/beans/GameBaseBean;

    sget-object v1, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->appId:Ljava/lang/String;

    sget-object v2, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->cpCode:Ljava/lang/String;

    sget-object v3, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->cpId:Ljava/lang/String;

    sget-object v4, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->company:Ljava/lang/String;

    sget-object v5, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->telephone:Ljava/lang/String;

    sget-object v6, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->game:Ljava/lang/String;

    sget-object v8, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->channel:Ljava/lang/String;

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/unipay/beans/GameBaseBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :try_start_0
    const-string v1, "UnicomPay"

    invoke-virtual {p2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getRehargeInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/p4/pay/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/wandoujia/p4/pay/model/WandouOrder;->getRehargeInfo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v4, Lcom/unipay/beans/PayValueBean;

    const-string v2, "feeId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "feeName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fee"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "orderId"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v3, v5, v1}, Lcom/unipay/beans/PayValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->a()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v1

    sget-object v5, Lcom/unipay/unipay_sdk/UniPay$payType;->VAC:Lcom/unipay/unipay_sdk/UniPay$payType;

    iget-object v6, p0, Lcom/wandoujia/p4/pay/paymethod/UnicomPay;->mHandler:Landroid/os/Handler;

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/unipay/unipay_sdk/UniPay;->a(Landroid/content/Context;Lcom/unipay/beans/GameBaseBean;Lcom/unipay/beans/PayValueBean;Lcom/unipay/unipay_sdk/UniPay$payType;Landroid/os/Handler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method
