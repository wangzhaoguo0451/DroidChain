.class public final Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;
.super Ljava/lang/Object;
.source "UpgradeNotifyCardGenerator.java"

# interfaces
.implements Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator;


# static fields
.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;


# instance fields
.field final a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lexh;

    invoke-direct {v0}, Lexh;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->b:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Lexi;

    invoke-direct {v0, p0}, Lexi;-><init>(Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;)V

    .line 112
    new-instance v0, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;

    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/base/concurrent/CachedThreadPoolExecutorWithCapacity;-><init>(IJ)V

    iput-object v0, p0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a:Ljava/util/concurrent/Executor;

    .line 116
    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;Ljava/util/HashMap;)Landroid/app/Notification;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "{appList}"

    invoke-static {p0}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "{appNum}"

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "{savedTraffic}"

    invoke-static {p0, p0}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->title:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->message:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->b(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {p2}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->c(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {p2}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->d(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {p2}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->e(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v6, Lbb;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lbb;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lbb;->b(I)V

    invoke-virtual {v6, v1}, Lbb;->d(Ljava/lang/CharSequence;)Lbb;

    move-result-object v7

    const v8, 0x7f020487

    invoke-virtual {v7, v8}, Lbb;->a(I)Lbb;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lbb;->a(J)Lbb;

    move-result-object v7

    invoke-virtual {v7, v1}, Lbb;->a(Ljava/lang/CharSequence;)Lbb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbb;->b(Ljava/lang/CharSequence;)Lbb;

    move-result-object v0

    iput-object v2, v0, Lbb;->d:Landroid/app/PendingIntent;

    iget-object v1, p1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->leftButton:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lbb;->a(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Lbb;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->rightButton:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lbb;->a(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Lbb;

    move-result-object v0

    invoke-virtual {v0, v5}, Lbb;->a(Landroid/app/PendingIntent;)Lbb;

    invoke-virtual {v6}, Lbb;->a()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/HashMap;)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 507
    .line 509
    :try_start_0
    const-string v1, "wdj://me/upgrade_apps"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 511
    :goto_0
    if-nez v1, :cond_0

    .line 522
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 516
    :cond_0
    const-string v0, "launch_from"

    const-string v2, "notification_app"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v0, "launch_keyword"

    const-string v2, "normal_app_upgrade"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 521
    const-string v0, "log_params"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 522
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 397
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 401
    :cond_0
    return-object p0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 344
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 345
    invoke-static {p0, p1}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->a(Ljava/util/List;Ljava/util/List;)J

    move-result-wide v2

    .line 346
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 347
    const-string v0, ""

    .line 350
    :goto_0
    return-object v0

    .line 349
    :cond_0
    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v1

    .line 350
    const v2, 0x7f0e05e4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-static {p0}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(I)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "upgrade_show_network_disconnect_notification_count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static synthetic a(J)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "upgrade_last_show_notification_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static synthetic a(Z)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x2710

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 57
    const-string v0, "upgrade_notification_show_network_disconnect_notification"

    invoke-static {v0}, Lcom/wandoujia/p4/configs/Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    const-string v0, "alarm"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "phoenix.intent.action.NETWORK_DISCONNECT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x800

    invoke-static {v5, v1, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz p0, :cond_3

    const/16 v3, 0x13

    invoke-static {v3}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v2

    const/16 v3, 0x27e3

    invoke-virtual {v2, v3}, Ldjv;->a(I)V

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private static b(Ljava/util/HashMap;)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 528
    .line 530
    :try_start_0
    const-string v1, "wdj://me/upgrade_apps"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 532
    :goto_0
    if-nez v1, :cond_0

    .line 539
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 537
    :cond_0
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 538
    const-string v0, "log_params"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 539
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 354
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    .line 357
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 360
    :cond_1
    sget-object v0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->b:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v3

    .line 363
    :goto_1
    if-ge v2, v4, :cond_2

    .line 364
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getDownloadCount()I

    move-result v0

    const v5, 0x7a1200

    if-lt v0, v5, :cond_2

    .line 366
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 371
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v1

    .line 374
    goto :goto_0
.end method

.method private static b(I)V
    .locals 2
    .parameter

    .prologue
    .line 602
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 603
    const-string v1, "upgrade_show_same_notification_count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 604
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 605
    return-void
.end method

.method public static synthetic b(J)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "upgrade_last_show_network_disconnect_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private static c(Ljava/util/HashMap;)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 544
    new-instance v0, Landroid/content/Intent;

    const-string v1, "phoenix.intent.action.UPGRADE_ALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 545
    const-string v1, "log_params"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 546
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized c()Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;
    .locals 2

    .prologue
    .line 119
    const-class v1, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->c:Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;

    invoke-direct {v0}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->c:Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;

    .line 122
    :cond_0
    sget-object v0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->c:Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/appmanager/LocalAppInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const v6, 0x7f0e05da

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 378
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const-string v0, ""

    .line 389
    :goto_0
    return-object v0

    .line 381
    :cond_0
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 382
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 383
    new-array v0, v5, [Ljava/lang/Object;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {v1, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 386
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 387
    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 389
    :cond_2
    new-array v0, v5, [Ljava/lang/Object;

    const-string v3, "\u3001"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-virtual {v1, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Ljava/util/HashMap;)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 551
    .line 553
    :try_start_0
    const-string v1, "wdj://me/upgrade_apps"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 555
    :goto_0
    if-nez v1, :cond_0

    .line 566
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 560
    :cond_0
    const-string v0, "launch_from"

    const-string v2, "notification_app"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    const-string v0, "launch_keyword"

    const-string v2, "normal_app_upgrade"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 565
    const-string v0, "log_params"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 566
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_1
.end method

.method public static synthetic d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic e()I
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "upgrade_show_network_disconnect_notification_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static e(Ljava/util/HashMap;)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 571
    new-instance v0, Landroid/content/Intent;

    const-string v1, "phoenix.intent.action.UPGRADE_NOTIFICATION_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    const-string v1, "log_params"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 573
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f()J
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "upgrade_last_show_network_disconnect_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic g()Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static h()J
    .locals 4

    .prologue
    .line 588
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "upgrade_last_show_notification_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static i()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/app/upgrade/UpgradeNotificationConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    const-string v0, "upgrade_notification_text_config"

    invoke-static {v0}, Lcom/wandoujia/p4/configs/Config;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 639
    new-instance v1, Lcvo;

    invoke-direct {v1}, Lcvo;-><init>()V

    .line 641
    :try_start_0
    new-instance v2, Lexk;

    invoke-direct {v2}, Lexk;-><init>()V

    invoke-virtual {v2}, Lexk;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcvo;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 643
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Lcom/wandoujia/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 652
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 647
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 651
    new-instance v1, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;

    invoke-direct {v1}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$DefaultUpgradeNotificationConfig;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;->HIGH:Lcom/wandoujia/jupiter/notification/notifycard/generator/INotifyCardGenerator$NotifyPriority;

    return-object v0
.end method

.method public final b()Ldjz;
    .locals 14

    .prologue
    const/4 v3, 0x1

    const v13, 0x7f020487

    const/16 v12, 0x10

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 167
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lj;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 263
    :goto_0
    return-object v0

    .line 171
    :cond_0
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    .line 172
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->l()F

    move-result v0

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 174
    long-to-float v2, v6

    const v5, 0x4ca4cb80

    mul-float/2addr v0, v5

    sub-float v0, v2, v0

    invoke-static {}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->h()J

    move-result-wide v8

    long-to-float v2, v8

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-static {}, Lewx;->a()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    cmp-long v0, v6, v8

    if-gez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 176
    goto :goto_0

    .line 179
    :cond_2
    invoke-static {v4, v4}, Lewx;->b(ZZ)Z

    .line 180
    invoke-static {}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->a()Ljava/util/List;

    move-result-object v0

    .line 182
    invoke-static {}, Lewx;->b()J

    move-result-wide v6

    invoke-static {}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->h()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_3

    .line 183
    invoke-static {v4}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->b(I)V

    .line 185
    :cond_3
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "upgrade_show_same_notification_count"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v5, v2, 0x1

    .line 187
    const/4 v2, 0x3

    if-le v5, v2, :cond_4

    move-object v0, v1

    .line 188
    goto :goto_0

    .line 190
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v1

    .line 191
    goto :goto_0

    .line 193
    :cond_5
    invoke-static {v0}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 194
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 195
    goto :goto_0

    .line 197
    :cond_6
    invoke-static {v5}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->b(I)V

    .line 199
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_7

    move v2, v3

    .line 203
    :goto_1
    invoke-static {v6}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 205
    invoke-static {}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->i()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v0, v1

    .line 207
    goto/16 :goto_0

    :cond_7
    move v2, v4

    .line 201
    goto :goto_1

    .line 209
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v10, v5, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 210
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotificationConfig;

    .line 211
    if-nez v0, :cond_9

    move-object v0, v1

    .line 212
    goto/16 :goto_0

    .line 215
    :cond_9
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 216
    const-string v1, "app_num"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "show_count"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/appmanager/LocalAppInfo;

    .line 222
    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 224
    :cond_a
    const-string v1, "pkg_list"

    const-string v8, ","

    invoke-static {v8, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v1, "notification_show_time"

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v5, v10, v11}, Ljava/util/Date;-><init>(J)V

    const-string v8, "yyyyMMddHHmm"

    invoke-static {v5, v8}, Lgcy;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_b

    .line 230
    const-string v1, "notification_type"

    sget-object v2, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;->ONE_APP:Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;

    invoke-virtual {v2}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/appmanager/LocalAppInfo;

    iget-object v0, v0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotificationConfig;->oneAppText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    iget-object v2, v0, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->title:Ljava/lang/String;

    const-string v3, "{appName}"

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->message:Ljava/lang/String;

    const-string v5, "{appName}"

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v9}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->c(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-static {v9}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->d(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {v9}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->e(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v8, Lbb;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Lbb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v12}, Lbb;->b(I)V

    invoke-virtual {v8, v2}, Lbb;->d(Ljava/lang/CharSequence;)Lbb;

    move-result-object v10

    invoke-virtual {v10, v13}, Lbb;->a(I)Lbb;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lbb;->a(J)Lbb;

    move-result-object v10

    invoke-virtual {v10, v2}, Lbb;->a(Ljava/lang/CharSequence;)Lbb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbb;->b(Ljava/lang/CharSequence;)Lbb;

    move-result-object v1

    iput-object v3, v1, Lbb;->d:Landroid/app/PendingIntent;

    iget-object v2, v0, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->leftButton:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lbb;->a(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Lbb;

    move-result-object v1

    iget-object v0, v0, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->rightButton:Ljava/lang/String;

    invoke-virtual {v1, v0, v6}, Lbb;->a(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Lbb;

    move-result-object v0

    invoke-virtual {v0, v7}, Lbb;->a(Landroid/app/PendingIntent;)Lbb;

    invoke-virtual {v8}, Lbb;->a()Landroid/app/Notification;

    move-result-object v0

    .line 246
    :goto_3
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "upgrade_todo_card_handled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 247
    new-instance v1, Ldjz;

    invoke-direct {v1}, Ldjz;-><init>()V

    .line 248
    const/16 v2, 0x27db

    iput v2, v1, Ldjz;->a:I

    .line 249
    iput-object v0, v1, Ldjz;->b:Landroid/app/Notification;

    .line 250
    new-instance v0, Ldjy;

    invoke-direct {v0, p0, v9}, Ldjy;-><init>(Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;Ljava/util/HashMap;)V

    iput-object v0, v1, Ldjz;->c:Ldjy;

    move-object v0, v1

    .line 263
    goto/16 :goto_0

    .line 233
    :cond_b
    if-nez v2, :cond_c

    .line 235
    const-string v1, "notification_type"

    sget-object v2, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;->MULTI_APP:Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;

    invoke-virtual {v2}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, v0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotificationConfig;->multiAppText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "{appList}"

    invoke-static {v6}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "{appNum}"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "{savedTraffic}"

    invoke-static {v6, v7}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->title:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->message:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v9}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->c(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-static {v9}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->d(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {v9}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->e(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v8, Lbb;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Lbb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v12}, Lbb;->b(I)V

    invoke-virtual {v8, v2}, Lbb;->d(Ljava/lang/CharSequence;)Lbb;

    move-result-object v10

    invoke-virtual {v10, v13}, Lbb;->a(I)Lbb;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lbb;->a(J)Lbb;

    move-result-object v10

    invoke-virtual {v10, v2}, Lbb;->a(Ljava/lang/CharSequence;)Lbb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbb;->b(Ljava/lang/CharSequence;)Lbb;

    move-result-object v1

    iput-object v3, v1, Lbb;->d:Landroid/app/PendingIntent;

    iget-object v2, v0, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->leftButton:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lbb;->a(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Lbb;

    move-result-object v1

    iget-object v0, v0, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->rightButton:Ljava/lang/String;

    invoke-virtual {v1, v0, v6}, Lbb;->a(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Lbb;

    move-result-object v0

    invoke-virtual {v0, v7}, Lbb;->a(Landroid/app/PendingIntent;)Lbb;

    invoke-virtual {v8}, Lbb;->a()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_3

    .line 241
    :cond_c
    const-string v1, "notification_type"

    sget-object v2, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;->PRE_DOWNLOADED:Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;

    invoke-virtual {v2}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator$NotificationType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, v0, Lcom/wandoujia/p4/app/upgrade/UpgradeNotificationConfig;->preDownloadText:Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "{appList}"

    invoke-static {v6}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "{appNum}"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "{savedTraffic}"

    invoke-static {v6, v7}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->title:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->message:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->a(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v9}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->c(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-static {v9}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->d(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {v9}, Lcom/wandoujia/p4/app/upgrade/UpgradeNotifyCardGenerator;->e(Ljava/util/HashMap;)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v8, Lbb;

    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Lbb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v12}, Lbb;->b(I)V

    invoke-virtual {v8, v2}, Lbb;->d(Ljava/lang/CharSequence;)Lbb;

    move-result-object v10

    invoke-virtual {v10, v13}, Lbb;->a(I)Lbb;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Lbb;->a(J)Lbb;

    move-result-object v10

    invoke-virtual {v10, v2}, Lbb;->a(Ljava/lang/CharSequence;)Lbb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lbb;->b(Ljava/lang/CharSequence;)Lbb;

    move-result-object v1

    iput-object v3, v1, Lbb;->d:Landroid/app/PendingIntent;

    iget-object v2, v0, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->leftButton:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lbb;->a(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Lbb;

    move-result-object v1

    iget-object v0, v0, Lcom/wandoujia/p4/app/upgrade/NotificationTextConfig;->rightButton:Ljava/lang/String;

    invoke-virtual {v1, v0, v6}, Lbb;->a(Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Lbb;

    move-result-object v0

    invoke-virtual {v0, v7}, Lbb;->a(Landroid/app/PendingIntent;)Lbb;

    invoke-virtual {v8}, Lbb;->a()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_3
.end method
