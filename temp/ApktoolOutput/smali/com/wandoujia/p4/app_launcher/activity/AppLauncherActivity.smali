.class public Lcom/wandoujia/p4/app_launcher/activity/AppLauncherActivity;
.super Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;
.source "AppLauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/wandoujia/p4/app_launcher/activity/AppLauncherActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    const v1, 0x7f0c02aa

    invoke-virtual {v0, v1}, Ls;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 48
    instance-of v1, v0, Lekr;

    if-eqz v1, :cond_0

    .line 49
    check-cast v0, Lekr;

    .line 50
    invoke-interface {v0}, Lekr;->c()V

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/app_launcher/activity/AppLauncherActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x800

    const/high16 v1, 0x400

    .line 26
    invoke-super {p0, p1}, Lcom/wandoujia/launcher_base/activity/LauncherBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/wandoujia/p4/app_launcher/activity/AppLauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 32
    invoke-virtual {p0}, Lcom/wandoujia/p4/app_launcher/activity/AppLauncherActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 37
    :cond_0
    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/app_launcher/activity/AppLauncherActivity;->setContentView(I)V

    .line 39
    invoke-static {}, Leha;->a()Leha;

    const-string v0, "enable_redesign_al"

    invoke-static {v0}, Ld;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/app_launcher/fragment/ALHomeFragment;-><init>()V

    .line 41
    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/app_launcher/activity/AppLauncherActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x7f0c02aa

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 43
    return-void

    .line 39
    :cond_1
    new-instance v0, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/app_launcher/fragment/AppLauncherFragment;-><init>()V

    goto :goto_0
.end method
