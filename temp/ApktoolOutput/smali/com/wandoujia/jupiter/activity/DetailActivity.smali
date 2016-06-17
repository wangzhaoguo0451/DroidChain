.class public Lcom/wandoujia/jupiter/activity/DetailActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "DetailActivity.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 163
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/jupiter/activity/DetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    const-string v1, "key_package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 166
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 168
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 64
    invoke-static {p1}, Ld;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const-string v0, "key_package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_0
    if-eqz p1, :cond_5

    .line 73
    const-string v1, "anchor"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/view/Anchor;

    .line 74
    const-string v2, "iconUrl"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    const-string v4, "iconBitmapKey"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 76
    const-string v4, "page_api_url"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/DetailActivity;->finish()V

    .line 104
    :goto_2
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 82
    :cond_3
    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/DetailActivity;->a:Ljava/lang/String;

    .line 85
    const-string v5, "notification_push"

    const-string v6, "launch_from"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "notification_ripple_app_uninstall"

    const-string v6, "launch_keyword"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 88
    new-instance v5, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v5}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    .line 89
    new-instance v6, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v6}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    sget-object v7, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->PUSH:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v6, v7}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v6

    sget-object v7, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->TRIGGER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v6, v7}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->status(Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v6

    sget-object v7, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v6, v7}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result(Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v6

    const-string v7, "notification_ripple_app_uninstall"

    invoke-virtual {v6, v7}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->result_info(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v6

    .line 94
    sget-object v7, Lham;->f:Lham;

    iget-object v7, v7, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    invoke-virtual {v7, v6, v5}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    .line 97
    :cond_4
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/DetailActivity;->getSupportFragmentManager()Ls;

    move-result-object v5

    invoke-virtual {v5}, Ls;->a()Lag;

    move-result-object v6

    const v7, 0x1020002

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/DetailActivity;->getIntentUri()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/wandoujia/jupiter/fragment/DetailFragment;->a(Ljava/lang/String;Lcom/wandoujia/ripple_framework/view/Anchor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/wandoujia/jupiter/fragment/DetailFragment;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    goto :goto_2

    :cond_5
    move-object v4, v1

    move-object v2, v1

    goto/16 :goto_1
.end method


# virtual methods
.method protected customSystemTintBar()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method protected getSystemBarColor()I
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected navigateTo(Ljava/lang/String;I)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x1020002

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->navigateTo(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 143
    :goto_0
    return v0

    .line 111
    :cond_0
    const-string v0, "wdj://detail/app/expand_info"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/DetailActivity;->findCurrentFragment()Lcom/wandoujia/ripple_framework/fragment/BaseFragment;

    move-result-object v0

    .line 115
    instance-of v3, v0, Lcom/wandoujia/jupiter/fragment/DetailFragment;

    if-eqz v3, :cond_4

    .line 116
    check-cast v0, Lcom/wandoujia/jupiter/fragment/DetailFragment;

    iget-object v3, v0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->o:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/DetailActivity;->allList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/DetailActivity;->getSupportFragmentManager()Ls;

    move-result-object v2

    invoke-virtual {v2}, Ls;->a()Lag;

    move-result-object v2

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->a(Ljava/lang/String;)Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lag;->a(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    const-string v2, "wdj://detail/app/expand_info"

    invoke-virtual {v0, v2}, Lag;->a(Ljava/lang/String;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    move v0, v1

    .line 123
    goto :goto_0

    .line 127
    :cond_2
    const-string v0, "wdj://detail/app/history_info"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/DetailActivity;->findCurrentFragment()Lcom/wandoujia/ripple_framework/fragment/BaseFragment;

    move-result-object v0

    .line 129
    instance-of v3, v0, Lcom/wandoujia/jupiter/fragment/DetailFragment;

    if-eqz v3, :cond_4

    .line 130
    check-cast v0, Lcom/wandoujia/jupiter/fragment/DetailFragment;

    iget-object v3, v0, Lcom/wandoujia/jupiter/fragment/DetailFragment;->o:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/DetailActivity;->allList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "http://apis.wandoujia.com/five/v2/apps/%s/history?format=proto"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/wandoujia/jupiter/activity/DetailActivity;->a:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 134
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/DetailActivity;->getSupportFragmentManager()Ls;

    move-result-object v2

    invoke-virtual {v2}, Ls;->a()Lag;

    move-result-object v2

    invoke-static {v0}, Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;->b(Ljava/lang/String;)Lcom/wandoujia/jupiter/fragment/DetailAppHistoryFragment;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lag;->a(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    const-string v2, "wdj://detail/app/history_info"

    invoke-virtual {v0, v2}, Lag;->a(Ljava/lang/String;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    move v0, v1

    .line 138
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 143
    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/jupiter/activity/DetailActivity;->a(Landroid/content/Intent;)V

    .line 44
    invoke-static {v1, v1}, Lewx;->a(ZZ)V

    .line 45
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/wandoujia/jupiter/activity/DetailActivity;->a(Landroid/content/Intent;)V

    .line 51
    return-void
.end method
