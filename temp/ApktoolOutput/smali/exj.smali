.class public final Lexj;
.super Ljava/lang/Object;
.source "UpgradeNotifyCardGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 270
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lj;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->f()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lgcy;->a(JJ)I

    move-result v1

    if-nez v1, :cond_2

    .line 280
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 287
    :goto_1
    invoke-static {v0}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(I)V

    .line 288
    invoke-static {}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->b()Ljava/util/List;

    move-result-object v0

    .line 289
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    invoke-static {v0}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 293
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 298
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-static {v2}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 302
    invoke-static {}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->g()Ljava/util/List;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 306
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotificationConfig;

    .line 307
    if-eqz v0, :cond_0

    .line 310
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 311
    const-string v4, "app_num"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v4, "show_count"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 316
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 317
    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 285
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 319
    :cond_3
    const-string v1, "pkg_list"

    const-string v5, ","

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v1, "notification_show_time"

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    const-string v5, "yyyyMMddHHmm"

    invoke-static {v4, v5}, Lgcy;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v1, "notification_type"

    sget-object v4, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;->NO_NETWORK:Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;

    invoke-virtual {v4}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v1, "event_time"

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    const-string v5, "yyyyMMddHHmm"

    invoke-static {v4, v5}, Lgcy;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v1, "frequency"

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->l()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    iget-object v0, v0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotificationConfig;->noNetworkText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    invoke-static {v2, v0, v3}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Ljava/util/List;Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;Ljava/util/HashMap;)Landroid/app/Notification;

    move-result-object v0

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->b(J)V

    .line 334
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v1

    const/16 v2, 0x27db

    invoke-virtual {v1, v2}, Ldjv;->a(I)V

    .line 335
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v1

    const/16 v2, 0x27e3

    invoke-virtual {v1, v2, v0}, Ldjv;->a(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method
