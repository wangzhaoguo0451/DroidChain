.class public Lcom/wandoujia/jupiter/update/UpdateService;
.super Lcom/wandoujia/update/LocalUpdateService;
.source "UpdateService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/wandoujia/update/LocalUpdateService;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method protected final a(Landroid/os/Message;)V
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/wandoujia/update/LocalUpdateService;->e:Lhqm;

    if-nez v2, :cond_0

    .line 25
    sget-object v2, Ldwj;->a:[I

    iget-object v3, p0, Lcom/wandoujia/update/LocalUpdateService;->c:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v3}, Lcom/wandoujia/update/protocol/UpdateInfo;->getPriority()Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/update/protocol/UpdateInfo$SelfUpdatePriority;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 41
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/update/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/wandoujia/update/RemoteUpdateService;

    iget-object v2, p0, Lcom/wandoujia/update/LocalUpdateService;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lg;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/update/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/update/LocalUpdateService;->c:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-static {v1, v0, v2}, Lhrm;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/wandoujia/update/protocol/UpdateInfo;)V

    .line 54
    const-string v0, "notification_show_version"

    iget-object v1, p0, Lcom/wandoujia/update/LocalUpdateService;->c:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v1}, Lcom/wandoujia/update/protocol/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "notification_show_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v1, Ld;->k:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/update/LocalUpdateService;->a(Landroid/os/Message;)V

    .line 60
    return-void

    .line 30
    :pswitch_1
    const-string v2, "notification_show_version"

    invoke-static {v2}, Ld;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/update/LocalUpdateService;->c:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v3}, Lcom/wandoujia/update/protocol/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    .line 32
    goto :goto_0

    :cond_1
    move v0, v1

    .line 30
    goto :goto_1

    .line 36
    :pswitch_2
    const-string v2, "notification_show_version"

    invoke-static {v2}, Ld;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wandoujia/update/LocalUpdateService;->c:Lcom/wandoujia/update/protocol/UpdateInfo;

    invoke-virtual {v3}, Lcom/wandoujia/update/protocol/UpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    .line 38
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "notification_show_date"

    sget-object v6, Ld;->k:Landroid/content/SharedPreferences;

    const-wide/16 v8, 0x0

    invoke-interface {v6, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-wide v6, Lcom/wandoujia/base/utils/DateUtil;->DAY:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_3

    :goto_3
    or-int v1, v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 36
    goto :goto_2

    :cond_3
    move v0, v1

    .line 38
    goto :goto_3

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
