.class public Lcom/wandoujia/jupiter/topic/activity/TopicListActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "TopicListActivity.java"


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

    .line 20
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "http://apis.wandoujia.com/apps/v1/topics?format=proto"

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0168

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/wandoujia/jupiter/fragment/ListFragment;

    invoke-direct {v1}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    .line 28
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 31
    :cond_0
    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicListActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 34
    return-void

    .line 20
    :cond_1
    const-string v0, "wdj://topics/apps"

    goto :goto_0
.end method
