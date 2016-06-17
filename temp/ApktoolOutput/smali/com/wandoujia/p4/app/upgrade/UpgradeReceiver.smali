.class public Lcom/wandoujia/p4/app/upgrade/UpgradeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpgradeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x27db

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 46
    if-nez p2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    const-string v1, "phoenix.intent.action.APP_CHECK_UPGRADE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-static {v2, v2}, Lewx;->a(ZZ)V

    goto :goto_0

    .line 54
    :cond_2
    const-string v1, "phoenix.intent.action.UPGRADE_IMPORTANT_APP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    const-string v0, "upgrade_app_info"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 57
    const-string v1, "notification_id"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 58
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldjv;->a(I)V

    .line 59
    if-eqz v0, :cond_0

    .line 60
    sget-object v1, Lham;->f:Lham;

    const-string v2, "app_task"

    invoke-virtual {v1, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->UPGRADE_APP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-static {v0, v2}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->a(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Lcom/wandoujia/ripple_framework/model/Model;ZZ)V

    goto :goto_0

    .line 66
    :cond_3
    const-string v1, "phoenix.intent.action.UPGRADE_ALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v0

    invoke-virtual {v0, v4}, Ldjv;->a(I)V

    .line 68
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v0

    const/16 v1, 0x27e3

    invoke-virtual {v0, v1}, Ldjv;->a(I)V

    .line 70
    invoke-static {}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->c()I

    .line 71
    invoke-static {p2}, Lewx;->a(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v0

    .line 72
    const-string v1, "event_time"

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    const-string v3, "yyyyMMddHHmm"

    invoke-static {v2, v3}, Lgcy;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    const-string v1, "notification_type"

    sget-object v2, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;->NO_NETWORK:Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;

    invoke-virtual {v2}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 81
    :cond_4
    const-string v1, "phoenix.intent.action.UPGRADE_NOTIFICATION_DELETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 82
    invoke-static {p2}, Lewx;->a(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v0

    .line 83
    const-string v1, "event_time"

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    const-string v3, "yyyyMMddHHmm"

    invoke-static {v2, v3}, Lgcy;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 87
    :cond_5
    const-string v1, "phoenix.intent.action.NETWORK_DISCONNECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 88
    invoke-static {}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->c()Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;

    move-result-object v0

    iget-object v1, v0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lexj;

    invoke-direct {v2, v0}, Lexj;-><init>(Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 89
    :cond_6
    const-string v1, "phoenix.intent.action.UPGRADE_APP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v0

    invoke-virtual {v0, v4}, Ldjv;->a(I)V

    .line 91
    const-string v0, "upgrade_app_info"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    sget-object v1, Lham;->f:Lham;

    const-string v2, "app_task"

    invoke-virtual {v1, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->UPGRADE_APP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-static {v0, v2}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->a(Lcom/wandoujia/appmanager/LocalAppInfo;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/ripple_framework/model/Model;

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Lcom/wandoujia/ripple_framework/installer/AppTaskManager;->a(Lcom/wandoujia/ripple_framework/model/Model;ZZ)V

    goto/16 :goto_0
.end method
