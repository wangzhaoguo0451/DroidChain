.class public Lcom/wandoujia/p4/pay/paymethod/GameCardPay;
.super Ljava/lang/Object;
.source "GameCardPay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pay(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    new-instance v6, Lcom/wandoujia/p4/pay/paymethod/GameCardPay$1;

    invoke-direct {v6, p0, p7}, Lcom/wandoujia/p4/pay/paymethod/GameCardPay$1;-><init>(Lcom/wandoujia/p4/pay/paymethod/GameCardPay;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    new-instance v7, Lcom/wandoujia/p4/pay/paymethod/GameCardPay$2;

    invoke-direct {v7, p0, p7}, Lcom/wandoujia/p4/pay/paymethod/GameCardPay$2;-><init>(Lcom/wandoujia/p4/pay/paymethod/GameCardPay;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p6

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/wandoujia/p4/pay/PayImpl;->gameCardPay(Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lagu;Lagt;)V

    .line 38
    return-void
.end method

.method public queryStatus(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;

    invoke-direct {v0}, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;->queryStatus(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    .line 42
    return-void
.end method
