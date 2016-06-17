.class public final Lche;
.super Ljava/lang/Object;

# interfaces
.implements Lcgo;


# instance fields
.field final synthetic a:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method public constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "649"

    const-string v2, "\u65e0\u6cd5\u4f7f\u7528\u8bdd\u8d39\u652f\u4ed8"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->b(Lcom/unipay/unipay_sdk/UniPay;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lchd;

    invoke-direct {v1, p0}, Lchd;-><init>(Lche;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/io/InputStream;)V
    .locals 6

    if-nez p1, :cond_1

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "649"

    const-string v2, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->b(Lcom/unipay/unipay_sdk/UniPay;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lchg;

    invoke-direct {v1, p0}, Lchg;-><init>(Lche;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/unipay/unipay_sdk/UniPay;->a(Ljava/io/InputStream;)Lchr;

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "649"

    const-string v2, "\u83b7\u53d6\u6570\u636e\u5931\u8d25"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->b(Lcom/unipay/unipay_sdk/UniPay;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lchq;

    invoke-direct {v1, p0}, Lchq;-><init>(Lche;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "649"

    const-string v2, "\u65e0\u6cd5\u4f7f\u7528\u8bdd\u8d39\u652f\u4ed8"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->b(Lcom/unipay/unipay_sdk/UniPay;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lchm;

    invoke-direct {v1, p0}, Lchm;-><init>(Lche;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "blacklistSDK"

    invoke-static {v0, v1}, Ld;->a(Lchr;Ljava/lang/String;)Lchu;

    move-result-object v0

    iget-object v0, v0, Lchu;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcht;

    const-string v1, "result"

    invoke-static {v0, v1}, Ld;->a(Lcht;Ljava/lang/String;)I

    move-result v1

    const-string v2, "Usertype"

    invoke-static {v0, v2}, Ld;->a(Lcht;Ljava/lang/String;)I

    move-result v2

    const-string v3, "desc"

    invoke-static {v0, v3}, Ld;->b(Lcht;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->d(Lcom/unipay/unipay_sdk/UniPay;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcgz;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->r(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->b(Lcom/unipay/unipay_sdk/UniPay;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lchj;

    invoke-direct {v1, p0}, Lchj;-><init>(Lche;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_4
    if-nez v1, :cond_5

    if-nez v2, :cond_5

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->d(Lcom/unipay/unipay_sdk/UniPay;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcgz;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->q(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v3}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "634"

    const-string v5, "false"

    invoke-static {v3, v4, v0, v5}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "649"

    const-string v2, "\u65e0\u6cd5\u4f7f\u7528\u8bdd\u8d39\u652f\u4ed8"

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->b(Lcom/unipay/unipay_sdk/UniPay;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u65e0\u6cd5\u4f7f\u7528\u8bdd\u8d39\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
