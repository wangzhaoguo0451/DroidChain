.class public final Lchh;
.super Landroid/os/CountDownTimer;


# instance fields
.field private synthetic a:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method public constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 4

    iput-object p1, p0, Lchh;->a:Lcom/unipay/unipay_sdk/UniPay;

    const-wide/16 v0, 0x7530

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lchh;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lchh;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->i(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lchh;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->j(Lcom/unipay/unipay_sdk/UniPay;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lchh;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->f(Lcom/unipay/unipay_sdk/UniPay;)Lchl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lchh;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->f(Lcom/unipay/unipay_sdk/UniPay;)Lchl;

    move-result-object v0

    invoke-virtual {v0}, Lchl;->cancel()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onTick(J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u79d2\u5012\u8ba1\u65f6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
