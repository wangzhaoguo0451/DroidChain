.class final Lchq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lche;


# direct methods
.method constructor <init>(Lche;)V
    .locals 0

    iput-object p1, p0, Lchq;->a:Lche;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lchq;->a:Lche;

    iget-object v0, v0, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-static {v0}, Lcom/unipay/unipay_sdk/UniPay;->c(Lcom/unipay/unipay_sdk/UniPay;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lchq;->a:Lche;

    iget-object v1, v1, Lche;->a:Lcom/unipay/unipay_sdk/UniPay;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unipay/unipay_sdk/UniPay;->a(Lcom/unipay/unipay_sdk/UniPay;Ljava/lang/String;)V

    goto :goto_0
.end method
