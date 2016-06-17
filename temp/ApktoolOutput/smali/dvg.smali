.class public final Ldvg;
.super Lhhl;
.source "MythingMenuView.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

.field private synthetic b:Lcom/wandoujia/jupiter/toolbar/MythingMenuView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;Lcom/wandoujia/ripple_framework/download/DownloadManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Ldvg;->b:Lcom/wandoujia/jupiter/toolbar/MythingMenuView;

    iput-object p2, p0, Ldvg;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Ldvg;->a:Lcom/wandoujia/ripple_framework/download/DownloadManager;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    iget-object v1, p0, Ldvg;->b:Lcom/wandoujia/jupiter/toolbar/MythingMenuView;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    const-string v3, "wdj://me/downloads"

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    .line 90
    sget-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->MENU_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v2, "wdj://me/downloads"

    invoke-virtual {p0, p1, v0, v1, v2}, Ldvg;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;)Lhhl;

    .line 109
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Ldvg;->b:Lcom/wandoujia/jupiter/toolbar/MythingMenuView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->a(Lcom/wandoujia/jupiter/toolbar/MythingMenuView;)I

    move-result v0

    if-lez v0, :cond_1

    .line 94
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    iget-object v1, p0, Ldvg;->b:Lcom/wandoujia/jupiter/toolbar/MythingMenuView;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    const-string v3, "wdj://me/upgrade_apps"

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    .line 98
    sget-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->MENU_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v2, "wdj://me/upgrade_apps"

    invoke-virtual {p0, p1, v0, v1, v2}, Ldvg;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;)Lhhl;

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    iget-object v1, p0, Ldvg;->b:Lcom/wandoujia/jupiter/toolbar/MythingMenuView;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/toolbar/MythingMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    const-string v3, "wdj://me/apps"

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    .line 106
    sget-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->UI:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->MENU_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v2, "wdj://me/apps"

    invoke-virtual {p0, p1, v0, v1, v2}, Ldvg;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;)Lhhl;

    goto :goto_0
.end method
