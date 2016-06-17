.class public final Lchp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method public constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lchp;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lchp;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcgv;->a(Landroid/content/Context;)Lcgv;

    move-result-object v5

    move v2, v3

    :goto_0
    iget-object v0, v5, Lcgv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    move v4, v3

    :goto_1
    iget-object v0, v5, Lcgv;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    iget-object v0, v5, Lcgv;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgw;

    iget-object v1, v0, Lcgw;->a:Ljava/lang/String;

    iget-object v0, v5, Lcgv;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgw;

    iget-object v0, v0, Lcgw;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v5, Lcgv;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgw;

    iget-object v1, v5, Lcgv;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcgw;

    iget-object v6, v0, Lcgw;->b:Ljava/lang/String;

    iget-object v7, v1, Lcgw;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v0, Lcgw;->b:Ljava/lang/String;

    const-string v7, "any"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    iget-object v6, v0, Lcgw;->c:Ljava/lang/String;

    iget-object v7, v1, Lcgw;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcgw;->c:Ljava/lang/String;

    const-string v7, "any"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    iget-object v6, v0, Lcgw;->d:Ljava/lang/String;

    iget-object v1, v1, Lcgw;->d:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcgw;->d:Ljava/lang/String;

    const-string v6, "any"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, v0, Lcgw;->e:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, v5, Lcgv;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    iget-object v0, v5, Lcgv;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgw;

    :goto_3
    if-nez v0, :cond_7

    iget-object v0, p0, Lchp;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "652"

    const-string v2, ""

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lchp;->a:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lcgw;->a:Ljava/lang/String;

    const-string v2, "com.lenovo.safecenter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcgw;->c:Ljava/lang/String;

    const-string v1, "4.2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    iget-object v0, p0, Lchp;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "652"

    const-string v2, ""

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lchp;->a:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lchp;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "651"

    const-string v2, ""

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lchp;->a:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lchp;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "651"

    const-string v2, ""

    const-string v3, "true"

    invoke-static {v0, v1, v2, v3}, Lcgk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lchp;->a:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_4
.end method
