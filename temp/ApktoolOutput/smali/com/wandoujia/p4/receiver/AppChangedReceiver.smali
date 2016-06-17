.class public Lcom/wandoujia/p4/receiver/AppChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 27
    const-string v0, "APP_CHANGE_ACTION"

    const-class v1, Lcom/wandoujia/base/services/AlarmService;

    invoke-static {p1, v0, v1}, Lcom/wandoujia/base/services/AlarmService;->scheduleAlarm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 29
    if-eqz p2, :cond_1

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;->READY:Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;

    invoke-virtual {v1, v2, v0}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;Ljava/util/List;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;->REMOVED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;Ljava/util/List;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;->ADDED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;Ljava/util/List;)V

    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;->REPLACED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;Ljava/util/List;)V

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a()Lcom/wandoujia/ripple_framework/ReceiverMonitor;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;->CHANGED:Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;

    invoke-virtual {v0, v2, v1}, Lcom/wandoujia/ripple_framework/ReceiverMonitor;->a(Lcom/wandoujia/ripple_framework/ReceiverMonitor$AppActionType;Ljava/util/List;)V

    goto/16 :goto_0
.end method
