.class public final Lchn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/unipay/beans/GameBaseBean;

.field private synthetic b:Lcom/unipay/unipay_sdk/MainActivity;


# direct methods
.method public constructor <init>(Lcom/unipay/unipay_sdk/MainActivity;Lcom/unipay/beans/GameBaseBean;)V
    .locals 0

    iput-object p1, p0, Lchn;->b:Lcom/unipay/unipay_sdk/MainActivity;

    iput-object p2, p0, Lchn;->a:Lcom/unipay/beans/GameBaseBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lchn;->b:Lcom/unipay/unipay_sdk/MainActivity;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/MainActivity;->a:Ljava/text/Format;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x24

    if-ge v0, v3, :cond_0

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/unipay/beans/PayValueBean;

    const-string v0, "130201102727"

    const-string v1, "\u91d1\u5e0140"

    const-string v4, "0.1"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v1, v4, v2}, Lcom/unipay/beans/PayValueBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcgz;->f()V

    invoke-static {}, Lcom/unipay/unipay_sdk/UniPay;->a()Lcom/unipay/unipay_sdk/UniPay;

    move-result-object v0

    iget-object v1, p0, Lchn;->b:Lcom/unipay/unipay_sdk/MainActivity;

    iget-object v2, p0, Lchn;->a:Lcom/unipay/beans/GameBaseBean;

    sget-object v4, Lcom/unipay/unipay_sdk/UniPay$payType;->VAC:Lcom/unipay/unipay_sdk/UniPay$payType;

    iget-object v5, p0, Lchn;->b:Lcom/unipay/unipay_sdk/MainActivity;

    invoke-static {v5}, Lcom/unipay/unipay_sdk/MainActivity;->a(Lcom/unipay/unipay_sdk/MainActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/unipay/unipay_sdk/UniPay;->a(Landroid/content/Context;Lcom/unipay/beans/GameBaseBean;Lcom/unipay/beans/PayValueBean;Lcom/unipay/unipay_sdk/UniPay$payType;Landroid/os/Handler;)V

    return-void
.end method
