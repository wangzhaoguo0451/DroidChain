.class public Lcom/wandoujia/p4/pay/paymethod/BalancePay;
.super Ljava/lang/Object;
.source "BalancePay.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/wandoujia/p4/pay/paymethod/BalancePay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/p4/pay/paymethod/BalancePay;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/wandoujia/p4/pay/paymethod/BalancePay;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public pay(Lcom/wandoujia/p4/pay/PayImpl;Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;Ljava/lang/Long;Lcom/wandoujia/p4/pay/model/PayCallBack;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    new-instance v4, Lcom/wandoujia/p4/pay/paymethod/BalancePay$1;

    invoke-direct {v4, p0, p5}, Lcom/wandoujia/p4/pay/paymethod/BalancePay$1;-><init>(Lcom/wandoujia/p4/pay/paymethod/BalancePay;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    new-instance v5, Lcom/wandoujia/p4/pay/paymethod/BalancePay$2;

    invoke-direct {v5, p0, p5}, Lcom/wandoujia/p4/pay/paymethod/BalancePay$2;-><init>(Lcom/wandoujia/p4/pay/paymethod/BalancePay;Lcom/wandoujia/p4/pay/model/PayCallBack;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/wandoujia/p4/pay/PayImpl;->balancePay(Lcom/wandoujia/p4/pay/model/WandouOrder;Ljava/lang/String;Ljava/lang/Long;Lagu;Lagt;)V

    .line 40
    return-void
.end method
