.class public Lcom/wandoujia/p4/app_launcher/clean/notification/CleanNotificationService;
.super Landroid/app/IntentService;
.source "CleanNotificationService.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "AppLauncher_CleanNotificationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/notification/CleanNotificationService;->a:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x1000

    .line 50
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->NOTIFICATION_CLICK:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>()V

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->NOTIFICATION:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    invoke-virtual {v2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->module(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->action(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->NOTIFICATION:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->element(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    const-string v2, "push_low_raw"

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->view_log_package(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    .line 59
    invoke-static {}, Leny;->b()Leny;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v2}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    invoke-virtual {v1, v0, v2}, Leny;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    .line 62
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    .line 64
    const-string v0, "CLEAN_MEMORY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e013a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wandoujia/p4/utils/ShortcutUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/app_launcher/activity/AppLauncherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app_launcher/clean/notification/CleanNotificationService;->startActivity(Landroid/content/Intent;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/MemoryUtil;->getUsedMemory(Landroid/content/Context;)J

    move-result-wide v4

    .line 75
    invoke-static {}, Lcom/wandoujia/base/utils/MemoryUtil;->getTotalMemory()J

    move-result-wide v2

    .line 76
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 80
    const-wide/16 v0, 0x64

    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int v6, v0

    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/app_launcher/clean/notification/CleanNotificationService;->a:Landroid/os/Handler;

    new-instance v1, Leyj;

    invoke-direct/range {v1 .. v6}, Leyj;-><init>(JJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/p4/app_launcher/activity/CleanPopupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app_launcher/clean/notification/CleanNotificationService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
