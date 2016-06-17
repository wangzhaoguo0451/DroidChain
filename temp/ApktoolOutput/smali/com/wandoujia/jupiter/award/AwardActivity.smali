.class public Lcom/wandoujia/jupiter/award/AwardActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "AwardActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/award/AwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/award/AwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    .line 25
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/award/AwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page_api_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 27
    iput-object v0, p0, Lcom/wandoujia/jupiter/award/AwardActivity;->a:Ljava/lang/String;

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/award/AwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page_intent_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 31
    iput-object v0, p0, Lcom/wandoujia/jupiter/award/AwardActivity;->b:Ljava/lang/String;

    .line 33
    :cond_2
    new-instance v0, Lcom/wandoujia/jupiter/fragment/ListFragment;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/wandoujia/jupiter/award/AwardActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/jupiter/award/AwardActivity;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/award/AwardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e010a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/wandoujia/jupiter/fragment/ListFragment;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/award/AwardActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 38
    return-void

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/award/AwardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/award/AwardActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/wandoujia/jupiter/award/AwardActivity;->b:Ljava/lang/String;

    const-string v1, "wdj://games/award"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "http://apis.wandoujia.com/games/v1/list/award?format=proto"

    iput-object v0, p0, Lcom/wandoujia/jupiter/award/AwardActivity;->a:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "http://apis.wandoujia.com/apps/v1/list/award?format=proto"

    iput-object v0, p0, Lcom/wandoujia/jupiter/award/AwardActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method
