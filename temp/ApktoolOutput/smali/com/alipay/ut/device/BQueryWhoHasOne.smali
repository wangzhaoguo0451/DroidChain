.class public Lcom/alipay/ut/device/BQueryWhoHasOne;
.super Landroid/content/BroadcastReceiver;
.source "BQueryWhoHasOne.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 55
    if-eqz p1, :cond_1

    const-string v0, "src"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-static {p1}, Laca;->a(Landroid/content/Context;)Labz;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 59
    iget-wide v2, v0, Labz;->f:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    iget-wide v2, v0, Labz;->f:J

    invoke-static {v0}, Laca;->a(Labz;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/alipay/ut/device/BQueryWhoHasOne;->abortBroadcast()V

    .line 63
    const-string v1, "src"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v1}, Ld;->j(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Laca;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "UT.FoundIT"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Labz;->a:Ljava/lang/String;

    iget-object v4, v0, Labz;->b:Ljava/lang/String;

    iget-object v5, v0, Labz;->c:Ljava/lang/String;

    iget-object v6, v0, Labz;->d:Ljava/lang/String;

    invoke-static {v1}, Ld;->j(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v4}, Ld;->j(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Ld;->j(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v6}, Ld;->j(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "e"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "s"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "d"

    invoke-virtual {v3, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "u"

    invoke-virtual {v3, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "t"

    iget-wide v4, v0, Labz;->e:J

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "S"

    iget-wide v4, v0, Labz;->f:J

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "com.alipay.ut.permission.DEVICE_STATE"

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 68
    :cond_1
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
