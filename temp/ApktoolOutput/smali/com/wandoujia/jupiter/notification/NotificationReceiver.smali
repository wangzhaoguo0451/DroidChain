.class public Lcom/wandoujia/jupiter/notification/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 92
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p1, p2}, Ld;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    const-string v0, "notification_type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;->valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->NOTIFICATION_CLICK:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v2

    new-instance v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    invoke-direct {v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>()V

    sget-object v4, Lcom/wandoujia/ripple_framework/log/Logger$Module;->NOTIFICATION:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    invoke-virtual {v4}, Lcom/wandoujia/ripple_framework/log/Logger$Module;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->module(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-virtual {v3, v4}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->action(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->NOTIFICATION:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-virtual {v3, v4}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->element(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->view_log_package(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    new-instance v3, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    new-instance v4, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    invoke-direct {v4}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;-><init>()V

    const-string v5, "id"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->sub_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ContentPackage;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->content_package(Lcom/wandoujia/logv3/model/packages/ContentPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    new-instance v0, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;-><init>()V

    const-string v4, "id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    move-result-object v0

    const-string v4, "standard_view_type"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    move-result-object v0

    const-string v4, "big_view_type"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->sub_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    move-result-object v0

    const-string v4, "click_view_type"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->status(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    move-result-object v0

    const-string v4, "click_view_text"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->sub_status(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/CardPackage;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->card_package(Lcom/wandoujia/logv3/model/packages/CardPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    new-instance v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;-><init>()V

    sget-object v4, Ldjx;->a:[I

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->resource_package(Lcom/wandoujia/logv3/model/packages/ResourcePackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    invoke-virtual {v0, v2, v3}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    .line 40
    :cond_1
    return-void

    .line 38
    :pswitch_0
    const-string v1, "package_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    goto :goto_0

    :pswitch_1
    const-string v1, "channel"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
