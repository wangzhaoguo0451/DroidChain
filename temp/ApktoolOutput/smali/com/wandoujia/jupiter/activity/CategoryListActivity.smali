.class public Lcom/wandoujia/jupiter/activity/CategoryListActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "CategoryListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 24
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->parseFromString(Ljava/lang/String;)Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;->ALL:Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;

    :cond_0
    invoke-static {v0}, Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;->a(Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment$CategoryType;)Lcom/wandoujia/jupiter/category/fragment/CategoryListFragment;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/CategoryListActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 26
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/CategoryListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/jupiter/activity/CategoryListActivity;->a(Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/wandoujia/jupiter/activity/CategoryListActivity;->a(Landroid/content/Intent;)V

    .line 32
    return-void
.end method
