.class public Lcom/wandoujia/update/LocalUpdateService;
.super Landroid/app/Service;
.source "LocalUpdateService.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public b:Lhqn;

.field public c:Lcom/wandoujia/update/protocol/UpdateInfo;

.field public d:Ljava/lang/String;

.field public e:Lhqm;

.field private final f:Landroid/os/IBinder;

.field private g:Lcom/wandoujia/update/aidl/IUpdateCallback;

.field private h:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/wandoujia/update/LocalUpdateService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wandoujia/update/LocalUpdateService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Lhqj;

    invoke-direct {v0, p0}, Lhqj;-><init>(Lcom/wandoujia/update/LocalUpdateService;)V

    iput-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->f:Landroid/os/IBinder;

    .line 36
    new-instance v0, Lhql;

    invoke-direct {v0, p0}, Lhql;-><init>(Lcom/wandoujia/update/LocalUpdateService;)V

    iput-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->g:Lcom/wandoujia/update/aidl/IUpdateCallback;

    .line 41
    new-instance v0, Lhqk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhqk;-><init>(Lcom/wandoujia/update/LocalUpdateService;B)V

    iput-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->i:Landroid/os/Handler;

    .line 316
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/update/LocalUpdateService;Lcom/wandoujia/update/protocol/UpdateInfo;)Lcom/wandoujia/update/protocol/UpdateInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/wandoujia/update/LocalUpdateService;->c:Lcom/wandoujia/update/protocol/UpdateInfo;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/update/LocalUpdateService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/wandoujia/update/LocalUpdateService;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/wandoujia/update/LocalUpdateService;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/wandoujia/update/LocalUpdateService;->e()Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    if-eqz v1, :cond_1

    .line 225
    const/4 v0, 0x1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    new-instance v1, Lhqn;

    invoke-direct {v1, p0}, Lhqn;-><init>(Lcom/wandoujia/update/LocalUpdateService;)V

    iput-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    .line 229
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 230
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    :try_start_0
    invoke-virtual {p0}, Lcom/wandoujia/update/LocalUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 234
    invoke-virtual {p0}, Lcom/wandoujia/update/LocalUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 238
    :goto_1
    if-nez v0, :cond_0

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static synthetic b(Lcom/wandoujia/update/LocalUpdateService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/wandoujia/update/LocalUpdateService;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic d()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method private e()Z
    .locals 4

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    iget-object v0, v0, Lhqn;->a:Lcom/wandoujia/update/aidl/IUpdateRemoteService;

    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->g:Lcom/wandoujia/update/aidl/IUpdateCallback;

    new-instance v2, Lcom/wandoujia/update/aidl/UpdateParams;

    iget-object v3, p0, Lcom/wandoujia/update/LocalUpdateService;->h:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    invoke-direct {v2, v3}, Lcom/wandoujia/update/aidl/UpdateParams;-><init>(Lcom/wandoujia/update/LocalUpdateService$UpdateParams;)V

    invoke-interface {v0, v1, v2}, Lcom/wandoujia/update/aidl/IUpdateRemoteService;->a(Lcom/wandoujia/update/aidl/IUpdateCallback;Lcom/wandoujia/update/aidl/UpdateParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 277
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 330
    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->e:Lhqm;

    if-nez v1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 333
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 335
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/wandoujia/update/protocol/UpdateInfo;

    .line 336
    new-instance v1, Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/wandoujia/update/toolkit/SelfUpdateResult;-><init>(Lcom/wandoujia/update/protocol/UpdateInfo;Ljava/lang/String;)V

    invoke-static {v1}, Lhrm;->a(Lcom/wandoujia/update/toolkit/SelfUpdateResult;)V

    .line 337
    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->e:Lhqm;

    invoke-interface {v1, v0}, Lhqm;->a(Lcom/wandoujia/update/protocol/UpdateInfo;)V

    goto :goto_0

    .line 341
    :pswitch_1
    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->e:Lhqm;

    invoke-interface {v0}, Lhqm;->a()V

    goto :goto_0

    .line 345
    :pswitch_2
    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->e:Lhqm;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lhqm;->a(I)V

    goto :goto_0

    .line 349
    :pswitch_3
    new-instance v0, Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->c:Lcom/wandoujia/update/protocol/UpdateInfo;

    iget-object v2, p0, Lcom/wandoujia/update/LocalUpdateService;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/update/toolkit/SelfUpdateResult;-><init>(Lcom/wandoujia/update/protocol/UpdateInfo;Ljava/lang/String;)V

    invoke-static {v0}, Lhrm;->a(Lcom/wandoujia/update/toolkit/SelfUpdateResult;)V

    .line 350
    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->e:Lhqm;

    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->c:Lcom/wandoujia/update/protocol/UpdateInfo;

    iget-object v2, p0, Lcom/wandoujia/update/LocalUpdateService;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lhqm;->a(Lcom/wandoujia/update/protocol/UpdateInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    :pswitch_4
    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->e:Lhqm;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-interface {v1, v0}, Lhqm;->a(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lhqm;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->e:Lhqm;

    if-ne p1, v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->e:Lhqm;

    .line 93
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    iget-object v1, v1, Lhqn;->a:Lcom/wandoujia/update/aidl/IUpdateRemoteService;

    if-nez v1, :cond_1

    .line 117
    :cond_0
    sget-object v1, Lcom/wandoujia/update/LocalUpdateService;->a:Ljava/lang/String;

    const-string v2, "not bound"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :goto_0
    return v0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->h:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->updateDelayMs:J

    .line 122
    invoke-direct {p0}, Lcom/wandoujia/update/LocalUpdateService;->e()Z

    .line 123
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 127
    sget-object v1, Lcom/wandoujia/update/LocalUpdateService;->a:Ljava/lang/String;

    const-string v2, "forceDownloadInstaller()"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    iget-object v1, v1, Lhqn;->a:Lcom/wandoujia/update/aidl/IUpdateRemoteService;

    if-nez v1, :cond_1

    .line 130
    :cond_0
    sget-object v1, Lcom/wandoujia/update/LocalUpdateService;->a:Ljava/lang/String;

    const-string v2, "not bound"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->h:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->c:Lcom/wandoujia/update/protocol/UpdateInfo;

    if-nez v1, :cond_3

    .line 135
    :cond_2
    sget-object v1, Lcom/wandoujia/update/LocalUpdateService;->a:Ljava/lang/String;

    const-string v2, "new version is unavailable"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/base/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_3
    new-instance v1, Lcom/wandoujia/update/aidl/UpdateParams;

    iget-object v2, p0, Lcom/wandoujia/update/LocalUpdateService;->h:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    invoke-direct {v1, v2}, Lcom/wandoujia/update/aidl/UpdateParams;-><init>(Lcom/wandoujia/update/LocalUpdateService$UpdateParams;)V

    .line 141
    iput-boolean v0, v1, Lcom/wandoujia/update/aidl/UpdateParams;->downloadInstallerOnlyOnWifi:Z

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    iget-object v0, v0, Lhqn;->a:Lcom/wandoujia/update/aidl/IUpdateRemoteService;

    iget-object v2, p0, Lcom/wandoujia/update/LocalUpdateService;->c:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-interface {v0, v2, v1}, Lcom/wandoujia/update/aidl/IUpdateRemoteService;->a(Lcom/wandoujia/update/protocol/UpdateInfo;Lcom/wandoujia/update/aidl/UpdateParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->f:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    iget-object v0, v0, Lhqn;->a:Lcom/wandoujia/update/aidl/IUpdateRemoteService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    iget-object v0, v0, Lhqn;->a:Lcom/wandoujia/update/aidl/IUpdateRemoteService;

    invoke-interface {v0}, Lcom/wandoujia/update/aidl/IUpdateRemoteService;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/update/LocalUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    .line 215
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 216
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    const-string v0, "LocalService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received start id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/wandoujia/base/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    const-string v3, "LocalService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "updateParams is null = "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->h:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/wandoujia/base/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    const-string v3, "LocalService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "intent is null = "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/wandoujia/base/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    if-nez p1, :cond_3

    .line 209
    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 182
    goto :goto_0

    :cond_2
    move v0, v2

    .line 183
    goto :goto_1

    .line 191
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "UPDATE_PARAMS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/wandoujia/update/LocalUpdateService$UpdateParams;->checkUpdateProtocol:Lcom/wandoujia/update/protocol/CheckUpdateProtocol;

    invoke-virtual {v2}, Lcom/wandoujia/update/protocol/CheckUpdateProtocol;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iput-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->h:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    .line 204
    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->b:Lhqn;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->h:Lcom/wandoujia/update/LocalUpdateService$UpdateParams;

    if-eqz v0, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/wandoujia/update/LocalUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/wandoujia/update/RemoteUpdateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/wandoujia/update/LocalUpdateService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    :cond_4
    const/4 v1, 0x3

    goto :goto_2

    .line 195
    :catch_0
    move-exception v0

    goto :goto_2
.end method
