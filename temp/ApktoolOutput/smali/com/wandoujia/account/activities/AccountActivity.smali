.class public Lcom/wandoujia/account/activities/AccountActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AccountActivity.java"

# interfaces
.implements Lcji;
.implements Lcjl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/wandoujia/account/constants/AccountParamConstants$FinishType;Lcom/wandoujia/account/AccountParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/wandoujia/account/activities/AccountActivity;->finish()V

    .line 61
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 29
    invoke-static {p0, p1, p2, p3}, Ld;->a(Landroid/support/v4/app/FragmentActivity;IILandroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 35
    if-eqz p0, :cond_0

    sget v0, Lcom/wandoujia/account/R$layout;->account_sdk_main_activity:I

    invoke-static {p0, v0}, Ld;->a(Landroid/support/v4/app/FragmentActivity;I)V

    .line 36
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Lcom/wandoujia/account/R$layout;->account_sdk_main_activity:I

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/account/fragment/AccountFragment;

    invoke-direct {v2}, Lcom/wandoujia/account/fragment/AccountFragment;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "account.intent.extra.ACCOUNT_PARAMS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/AccountParams;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "account.intent.extra.ACCOUNT_PARAMS"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/wandoujia/account/fragment/AccountFragment;->setArguments(Landroid/os/Bundle;)V

    sget v0, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    const-string v3, "accountContainer"

    invoke-virtual {v1, v0, v2, v3}, Lag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Lag;

    invoke-virtual {v1}, Lag;->a()I

    .line 24
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 55
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Ld;->a(Landroid/support/v4/app/FragmentActivity;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method
