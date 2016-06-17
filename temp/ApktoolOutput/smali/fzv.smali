.class public final Lfzv;
.super Landroid/os/Handler;
.source "NetCheckController.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lfzv;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lfzv;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    iget-object v0, v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController;->g:Landroid/os/Handler;

    new-instance v1, Lfzx;

    iget-object v2, p0, Lfzv;->a:Lcom/wandoujia/p4/netcheck/controller/NetCheckController;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lfzx;-><init>(Lcom/wandoujia/p4/netcheck/controller/NetCheckController;B)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 435
    return-void
.end method
