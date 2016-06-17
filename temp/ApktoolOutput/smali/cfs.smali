.class final Lcfs;
.super Lcom/unionpay/mobile/tsm/connect/IInitCallback$Stub;


# instance fields
.field private synthetic a:Lcfq;


# direct methods
.method constructor <init>(Lcfq;)V
    .locals 0

    iput-object p1, p0, Lcfs;->a:Lcfq;

    invoke-direct {p0}, Lcom/unionpay/mobile/tsm/connect/IInitCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final initFailed()V
    .locals 1

    iget-object v0, p0, Lcfs;->a:Lcfq;

    iget-object v0, v0, Lcfq;->a:Lcom/unionpay/pboctransaction/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcfs;->a:Lcfq;

    iget-object v0, v0, Lcfq;->a:Lcom/unionpay/pboctransaction/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/b;->b()V

    :cond_0
    return-void
.end method

.method public final initSucceed()V
    .locals 1

    iget-object v0, p0, Lcfs;->a:Lcfq;

    iget-object v0, v0, Lcfq;->a:Lcom/unionpay/pboctransaction/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcfs;->a:Lcfq;

    iget-object v0, v0, Lcfq;->a:Lcom/unionpay/pboctransaction/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/b;->a()V

    :cond_0
    return-void
.end method
