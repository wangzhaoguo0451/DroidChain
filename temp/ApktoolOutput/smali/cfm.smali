.class final Lcfm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcfg;


# direct methods
.method constructor <init>(Lcfg;)V
    .locals 0

    iput-object p1, p0, Lcfm;->a:Lcfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcfm;->a:Lcfg;

    invoke-static {v0}, Lcfg;->d(Lcfg;)Lcfo;

    move-result-object v0

    invoke-virtual {v0}, Lcfo;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcfm;->a:Lcfg;

    invoke-static {v1}, Lcfg;->a(Lcfg;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcfm;->a:Lcfg;

    invoke-static {v1}, Lcfg;->a(Lcfg;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
