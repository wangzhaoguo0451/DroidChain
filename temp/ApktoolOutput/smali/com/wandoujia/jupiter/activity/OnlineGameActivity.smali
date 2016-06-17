.class public Lcom/wandoujia/jupiter/activity/OnlineGameActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "OnlineGameActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v1, Lcom/wandoujia/jupiter/fragment/TabListFragment;

    invoke-direct {v1}, Lcom/wandoujia/jupiter/fragment/TabListFragment;-><init>()V

    .line 20
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/OnlineGameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    :cond_0
    const-string v2, "title"

    const v3, 0x7f0e05f4

    invoke-virtual {p0, v3}, Lcom/wandoujia/jupiter/activity/OnlineGameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/OnlineGameActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 27
    return-void
.end method
