.class public Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field public final synthetic a:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.unipay.get_phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->e(Lcom/unipay/unipay_sdk/UniPay;)Lchh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->e(Lcom/unipay/unipay_sdk/UniPay;)Lchh;

    move-result-object v0

    invoke-virtual {v0}, Lchh;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->getResultCode()I

    move-result v0

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    iget-object v1, v1, Lcom/unipay/unipay_sdk/UniPay;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "614"

    const-string v2, "\u77ed\u4fe1\u4e0a\u884c\u5931\u8d25"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->f(Lcom/unipay/unipay_sdk/UniPay;)Lchl;

    move-result-object v0

    invoke-virtual {v0}, Lchl;->cancel()V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lchc;

    invoke-direct {v1, p0}, Lchc;-><init>(Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.unipay.vac_action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->e(Lcom/unipay/unipay_sdk/UniPay;)Lchh;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->e(Lcom/unipay/unipay_sdk/UniPay;)Lchh;

    move-result-object v0

    invoke-virtual {v0}, Lchh;->cancel()V

    :cond_4
    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->getResultCode()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->h(Lcom/unipay/unipay_sdk/UniPay;)V

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->i(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "603"

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.unipay.sms_action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->e(Lcom/unipay/unipay_sdk/UniPay;)Lchh;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->e(Lcom/unipay/unipay_sdk/UniPay;)Lchh;

    move-result-object v0

    invoke-virtual {v0}, Lchh;->cancel()V

    :cond_7
    invoke-virtual {p0}, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->getResultCode()I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "601"

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->b(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v1}, Lcom/unipay/unipay_sdk/UniPay;->i(Lcom/unipay/unipay_sdk/UniPay;)Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "603"

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_2
.end method
