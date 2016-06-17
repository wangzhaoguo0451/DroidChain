.class public final Lewx;
.super Ljava/lang/Object;
.source "UpgradableAppManager.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lexg;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lexf;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lefm;

.field private static final d:Lcom/wandoujia/appmanager/LocalAppChangedListener;

.field private static e:Landroid/content/Context;

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lewx;->a:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lewx;->b:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Lewy;

    invoke-direct {v0}, Lewy;-><init>()V

    sput-object v0, Lewx;->c:Lefm;

    .line 118
    new-instance v0, Lewz;

    invoke-direct {v0}, Lewz;-><init>()V

    sput-object v0, Lewx;->d:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    .line 169
    const/4 v0, 0x0

    sput v0, Lewx;->f:I

    return-void
.end method

.method static synthetic a(I)I
    .locals 0
    .parameter

    .prologue
    .line 75
    sput p0, Lewx;->f:I

    return p0
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 612
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_show_important_upgrade_notification_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Intent;)Ljava/util/HashMap;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    const-string v0, "log_params"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 646
    const/4 v1, 0x0

    .line 647
    instance-of v2, v0, Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 649
    :try_start_0
    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_0
    if-nez v0, :cond_0

    .line 655
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 657
    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(J)V
    .locals 2
    .parameter

    .prologue
    .line 75
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_upgrade_info_updated_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lewx;->e:Landroid/content/Context;

    .line 175
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    sget-object v1, Lewx;->c:Lefm;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Lefm;)V

    .line 176
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    sget-object v1, Lewx;->d:Lcom/wandoujia/appmanager/LocalAppChangedListener;

    invoke-virtual {v0, v1}, Lcom/wandoujia/appmanager/AppManager;->a(Lcom/wandoujia/appmanager/LocalAppChangedListener;)V

    .line 177
    invoke-static {p0}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lewx;->b(Z)V

    .line 178
    return-void
.end method

