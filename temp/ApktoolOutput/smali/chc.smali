.class public final Lchc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;


# direct methods
.method public constructor <init>(Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;)V
    .locals 0

    iput-object p1, p0, Lchc;->a:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lchc;->a:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u77ed\u4fe1\u9274\u6743\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lchc;->a:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->g(Lcom/unipay/unipay_sdk/UniPay;)V

    iget-object v0, p0, Lchc;->a:Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;

    iget-object v0, v0, Lcom/unipay/unipay_sdk/IIlIlIllIIllIIlI;->a:Lcom/unipay/unipay_sdk/UniPay;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    return-void
.end method
