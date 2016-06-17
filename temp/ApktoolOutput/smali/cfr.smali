.class final Lcfr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcfq;


# direct methods
.method constructor <init>(Lcfq;)V
    .locals 0

    iput-object p1, p0, Lcfr;->a:Lcfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcfr;->a:Lcfq;

    invoke-static {p2}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu$Stub;->a(Landroid/os/IBinder;)Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    move-result-object v1

    invoke-static {v0, v1}, Lcfq;->a(Lcfq;Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;)Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    iget-object v0, p0, Lcfr;->a:Lcfq;

    invoke-static {v0}, Lcfq;->b(Lcfq;)Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    move-result-object v0

    iget-object v1, p0, Lcfr;->a:Lcfq;

    invoke-static {v1}, Lcfq;->a(Lcfq;)Lcom/unionpay/mobile/tsm/connect/IInitCallback$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->registerCallback(Lcom/unionpay/mobile/tsm/connect/IInitCallback;)V

    iget-object v0, p0, Lcfr;->a:Lcfq;

    invoke-static {v0}, Lcfq;->b(Lcfq;)Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    move-result-object v0

    invoke-interface {v0}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->init()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcfr;->a:Lcfq;

    iget-object v0, v0, Lcfq;->a:Lcom/unionpay/pboctransaction/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcfr;->a:Lcfq;

    iget-object v0, v0, Lcfq;->a:Lcom/unionpay/pboctransaction/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/b;->b()V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcfr;->a:Lcfq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcfq;->a(Lcfq;Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;)Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    iget-object v0, p0, Lcfr;->a:Lcfq;

    iget-object v0, v0, Lcfq;->a:Lcom/unionpay/pboctransaction/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcfr;->a:Lcfq;

    iget-object v0, v0, Lcfq;->a:Lcom/unionpay/pboctransaction/b;

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/b;->b()V

    :cond_0
    return-void
.end method