.method static synthetic a(Lcom/wandoujia/appmanager/LocalAppInfo;Ldaq;I)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getImportantUpdate()Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/model/MarketAppInfo$ImportantUpgradeInfo;->getDetail()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getNotificationModel()Lcom/wandoujia/push/protocol/NotificationModel;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel;->getContent()Lcom/wandoujia/push/protocol/NotificationModel$Content;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel;->getContent()Lcom/wandoujia/push/protocol/NotificationModel$Content;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/push/protocol/NotificationModel$Content;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "launch_from"

    const-string v3, "notification_app"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "launch_keyword"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "important_app_upgrade|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/wandoujia/jupiter/notification/NotificationController;

    sget-object v3, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;->IMPORTANT_APP_UPGRADE:Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    invoke-direct {v1, v2, p2, v3, v0}, Lcom/wandoujia/jupiter/notification/NotificationController;-><init>(Lcom/wandoujia/push/protocol/NotificationModel;ILcom/wandoujia/jupiter/notification/NotificationController$NotificationType;Landroid/os/Bundle;)V

    new-instance v0, Ldjr;

    invoke-direct {v0, v2, p0}, Ldjr;-><init>(Lcom/wandoujia/push/protocol/NotificationModel;Lcom/wandoujia/appmanager/LocalAppInfo;)V

    new-instance v2, Ldjs;

    invoke-direct {v2, v1, v0}, Ldjs;-><init>(Lcom/wandoujia/jupiter/notification/NotificationController;Ldjr;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v2, v0}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v0, Lewx;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getUpgradeInfo()Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getChangeLog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getSize()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lewx;->e:Landroid/content/Context;

    const v3, 0x7f0e0149

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "wdj://me/upgrade_apps"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "upgrade_package_name"

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_1

    const-string v2, "upgrade_app_info"

    invoke-virtual {v3, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "phoenix.intent.extra.STARTER_NAME"

    const-string v4, "ImportantUpgradeNotification"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "launch_keyword"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "important_app_upgrade|"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "launch_from"

    const-string v4, "notification_app"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lewx;->e:Landroid/content/Context;

    const/high16 v4, 0x800

    invoke-static {v2, p2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v2, Landroid/content/Intent;

    const-string v5, "phoenix.intent.action.UPGRADE_IMPORTANT_APP"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "upgrade_app_info"

    invoke-virtual {v2, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v5, "notification_id"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v5, Lewx;->e:Landroid/content/Context;

    const/high16 v6, 0x800

    invoke-static {v5, p2, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p1}, Ldaq;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v6, Lewx;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020031

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/widget/RemoteViews;

    sget-object v8, Lewx;->e:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f03003a

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    if-eqz v2, :cond_5

    const v8, 0x7f0c016d

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :cond_4
    :goto_3
    invoke-virtual {v7, v8, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_5
    const v2, 0x7f0c0078

    invoke-virtual {v7, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0c0015

    invoke-virtual {v7, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0c016f

    invoke-virtual {v7, v2, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v2, 0x7f0c0170

    sget-object v6, Lewx;->e:Landroid/content/Context;

    const v8, 0x7f0e05ce

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f0c016e

    invoke-virtual {v7, v2, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v2, 0x7f0c0015

    sget-object v5, Lewx;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v2, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    new-instance v2, Lbb;

    sget-object v5, Lewx;->e:Landroid/content/Context;

    invoke-direct {v2, v5}, Lbb;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Lbb;->b(I)V

    invoke-virtual {v2, v0}, Lbb;->d(Ljava/lang/CharSequence;)Lbb;

    move-result-object v5

    invoke-virtual {v5, v0}, Lbb;->a(Ljava/lang/CharSequence;)Lbb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbb;->b(Ljava/lang/CharSequence;)Lbb;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lbb;->a(J)Lbb;

    move-result-object v0

    const v1, 0x7f020487

    invoke-virtual {v0, v1}, Lbb;->a(I)Lbb;

    move-result-object v0

    iput-object v4, v0, Lbb;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7}, Lbb;->a(Landroid/widget/RemoteViews;)Lbb;

    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->NOTIFICATION_CLICK:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->START:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>()V

    sget-object v4, Lcom/wandoujia/ripple_framework/log/Logger$Module;->NOTIFICATION:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    invoke-virtual {v4}, Lcom/wandoujia/ripple_framework/log/Logger$Module;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->module(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-virtual {v1, v4}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->action(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->NOTIFICATION:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-virtual {v1, v4}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->element(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->view_log_package(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    new-instance v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    new-instance v3, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    invoke-direct {v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;->IMPORTANT_APP_UPGRADE:Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;

    invoke-virtual {v4}, Lcom/wandoujia/jupiter/notification/NotificationController$NotificationType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->sub_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ContentPackage;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->content_package(Lcom/wandoujia/logv3/model/packages/ContentPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    new-instance v3, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    invoke-direct {v3}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->resource_package(Lcom/wandoujia/logv3/model/packages/ResourcePackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v3

    invoke-virtual {v2}, Lbb;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v3, p2, v2}, Ldjv;->a(ILandroid/app/Notification;)V

    sget-object v2, Lham;->f:Lham;

    iget-object v2, v2, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    invoke-virtual {v2, v0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    goto/16 :goto_1

    :catch_0
    move-exception v3

    move-object v3, v2

    goto/16 :goto_2

    :cond_6
    const/16 v9, 0xb

    invoke-static {v9}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lewx;->e:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x1050006

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    if-lez v10, :cond_7

    if-gtz v9, :cond_8

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_8
    const/4 v11, 0x0

    invoke-static {v2, v10, v9, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_3
.end method

.method public static a(Lexf;)V
    .locals 2
    .parameter

    .prologue
    .line 672
    sget-object v1, Lewx;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 673
    :try_start_0
    sget-object v0, Lewx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lexg;)V
    .locals 3
    .parameter

    .prologue
    .line 209
    sget-object v1, Lewx;->a:Ljava/util/List;

    monitor-enter v1

    .line 212
    :try_start_0
    sget-object v0, Lewx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 213
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexg;

    .line 214
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    monitor-exit v1

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_1
    sget-object v0, Lewx;->a:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Ljava/util/List;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v3, 0x3f80

    .line 75
    invoke-static {p0}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/wandoujia/ripple_framework/util/UpgradeUtils;->c(Ljava/util/List;)V

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->m()F

    move-result v0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_2

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lewx;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    invoke-static {v8}, Lewx;->b(I)V

    :cond_0
    invoke-static {}, Lewx;->h()I

    move-result v1

    int-to-double v4, v1

    div-float v0, v3, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, v4, v0

    if-ltz v0, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-float v1, v4

    const v3, 0x4ca4cb80

    mul-float/2addr v0, v3

    sub-float v0, v1, v0

    invoke-static {}, Lewx;->a()J

    move-result-wide v4

    long-to-float v1, v4

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_3
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "last_show_important_upgrade_package"

    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lham;->f:Lham;

    const-string v3, "image"

    invoke-virtual {v1, v3}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldaa;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Ldaa;->a(Ljava/lang/String;Ldbd;)Ldaq;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    new-instance v4, Lexe;

    invoke-direct {v4, v0, v1, v3}, Lexe;-><init>(Lcom/wandoujia/appmanager/LocalAppInfo;Ldaq;I)V

    invoke-static {v4}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lewx;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lewx;->b(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_show_important_upgrade_package"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_show_important_upgrade_notification_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 75
    invoke-static {p0}, Lewx;->b(Z)V

    return-void
.end method

.method public static a(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 295
    new-instance v0, Lexd;

    invoke-direct {v0, p0, p1}, Lexd;-><init>(ZZ)V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 301
    return-void
.end method

.method public static a(Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 335
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    .line 339
    goto :goto_0

    .line 341
    :cond_3
    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getVersionCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getVersionCode()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullMD5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->getFullMD5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->isImportantUpdate()Z

    move-result v2

    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo$UpgradeInfo;->isImportantUpdate()Z

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public static b()J
    .locals 4

    .prologue
    .line 623
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_upgrade_info_updated_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(I)V
    .locals 2
    .parameter

    .prologue
    .line 639
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 640
    const-string v1, "show_notification_times_one_day"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 641
    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 642
    return-void
.end method

.method private static b(Z)V
    .locals 4
    .parameter

    .prologue
    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lexa;

    invoke-direct {v1, p0}, Lexa;-><init>(Z)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    return-void
.end method

.method public static b(Lexf;)Z
    .locals 2
    .parameter

    .prologue
    .line 678
    sget-object v1, Lewx;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 679
    :try_start_0
    sget-object v0, Lewx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(ZZ)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 313
    sget-object v0, Lewx;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    if-eqz p0, :cond_0

    sget-object v0, Lewx;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 319
    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    if-eqz p1, :cond_3

    .line 320
    :cond_1
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    move-result-object v0

    iget-boolean v1, v0, Lcom/wandoujia/appmanager/AppManager;->d:Z

    if-nez v1, :cond_2

    invoke-virtual {v0, v4}, Lcom/wandoujia/appmanager/AppManager;->b(Ljava/util/List;)V

    :cond_2
    invoke-virtual {v0, v4}, Lcom/wandoujia/appmanager/AppManager;->c(Ljava/util/List;)Z

    move-result v0

    .line 321
    if-eqz v0, :cond_5

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/wandoujia/p4/configs/Config;->a(J)V

    move v1, v0

    .line 329
    :goto_0
    sget-object v2, Lewx;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lewx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexf;

    invoke-interface {v0}, Lexf;->a()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 325
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 329
    :cond_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    return v1

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method static synthetic c()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lexb;

    invoke-direct {v0}, Lexb;-><init>()V

    invoke-static {v0}, Lcom/wandoujia/base/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lewx;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e()Ljava/util/Set;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lewx;->f:I

    return v0
.end method

.method static synthetic g()V
    .locals 5

    .prologue
    .line 75
    invoke-static {}, Lesb;->e()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lewx;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lewx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexg;

    if-eqz v0, :cond_0

    new-instance v4, Lexc;

    invoke-direct {v4, v0}, Lexc;-><init>(Lexg;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private static h()I
    .locals 3

    .prologue
    .line 634
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show_notification_times_one_day"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
