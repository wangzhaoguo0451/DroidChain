.class public final Lhab;
.super Landroid/os/Handler;
.source "PushService.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/push2/PushService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/push2/PushService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lhab;->a:Lcom/wandoujia/push2/PushService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :pswitch_0
    invoke-static {}, Lgzu;->a()Lgzu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lgzu;->a(Z)V

    .line 75
    invoke-static {}, Lcom/wandoujia/push2/PushService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disconnect push server"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lhab;->a:Lcom/wandoujia/push2/PushService;

    invoke-static {v0}, Lcom/wandoujia/push2/PushService;->a(Lcom/wandoujia/push2/PushService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lhab;->a:Lcom/wandoujia/push2/PushService;

    invoke-static {v0}, Lcom/wandoujia/push2/PushService;->b(Lcom/wandoujia/push2/PushService;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 81
    :pswitch_1
    iget-object v1, p0, Lhab;->a:Lcom/wandoujia/push2/PushService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/wandoujia/push2/PushService;->a(Lcom/wandoujia/push2/PushService;Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
