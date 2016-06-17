.class public Lcom/wandoujia/update/toolkit/UpdateService;
.super Lcom/wandoujia/update/LocalUpdateService;
.source "UpdateService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/wandoujia/update/LocalUpdateService;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 16
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/wandoujia/update/LocalUpdateService;->e:Lhqm;

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/wandoujia/update/toolkit/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/wandoujia/update/RemoteUpdateService;

    iget-object v2, p0, Lcom/wandoujia/update/LocalUpdateService;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lg;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/wandoujia/update/toolkit/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/update/LocalUpdateService;->c:Lcom/wandoujia/update/protocol/UpdateInfo;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lhrm;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/update/protocol/UpdateInfo;Z)V

    .line 27
    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/update/LocalUpdateService;->a(Landroid/os/Message;)V

    .line 28
    return-void
.end method
