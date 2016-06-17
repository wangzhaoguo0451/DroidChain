.class public final Ldhq;
.super Lhhl;
.source "AppUpgradeFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Ldhq;->a:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 330
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lhgd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lhgd;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->v()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldhq;->a:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/wandoujia/jupiter/activity/AppAutoInstallHintDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    iget-object v1, p0, Ldhq;->a:Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;

    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/library/fragment/AppUpgradeFragment;->startActivity(Landroid/content/Intent;)V

    .line 337
    :cond_0
    new-instance v0, Ldhr;

    invoke-direct {v0}, Ldhr;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Ld;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 405
    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->UPGRADE_ALL:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Ldhq;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lhhl;

    .line 411
    const/4 v0, 0x1

    return v0
.end method
