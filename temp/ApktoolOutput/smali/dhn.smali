.class final Ldhn;
.super Lhhl;
.source "AppUpgradeFragment.java"


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/wandoujia/ripple_framework/view/StatefulButton;


# direct methods
.method constructor <init>(ZLcom/wandoujia/ripple_framework/view/StatefulButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 211
    iput-boolean p1, p0, Ldhn;->a:Z

    iput-object p2, p0, Ldhn;->b:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    invoke-direct {p0}, Lhhl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    iget-boolean v0, p0, Ldhn;->a:Z

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "setting_auto_check_app_upgrade"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/wandoujia/base/utils/SharePrefSubmitor;->submit(Landroid/content/SharedPreferences$Editor;)V

    .line 217
    :cond_0
    iget-object v0, p0, Ldhn;->b:Lcom/wandoujia/ripple_framework/view/StatefulButton;

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/view/StatefulButton;->setEnabled(Z)V

    .line 218
    invoke-static {v2, v3}, Lewx;->a(ZZ)V

    .line 224
    :goto_0
    return v2

    .line 220
    :cond_1
    sget-object v0, Lham;->f:Lham;

    const-string v1, "navigation"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
