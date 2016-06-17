.class public final Lhql;
.super Lcom/wandoujia/update/aidl/IUpdateCallback$Stub;
.source "LocalUpdateService.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/update/LocalUpdateService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/update/LocalUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lhql;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-direct {p0}, Lcom/wandoujia/update/aidl/IUpdateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lhql;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/LocalUpdateService;->b(Lcom/wandoujia/update/LocalUpdateService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 294
    return-void
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lhql;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/LocalUpdateService;->b(Lcom/wandoujia/update/LocalUpdateService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 299
    return-void
.end method

.method public final a(Lcom/wandoujia/update/protocol/UpdateInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lhql;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-static {v0, p1}, Lcom/wandoujia/update/LocalUpdateService;->a(Lcom/wandoujia/update/LocalUpdateService;Lcom/wandoujia/update/protocol/UpdateInfo;)Lcom/wandoujia/update/protocol/UpdateInfo;

    .line 288
    iget-object v0, p0, Lhql;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/LocalUpdateService;->b(Lcom/wandoujia/update/LocalUpdateService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 289
    return-void
.end method

.method public final a(Lcom/wandoujia/update/protocol/UpdateInfo;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 303
    iget-object v0, p0, Lhql;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-static {v0, p1}, Lcom/wandoujia/update/LocalUpdateService;->a(Lcom/wandoujia/update/LocalUpdateService;Lcom/wandoujia/update/protocol/UpdateInfo;)Lcom/wandoujia/update/protocol/UpdateInfo;

    .line 304
    iget-object v0, p0, Lhql;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-static {v0, p2}, Lcom/wandoujia/update/LocalUpdateService;->a(Lcom/wandoujia/update/LocalUpdateService;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    invoke-static {}, Lcom/wandoujia/update/LocalUpdateService;->d()Z

    .line 306
    iget-object v0, p0, Lhql;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/LocalUpdateService;->b(Lcom/wandoujia/update/LocalUpdateService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 307
    return-void
.end method

.method public final a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lhql;->a:Lcom/wandoujia/update/LocalUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/LocalUpdateService;->b(Lcom/wandoujia/update/LocalUpdateService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 313
    return-void

    :cond_0
    move v0, v1

    .line 311
    goto :goto_0
.end method
