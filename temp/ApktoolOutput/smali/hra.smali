.class public final Lhra;
.super Ljava/lang/Object;
.source "Update.java"


# instance fields
.field a:I

.field synthetic b:Lcom/wandoujia/update/RemoteUpdateService;


# direct methods
.method public constructor <init>(Lcom/wandoujia/update/RemoteUpdateService;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lhra;->b:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lhra;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/update/protocol/UpdateInfo;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-static {}, Lcom/wandoujia/update/RemoteUpdateService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDownloadInstallerSuccess()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lhra;->b:Lcom/wandoujia/update/RemoteUpdateService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/wandoujia/update/RemoteUpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 173
    const/16 v1, 0x198

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 174
    iget-object v0, p0, Lhra;->b:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->i(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/IUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    iget-object v0, p0, Lhra;->b:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->i(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/IUpdateCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/wandoujia/update/aidl/IUpdateCallback;->a(Lcom/wandoujia/update/protocol/UpdateInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    iget-object v0, p0, Lhra;->b:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->k(Lcom/wandoujia/update/RemoteUpdateService;)V

    .line 187
    return-void

    :catch_0
    move-exception v0

    .line 178
    :try_start_1
    iget-object v0, p0, Lhra;->b:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->l(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/IUpdateCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/wandoujia/update/aidl/IUpdateCallback;->a(Lcom/wandoujia/update/protocol/UpdateInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 191
    invoke-static {}, Lcom/wandoujia/update/RemoteUpdateService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDownloadInstallerFailed()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lhra;->b:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->i(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/IUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    iget-object v0, p0, Lhra;->b:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->i(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/IUpdateCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/wandoujia/update/aidl/IUpdateCallback;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    iget-object v0, p0, Lhra;->b:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->k(Lcom/wandoujia/update/RemoteUpdateService;)V

    .line 206
    return-void

    .line 196
    :catch_0
    move-exception v0

    iget-object v0, p0, Lhra;->b:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0, v3}, Lcom/wandoujia/update/RemoteUpdateService;->a(Lcom/wandoujia/update/RemoteUpdateService;Z)Z

    .line 199
    :try_start_1
    iget-object v0, p0, Lhra;->b:Lcom/wandoujia/update/RemoteUpdateService;

    invoke-static {v0}, Lcom/wandoujia/update/RemoteUpdateService;->l(Lcom/wandoujia/update/RemoteUpdateService;)Lcom/wandoujia/update/aidl/IUpdateCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/wandoujia/update/aidl/IUpdateCallback;->a(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
