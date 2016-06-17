.class public Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "CategoryDetailActivity.java"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 6

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Ld;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 60
    invoke-static {v2}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/wandoujia/base/utils/UrlExtractor;->getQueryParameterNames(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    .line 66
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->a:Landroid/os/Bundle;

    .line 68
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    iget-object v4, p0, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    :cond_1
    const-string v1, "http://apis.wandoujia.com/apps/v1/categories/%s?format=proto"

    .line 73
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "wdj://games"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    const-string v1, "http://apis.wandoujia.com/games/v1/categories/%s?format=proto"

    .line 77
    :cond_2
    const/4 v0, 0x1

    :try_start_0
    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v1, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;

    invoke-direct {v1}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "page_api_url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->a()Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->a:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 41
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->a:Landroid/os/Bundle;

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->a:Landroid/os/Bundle;

    const-string v3, "page_api_url"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/CategoryDetailActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 51
    return-void
.end method
