.class public final Lchk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/unipay/unipay_sdk/UniPay;


# direct methods
.method public constructor <init>(Lcom/unipay/unipay_sdk/UniPay;)V
    .locals 0

    iput-object p1, p0, Lchk;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lchk;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u5c06\u5361\u63d2\u5165\u5361\u69fd1\u540e\u91cd\u8bd5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
