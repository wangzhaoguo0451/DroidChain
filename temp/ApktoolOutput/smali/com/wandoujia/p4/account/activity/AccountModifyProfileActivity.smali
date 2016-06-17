.class public Lcom/wandoujia/p4/account/activity/AccountModifyProfileActivity;
.super Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;
.source "AccountModifyProfileActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v0, 0x7f03006c

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountModifyProfileActivity;->setContentView(I)V

    .line 20
    const v0, 0x7f0e003a

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountModifyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/AccountModifyProfileActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Lchv;->e(Z)V

    .line 23
    invoke-static {}, Letz;->a()Letz;

    move-result-object v0

    iget-object v0, v0, Letz;->a:Lcmm;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;->b(Lcmm;)Lcom/wandoujia/account/fragment/AccountModifyProfileFragment;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/AccountModifyProfileActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    .line 28
    const v2, 0x7f0c01ed

    invoke-virtual {v1, v2, v0}, Lag;->a(ILandroid/support/v4/app/Fragment;)Lag;

    .line 29
    invoke-virtual {v1}, Lag;->b()I

    .line 31
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    const-string v1, "wdj://account/settings"

    invoke-virtual {v0, p0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method
