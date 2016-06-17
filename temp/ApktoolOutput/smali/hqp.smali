.class public final Lhqp;
.super Ljava/lang/Object;
.source "RemoteUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/update/RemoteUpdateService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/update/RemoteUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lhqp;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lhqp;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->d(Lcom/wandoujia/update/RemoteUpdateService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhqp;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->e(Lcom/wandoujia/update/RemoteUpdateService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lhqp;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-virtual {v0}, Lcom/wandoujia/update/RemoteUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    invoke-static {}, Lcom/wandoujia/update/RemoteUpdateService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network is not connected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lhqp;->a:Lcom/wandoujia/update/RemoteUpdateService;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;J)V

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Lhqp;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->f(Lcom/wandoujia/update/RemoteUpdateService;)I

    .line 104
    iget-object v0, p0, Lhqp;->a:Lcom/wandoujia/update/RemoteUpdateService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;Z)Z

    .line 105
    iget-object v0, p0, Lhqp;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/UpdateParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhqp;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->g(Lcom/wandoujia/update/RemoteUpdateService;)Lhqs;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lhqp;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->g(Lcom/wandoujia/update/RemoteUpdateService;)Lhqs;

    move-result-object v0

    iget-object v1, p0, Lhqp;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v1}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/UpdateParams;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/update/aidl/UpdateParams;->checkUpdateProtocol:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    iget-object v2, p0, Lhqp;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v2}, Lcom/wandoujia/update/RemoteUpdateService;->h(Lcom/wandoujia/update/RemoteUpdateService;)Lhqy;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lhqs;->a(Lcom/wandoujia/update/protocol/CheckUpdateProtocol;Lhqy;)V

    goto :goto_0
.end method
