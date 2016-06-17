.class public Lcom/wandoujia/p4/community/activity/CommunityGroupListActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "CommunityGroupListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityGroupListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityGroupListActivity;->finish()V

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/community/fragmant/CommunityGroupListFragment;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityGroupListActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    invoke-virtual {v1}, Lag;->a()I

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c0014

    if-ne v0, v1, :cond_0

    .line 79
    invoke-static {p0}, Lcom/wandoujia/p4/community/activity/CommunityMessageActivity;->a(Landroid/content/Context;)V

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 67
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 68
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;->a(Landroid/view/ViewGroup;)Lcom/wandoujia/p4/community/views/CommunityUnReadCountMenuView;

    move-result-object v1

    .line 70
    const v2, 0x7f0c0014

    const v3, 0x7f0e0235

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lfp;->a(Landroid/view/MenuItem;I)V

    .line 73
    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onResume()V

    .line 61
    invoke-virtual {p0}, Lcom/wandoujia/p4/community/activity/CommunityGroupListActivity;->supportInvalidateOptionsMenu()V

    .line 62
    return-void
.end method
