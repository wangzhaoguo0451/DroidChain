.class public final Ldjs;
.super Landroid/os/AsyncTask;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Ldjr;

.field private synthetic b:Lcom/wandoujia/jupiter/notification/NotificationController;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/notification/NotificationController;Ldjr;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    iput-object p2, p0, Ldjs;->a:Ldjr;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v0}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Lcom/wandoujia/jupiter/notification/NotificationController;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x800

    const/4 v5, 0x0

    const/16 v8, 0x10

    const/4 v3, -0x1

    .line 87
    check-cast p1, Ljava/util/Map;

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v2}, Lcom/wandoujia/jupiter/notification/NotificationController;->b(Lcom/wandoujia/jupiter/notification/NotificationController;)Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/wandoujia/jupiter/activity/HomeActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v2}, Lcom/wandoujia/jupiter/notification/NotificationController;->b(Lcom/wandoujia/jupiter/notification/NotificationController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v4, Lbb;

    iget-object v2, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v2}, Lcom/wandoujia/jupiter/notification/NotificationController;->b(Lcom/wandoujia/jupiter/notification/NotificationController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2}, Lbb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v8}, Lbb;->b(I)V

    iget-object v2, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v2}, Lcom/wandoujia/jupiter/notification/NotificationController;->c(Lcom/wandoujia/jupiter/notification/NotificationController;)Lcom/wandoujia/push/protocol/NotificationModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel;->getContent()Lcom/wandoujia/push/protocol/NotificationModel$Content;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$Content;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lbb;->d(Ljava/lang/CharSequence;)Lbb;

    move-result-object v2

    iget-object v5, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v5}, Lcom/wandoujia/jupiter/notification/NotificationController;->c(Lcom/wandoujia/jupiter/notification/NotificationController;)Lcom/wandoujia/push/protocol/NotificationModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/push/protocol/NotificationModel;->getContent()Lcom/wandoujia/push/protocol/NotificationModel$Content;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/push/protocol/NotificationModel$Content;->getSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lbb;->a(Ljava/lang/CharSequence;)Lbb;

    move-result-object v2

    iget-object v5, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v5}, Lcom/wandoujia/jupiter/notification/NotificationController;->c(Lcom/wandoujia/jupiter/notification/NotificationController;)Lcom/wandoujia/push/protocol/NotificationModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/push/protocol/NotificationModel;->getContent()Lcom/wandoujia/push/protocol/NotificationModel$Content;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/push/protocol/NotificationModel$Content;->getDetail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lbb;->b(Ljava/lang/CharSequence;)Lbb;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lbb;->a(J)Lbb;

    move-result-object v2

    iput-object v0, v2, Lbb;->d:Landroid/app/PendingIntent;

    const v5, 0x7f020487

    invoke-virtual {v2, v5}, Lbb;->a(I)Lbb;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-le v2, v5, :cond_0

    iput-object v0, v4, Lbb;->e:Landroid/app/PendingIntent;

    const/16 v0, 0x80

    invoke-virtual {v4, v0}, Lbb;->b(I)V

    :cond_0
    iget-object v0, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v0}, Lcom/wandoujia/jupiter/notification/NotificationController;->c(Lcom/wandoujia/jupiter/notification/NotificationController;)Lcom/wandoujia/push/protocol/NotificationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel;->getViewType()Lcom/wandoujia/push/protocol/NotificationModel$ViewType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wandoujia/push/protocol/NotificationModel$ViewType;->getStandardViewType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v5}, Lcom/wandoujia/push/protocol/NotificationModel$ViewType;->getStandardViewType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;->valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;)I

    move-result v0

    :goto_0
    if-eq v0, v3, :cond_2

    invoke-virtual {v5}, Lcom/wandoujia/push/protocol/NotificationModel$ViewType;->getStandardViewType()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;->PICTURE_ONLY:Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;

    invoke-virtual {v6}, Lcom/wandoujia/jupiter/notification/NotificationController$ViewType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v2}, Lcom/wandoujia/jupiter/notification/NotificationController;->c(Lcom/wandoujia/jupiter/notification/NotificationController;)Lcom/wandoujia/push/protocol/NotificationModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel;->getImageView()Lcom/wandoujia/push/protocol/NotificationModel$ImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getSmallImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v6, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v6}, Lcom/wandoujia/jupiter/notification/NotificationController;->b(Lcom/wandoujia/jupiter/notification/NotificationController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    const-string v6, "standard"

    invoke-static {v0, v2, p1, v6}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Lcom/wandoujia/jupiter/notification/NotificationController;Landroid/widget/RemoteViews;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lbb;->a(Landroid/widget/RemoteViews;)Lbb;

    :cond_2
    :try_start_0
    iget-object v0, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v0}, Lcom/wandoujia/jupiter/notification/NotificationController;->c(Lcom/wandoujia/jupiter/notification/NotificationController;)Lcom/wandoujia/push/protocol/NotificationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel;->getContent()Lcom/wandoujia/push/protocol/NotificationModel$Content;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel$Content;->getContentIntent()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ldju;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Ldju;-><init>(B)V

    const-string v6, "standard"

    iput-object v6, v2, Ldju;->a:Ljava/lang/String;

    const-string v6, "content"

    iput-object v6, v2, Ldju;->b:Ljava/lang/String;

    const/high16 v6, 0x1000

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v6, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v6, v0, v2}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Lcom/wandoujia/jupiter/notification/NotificationController;Landroid/content/Intent;Ldju;)V

    iget-object v2, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v2}, Lcom/wandoujia/jupiter/notification/NotificationController;->b(Lcom/wandoujia/jupiter/notification/NotificationController;)Landroid/content/Context;

    move-result-object v2

    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {v2, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v4, Lbb;->d:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v5}, Lcom/wandoujia/push/protocol/NotificationModel$ViewType;->getBigViewType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v5}, Lcom/wandoujia/push/protocol/NotificationModel$ViewType;->getBigViewType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;)I

    move-result v0

    move v2, v0

    :goto_2
    if-eq v2, v3, :cond_6

    invoke-static {}, Lcom/wandoujia/jupiter/notification/NotificationController;->a()I

    move-result v0

    if-lt v0, v8, :cond_6

    invoke-virtual {v5}, Lcom/wandoujia/push/protocol/NotificationModel$ViewType;->getBigViewType()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->PICTURE_ONLY:Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;

    invoke-virtual {v3}, Lcom/wandoujia/jupiter/notification/NotificationController$BigViewType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v0}, Lcom/wandoujia/jupiter/notification/NotificationController;->c(Lcom/wandoujia/jupiter/notification/NotificationController;)Lcom/wandoujia/push/protocol/NotificationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel;->getImageView()Lcom/wandoujia/push/protocol/NotificationModel$ImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/push/protocol/NotificationModel$ImageView;->getBigImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v3, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v3}, Lcom/wandoujia/jupiter/notification/NotificationController;->b(Lcom/wandoujia/jupiter/notification/NotificationController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    const-string v3, "extend"

    invoke-static {v2, v0, p1, v3}, Lcom/wandoujia/jupiter/notification/NotificationController;->a(Lcom/wandoujia/jupiter/notification/NotificationController;Landroid/widget/RemoteViews;Ljava/util/Map;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v4}, Lbb;->a()Landroid/app/Notification;

    move-result-object v2

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/wandoujia/jupiter/notification/NotificationController;->a()I

    move-result v3

    if-lt v3, v8, :cond_4

    iput-object v0, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_4
    invoke-static {}, Lcom/wandoujia/jupiter/notification/NotificationController;->a()I

    move-result v0

    if-lt v0, v8, :cond_5

    const/4 v0, 0x2

    iput v0, v2, Landroid/app/Notification;->priority:I

    :cond_5
    invoke-static {}, Ldjv;->a()Ldjv;

    move-result-object v0

    iget-object v3, p0, Ldjs;->b:Lcom/wandoujia/jupiter/notification/NotificationController;

    invoke-static {v3}, Lcom/wandoujia/jupiter/notification/NotificationController;->d(Lcom/wandoujia/jupiter/notification/NotificationController;)I

    move-result v3

    invoke-virtual {v0, v3, v2}, Ldjv;->a(ILandroid/app/Notification;)V

    iget-object v0, p0, Ldjs;->a:Ldjr;

    new-instance v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->NOTIFICATION_CLICK:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->START:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

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

    invoke-virtual {v3, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->view_log_package(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    new-instance v1, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    new-instance v3, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    invoke-direct {v3}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;-><init>()V

    iget-object v4, v0, Ldjr;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v4}, Lcom/wandoujia/push/protocol/NotificationModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    move-result-object v3

    iget-object v4, v0, Ldjr;->b:Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-virtual {v4}, Lcom/wandoujia/appmanager/LocalAppInfo;->getTitle()Ljava/lang/String;

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

    new-instance v3, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    invoke-direct {v3}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;-><init>()V

    iget-object v4, v0, Ldjr;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v4}, Lcom/wandoujia/push/protocol/NotificationModel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    move-result-object v3

    iget-object v4, v0, Ldjr;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v4}, Lcom/wandoujia/push/protocol/NotificationModel;->getViewType()Lcom/wandoujia/push/protocol/NotificationModel$ViewType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/push/protocol/NotificationModel$ViewType;->getStandardViewType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    move-result-object v3

    iget-object v4, v0, Ldjr;->a:Lcom/wandoujia/push/protocol/NotificationModel;

    invoke-virtual {v4}, Lcom/wandoujia/push/protocol/NotificationModel;->getViewType()Lcom/wandoujia/push/protocol/NotificationModel$ViewType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wandoujia/push/protocol/NotificationModel$ViewType;->getBigViewType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->sub_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/CardPackage;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->card_package(Lcom/wandoujia/logv3/model/packages/CardPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    new-instance v3, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    invoke-direct {v3}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;-><init>()V

    iget-object v0, v0, Ldjr;->b:Lcom/wandoujia/appmanager/LocalAppInfo;

    invoke-virtual {v0}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->resource_package(Lcom/wandoujia/logv3/model/packages/ResourcePackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    goto/16 :goto_3

    :cond_7
    move v2, v3

    goto/16 :goto_2

    :cond_8
    move v0, v3

    goto/16 :goto_0
.end method
