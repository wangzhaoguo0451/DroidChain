.class public final Lhqq;
.super Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;
.source "RemoteUpdateService.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/update/RemoteUpdateService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/update/RemoteUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lhqq;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-direct {p0}, Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lhqq;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->m(Lcom/wandoujia/update/RemoteUpdateService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 292
    return-void
.end method

.method public final a(Lcom/wandoujia/update/aidl/IUpdateCallback;Lcom/wandoujia/update/aidl/UpdateParams;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v1, p0, Lhqq;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v1}, Lcom/wandoujia/update/RemoteUpdateService;->m(Lcom/wandoujia/update/RemoteUpdateService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 279
    return-void
.end method

.method public final a(Lcom/wandoujia/update/protocol/UpdateInfo;Lcom/wandoujia/update/aidl/UpdateParams;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v1, p0, Lhqq;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v1}, Lcom/wandoujia/update/RemoteUpdateService;->m(Lcom/wandoujia/update/RemoteUpdateService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 287
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lhqq;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->m(Lcom/wandoujia/update/RemoteUpdateService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 297
    return-void
.end method
