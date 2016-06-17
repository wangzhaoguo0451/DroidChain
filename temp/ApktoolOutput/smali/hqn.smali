.class public final Lhqn;
.super Ljava/lang/Object;
.source "LocalUpdateService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public a:Lcom/wandoujia/update/aidl/IUpdateRemoteService;

.field private synthetic b:Lcom/wandoujia/update/LocalUpdateService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/update/LocalUpdateService;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lhqn;->b:Lcom/wandoujia/update/LocalUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lhqn;->a:Lcom/wandoujia/update/aidl/IUpdateRemoteService;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-static {p2}, Lcom/wandoujia/update/aidl/IUpdateRemoteService$Stub;->a(Landroid/os/IBinder;)Lcom/wandoujia/update/aidl/IUpdateRemoteService;

    move-result-object v0

    iput-object v0, p0, Lhqn;->a:Lcom/wandoujia/update/aidl/IUpdateRemoteService;

    .line 260
    invoke-static {}, Lcom/wandoujia/update/LocalUpdateService;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateServiceConnection.onServiceConnected()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lhqn;->b:Lcom/wandoujia/update/LocalUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/LocalUpdateService;->a(Lcom/wandoujia/update/LocalUpdateService;)Z

    .line 262
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter

    .prologue
    .line 266
    invoke-static {}, Lcom/wandoujia/update/LocalUpdateService;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateServiceConnection.onServiceDisconnected()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lhqn;->a:Lcom/wandoujia/update/aidl/IUpdateRemoteService;

    .line 268
    return-void
.end method
