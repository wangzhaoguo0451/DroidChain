.class public Lcom/wandoujia/ripple_framework/installer/install/impl/PackageChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 23
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 36
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 37
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v3, :cond_2

    .line 38
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->REMOVE:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    invoke-direct {v0, v2, v1}, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;)V

    move-object v1, v0

    .line 46
    :goto_1
    if-eqz v1, :cond_0

    .line 47
    sget-object v0, Lham;->f:Lham;

    const-string v2, "event_bus"

    invoke-virtual {v0, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, v1}, Lhrx;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 39
    :cond_2
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    .line 40
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->ADD:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    invoke-direct {v0, v2, v1}, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;)V

    move-object v1, v0

    goto :goto_1

    .line 41
    :cond_3
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 42
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->REPLACE:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    invoke-direct {v0, v2, v1}, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;)V

    move-object v1, v0

    goto :goto_1

    .line 43
    :cond_4
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    new-instance v0, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;

    sget-object v1, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;->CHANGE:Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;

    invoke-direct {v0, v2, v1}, Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent;-><init>(Ljava/lang/String;Lcom/wandoujia/ripple_framework/installer/install/PackageChangeEvent$EventType;)V

    move-object v1, v0

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method
