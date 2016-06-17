.class public final Lhqo;
.super Lcom/wandoujia/update/aidl/IUpdateCallback$Stub;
.source "RemoteUpdateService.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/update/RemoteUpdateService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/update/RemoteUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lhqo;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-direct {p0}, Lcom/wandoujia/update/aidl/IUpdateCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 57
    return-void
.end method

.method public final a(Lcom/wandoujia/update/protocol/UpdateInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    return-void
.end method

.method public final a(Lcom/wandoujia/update/protocol/UpdateInfo;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lhqo;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-virtual {v0}, Lcom/wandoujia/update/RemoteUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0, v1, p2}, Lg;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lhqo;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-virtual {v1}, Lcom/wandoujia/update/RemoteUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, p1, v2}, Lhrm;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/update/protocol/UpdateInfo;Z)V

    .line 68
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 74
    :try_start_0
    iget-object v0, p0, Lhqo;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/UpdateParams;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/wandoujia/update/aidl/UpdateParams;->downloadInstallerOnlyOnWifi:Z

    .line 75
    iget-object v0, p0, Lhqo;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->c(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;

    move-result-object v0

    iget-object v1, p0, Lhqo;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v1}, Lcom/wandoujia/update/RemoteUpdateService;->b(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/protocol/UpdateInfo;

    move-result-object v1

    iget-object v2, p0, Lhqo;->a:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v2}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/UpdateParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;->a(Lcom/wandoujia/update/protocol/UpdateInfo;Lcom/wandoujia/update/aidl/UpdateParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
