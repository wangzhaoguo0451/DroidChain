.class public Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;
.super Ljava/lang/Object;
.source "NativeAliPay.java"


# static fields
.field private static instance:Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;


# instance fields
.field private context:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;->context:Landroid/app/Activity;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;->updateReceiver(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;
    .locals 2
    .parameter

    .prologue
    .line 18
    const-class v1, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;->instance:Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;->instance:Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;

    .line 24
    :goto_0
    sget-object v0, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;->instance:Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :cond_0
    :try_start_1
    sget-object v0, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;->instance:Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;

    invoke-direct {v0, p0}, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;->setActivity(Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;->context:Landroid/app/Activity;

    .line 38
    iput-object p1, p0, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;->context:Landroid/app/Activity;

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;->updateReceiver(Landroid/app/Activity;Landroid/app/Activity;)V

    .line 40
    return-void
.end method

.method private updateReceiver(Landroid/app/Activity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    return-void
.end method


# virtual methods
.method public pay(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    const-string v1, "order_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v1, p0, Lcom/wandoujia/p4/pay/paymethod/alipay/NativeAliPay;->context:Landroid/app/Activity;

    invoke-virtual {v1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 47
    return-void
.end method
