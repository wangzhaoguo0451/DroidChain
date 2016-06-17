.class public Lcom/wandoujia/jupiter/subscribe/activity/PublisherProfileActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "PublisherProfileActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherProfileActivity;->finish()V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Ld;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherProfileActivity;->finish()V

    .line 56
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    const-class v1, Lcom/wandoujia/jupiter/subscribe/activity/PublisherProfileActivity;

    const-string v2, "failed to know publisher id from url intent"

    const-string v3, "subscribe_p5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/wandoujia/base/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherProfileActivity;->finish()V

    .line 63
    :cond_2
    new-instance v1, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;

    invoke-direct {v1}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;-><init>()V

    .line 64
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v3, "page_intent_uri"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wdj://follow/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v3, "argu_publisher_id"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherProfileActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Lag;->a(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 70
    sget-object v0, Ldca;->a:Ldca;

    const-string v1, "local_feed"

    invoke-virtual {v0, v1}, Ldca;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->d()V

    .line 72
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-direct {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherProfileActivity;->a()V

    .line 32
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherProfileActivity;->setIntent(Landroid/content/Intent;)V

    .line 38
    invoke-direct {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherProfileActivity;->a()V

    .line 39
    return-void
.end method
