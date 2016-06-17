.class final Lcfj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/pboctransaction/b;


# instance fields
.field private synthetic a:Lcfg;


# direct methods
.method constructor <init>(Lcfg;)V
    .locals 0

    iput-object p1, p0, Lcfj;->a:Lcfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcfj;->a:Lcfg;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcfg;->a(Lcfg;I)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcfj;->a:Lcfg;

    invoke-static {v0}, Lcfg;->a(Lcfg;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcfj;->a:Lcfg;

    invoke-static {v1}, Lcfg;->a(Lcfg;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
