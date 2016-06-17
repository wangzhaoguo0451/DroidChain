.class public final Lcom/unionpay/mpay/utils/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcck;

.field private b:Landroid/os/Handler;

.field private c:Lcom/unionpay/mpay/utils/n$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unionpay/mpay/utils/n$a;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/unionpay/mpay/utils/n;->a:Lcck;

    iput-object v2, p0, Lcom/unionpay/mpay/utils/n;->b:Landroid/os/Handler;

    iput-object v2, p0, Lcom/unionpay/mpay/utils/n;->c:Lcom/unionpay/mpay/utils/n$a;

    new-instance v0, Lcck;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcck;-><init>(ILjava/lang/String;[B)V

    iput-object v0, p0, Lcom/unionpay/mpay/utils/n;->a:Lcck;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mpay/utils/n;->b:Landroid/os/Handler;

    iput-object p2, p0, Lcom/unionpay/mpay/utils/n;->c:Lcom/unionpay/mpay/utils/n$a;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/unionpay/mpay/utils/n;->c:Lcom/unionpay/mpay/utils/n$a;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    :goto_1
    iget-object v1, p0, Lcom/unionpay/mpay/utils/n;->c:Lcom/unionpay/mpay/utils/n$a;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v0}, Lcom/unionpay/mpay/utils/n$a;->a(I[B)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final run()V
    .locals 4

    new-instance v0, Lccj;

    iget-object v1, p0, Lcom/unionpay/mpay/utils/n;->a:Lcck;

    invoke-direct {v0, v1}, Lccj;-><init>(Lcck;)V

    invoke-virtual {v0}, Lccj;->a()I

    move-result v1

    iget-object v2, p0, Lcom/unionpay/mpay/utils/n;->b:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    iput v1, v2, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lccj;->a:[B

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mpay/utils/n;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
