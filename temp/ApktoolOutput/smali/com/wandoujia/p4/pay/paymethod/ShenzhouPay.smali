.class public Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;
.super Ljava/lang/Object;
.source "ShenzhouPay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pay(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    new-instance v6, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$1;

    invoke-direct {v6, p0, p7}, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$1;-><init>(Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    new-instance v7, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$2;

    invoke-direct {v7, p0, p7}, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$2;-><init>(Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v7}, Lcom/wandoujia/p4/pay/PayImpl;->shenzhouPay(Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lagu;Lagt;)V

    .line 40
    return-void
.end method

.method public queryStatus(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/WandouOrder;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$3;

    invoke-direct {v0, p0, p3}, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$3;-><init>(Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    new-instance v1, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$4;

    invoke-direct {v1, p0, p3}, Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay$4;-><init>(Lcom/wandoujia/p4/pay/paymethod/ShenzhouPay;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    invoke-virtual {p1, p2, v0, v1}, Lcom/wandoujia/p4/pay/PayImpl;->shenzhouStatus(Lcom/wandoujia/p4/pay/model/WandouOrder;Lagu;Lagt;)V

    .line 63
    return-void
.end method
