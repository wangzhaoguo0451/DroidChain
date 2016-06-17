.class public Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "SearchHomeActivity.java"


# instance fields
.field private a:Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wandoujia/ripple_framework/log/Logger$PageParameter;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 58
    if-nez p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->finish()V

    .line 74
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1}, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->b(Landroid/content/Intent;)Z

    const-string v1, "extra_query"

    iget-object v2, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "page_api_url"

    iget-object v2, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "page_intent_uri"

    iget-object v2, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "page_uri_param"

    iget-object v2, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "extra_from_spinner"

    const-string v2, "extra_from_spinner"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    iget-object v1, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->a:Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->a:Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;

    iget-object v2, v1, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->d:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->d:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-virtual {v1, v3}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Z)V

    .line 71
    :cond_1
    new-instance v1, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;

    invoke-direct {v1}, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->a:Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;

    .line 72
    iget-object v1, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->a:Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;

    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->a:Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;

    invoke-virtual {v0, v1, v2}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 106
    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    const-string v1, "extra_query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->e:Ljava/lang/String;

    .line 116
    :goto_1
    iget-object v1, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 121
    const-string v0, "page_api_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 124
    const-string v0, "page_api_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->b:Ljava/lang/String;

    .line 152
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wdj://search/result/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->c:Ljava/lang/String;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->d:Ljava/util/ArrayList;

    .line 154
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 155
    const-string v1, "sid"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_2

    .line 157
    iget-object v2, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/wandoujia/ripple_framework/log/Logger$PageParameter;

    const-string v4, "sid"

    invoke-direct {v3, v4, v1}, Lcom/wandoujia/ripple_framework/log/Logger$PageParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_2
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_3

    .line 161
    iget-object v1, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->d:Ljava/util/ArrayList;

    new-instance v2, Lcom/wandoujia/ripple_framework/log/Logger$PageParameter;

    const-string v3, "from"

    invoke-direct {v2, v3, v0}, Lcom/wandoujia/ripple_framework/log/Logger$PageParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :cond_4
    const-string v1, "extra_query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->e:Ljava/lang/String;

    goto :goto_1

    .line 127
    :cond_5
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->d()Lcom/wandoujia/jupiter/JupiterApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/jupiter/JupiterApplication;->b:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;

    iget-object v1, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->a(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 131
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 132
    const-string v0, "http://ias.wandoujia.com/api/v3/search"

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 135
    invoke-static {v1}, Lcom/wandoujia/base/utils/UrlExtractor;->getQueryParameterNames(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3

    .line 139
    :cond_6
    const-string v0, "query"

    iget-object v1, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 140
    const-string v0, "sid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 142
    const-string v0, "id"

    const-string v1, "wandoujia_android"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 143
    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_7

    .line 145
    const-string v1, "from"

    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 147
    :cond_7
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->b:Ljava/lang/String;

    goto/16 :goto_2
.end method


# virtual methods
.method protected customSystemTintBar()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->a(Landroid/content/Intent;)V

    .line 48
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/wandoujia/jupiter/search/activity/SearchHomeActivity;->a(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
