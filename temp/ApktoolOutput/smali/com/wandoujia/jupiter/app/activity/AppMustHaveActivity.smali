.class public Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "AppMustHaveActivity.java"


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

    .line 27
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    .line 28
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page_api_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    iput-object v0, p0, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->a:Ljava/lang/String;

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page_intent_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 34
    iput-object v0, p0, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->b:Ljava/lang/String;

    .line 36
    :cond_2
    new-instance v0, Lcom/wandoujia/jupiter/fragment/ListFragment;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    .line 37
    iget-object v1, p0, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/wandoujia/jupiter/fragment/ListFragment;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 38
    new-instance v2, Ldrc;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ldrc;-><init>(B)V

    invoke-virtual {v0, v2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Leqx;)V

    .line 39
    new-instance v2, Lddh;

    invoke-direct {v2}, Lddh;-><init>()V

    invoke-virtual {v0, v2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Leqx;)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 42
    return-void

    .line 27
    :cond_3
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->b:Ljava/lang/String;

    const-string v0, "wdj://games/essential"

    iget-object v1, p0, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "http://apis.wandoujia.com/games/v1/list/essentials?format=proto"

    iput-object v0, p0, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->a:Ljava/lang/String;

    const v0, 0x7f0e0336

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "http://apis.wandoujia.com/apps/v1/list/essentials?format=proto"

    iput-object v0, p0, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->a:Ljava/lang/String;

    const v0, 0x7f0e0140

    invoke-virtual {p0, v0}, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/app/activity/AppMustHaveActivity;->c:Ljava/lang/String;

    goto/16 :goto_0
.end method
