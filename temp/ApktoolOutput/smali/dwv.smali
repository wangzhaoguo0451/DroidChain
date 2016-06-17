.class public final Ldwv;
.super Lhhl;
.source "AutoInstallCardView.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/view/AutoInstallCardView;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/view/AutoInstallCardView;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Ldwv;->a:Lcom/wandoujia/jupiter/view/AutoInstallCardView;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Ldwv;->a:Lcom/wandoujia/jupiter/view/AutoInstallCardView;

    invoke-static {v0}, Lcom/wandoujia/jupiter/view/AutoInstallCardView;->a(Lcom/wandoujia/jupiter/view/AutoInstallCardView;)V

    .line 87
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->w()V

    .line 90
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/SettingsUtil;->jumpToAccessibilitySettings(Landroid/content/Context;)Z

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wandoujia/p4/app/activity/AppAutoInstallSettingPopupDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    sget-object v0, Lcom/wandoujia/ripple_framework/log/Logger$Module;->APPS:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->BUTTON:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    const-string v2, "system://settings/auto_install"

    invoke-virtual {p0, p1, v0, v1, v2}, Ldwv;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Ljava/lang/String;)Lhhl;

    .line 102
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
