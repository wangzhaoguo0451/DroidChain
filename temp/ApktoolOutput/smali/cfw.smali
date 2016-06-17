.class final Lcfw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private synthetic a:Lcfv;


# direct methods
.method constructor <init>(Lcfv;)V
    .locals 0

    iput-object p1, p0, Lcfw;->a:Lcfv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcfw;->a:Lcfv;

    invoke-static {v0}, Lcfv;->a(Lcfv;)Lcom/unionpay/pboctransaction/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcfw;->a:Lcfv;

    invoke-static {v0}, Lcfv;->a(Lcfv;)Lcom/unionpay/pboctransaction/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/b;->a()V

    iget-object v0, p0, Lcfw;->a:Lcfv;

    invoke-static {v0}, Lcfv;->b(Lcfv;)Lcom/unionpay/pboctransaction/b;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcfw;->a:Lcfv;

    invoke-static {v0}, Lcfv;->a(Lcfv;)Lcom/unionpay/pboctransaction/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcfw;->a:Lcfv;

    invoke-static {v0}, Lcfv;->a(Lcfv;)Lcom/unionpay/pboctransaction/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/unionpay/pboctransaction/b;->b()V

    iget-object v0, p0, Lcfw;->a:Lcfv;

    invoke-static {v0}, Lcfv;->b(Lcfv;)Lcom/unionpay/pboctransaction/b;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
