.class public final Ldvw;
.super Ljava/lang/Object;
.source "UpdateClient.java"

# interfaces
.implements Lhqm;


# instance fields
.field a:Landroid/content/ServiceConnection;

.field b:Lcom/wandoujia/update/LocalUpdateService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    .line 35
    iget-object v1, p0, Ldvw;->b:Lcom/wandoujia/update/LocalUpdateService;

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p0, Ldvw;->b:Lcom/wandoujia/update/LocalUpdateService;

    invoke-virtual {v1, p0}, Lcom/wandoujia/update/LocalUpdateService;->a(Lhqm;)V

    .line 37
    iget-object v1, p0, Ldvw;->a:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Ldvw;->a:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 40
    :cond_0
    iput-object v2, p0, Ldvw;->a:Landroid/content/ServiceConnection;

    .line 41
    iput-object v2, p0, Ldvw;->b:Lcom/wandoujia/update/LocalUpdateService;

    .line 43
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ldvw;->b()V

    .line 103
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 108
    return-void
.end method

.method public final a(Lcom/wandoujia/update/protocol/UpdateInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/wandoujia/update/protocol/UpdateInfo;->hasNewVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0}, Ldvw;->b()V

    .line 98
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/update/protocol/UpdateInfo;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    new-instance v1, Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    invoke-direct {v1, p1, p2}, Lcom/wandoujia/update/toolkit/SelfUpdateResult;-><init>(Lcom/wandoujia/update/protocol/UpdateInfo;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p1}, Lcom/wandoujia/update/protocol/UpdateInfo;->getPriority()Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->EXTREME:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    if-ne v0, v1, :cond_0

    .line 117
    const-string v0, "NEED_EXTREME_UPDATE_KEY"

    const-string v1, "8925"

    invoke-static {v0, v1}, Ld;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-direct {p0}, Ldvw;->b()V

    .line 121
    return-void
.end method

.method public final a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 127
    invoke-static {}, Lhrm;->a()Lcom/wandoujia/update/toolkit/SelfUpdateResult;

    move-result-object v1

    .line 128
    sget-object v0, Lham;->f:Lham;

    const-string v2, "event_bus"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    .line 130
    iget-object v0, v1, Lcom/wandoujia/update/toolkit/SelfUpdateResult;->updateInfo:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v0}, Lcom/wandoujia/update/protocol/UpdateInfo;->getPriority()Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->EXTREME:Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    if-ne v0, v1, :cond_0

    .line 131
    const-string v0, "NEED_EXTREME_UPDATE_KEY"

    const-string v1, "8925"

    invoke-static {v0, v1}, Ld;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    invoke-direct {p0}, Ldvw;->b()V

    .line 136
    return-void
.end method
