.class public Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "TopicDetailActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Ld;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://subscribe.wandoujia.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FOLLOW"

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->a:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->b:Ljava/lang/String;

    .line 28
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;

    move-result-object v0

    .line 33
    :goto_1
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 34
    return-void

    .line 26
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->a:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->b:Ljava/lang/String;

    goto :goto_0

    .line 31
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/jupiter/topic/activity/TopicDetailActivity;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/jupiter/topic/fragment/TopicFragment;

    move-result-object v0

    goto :goto_1
.end method
