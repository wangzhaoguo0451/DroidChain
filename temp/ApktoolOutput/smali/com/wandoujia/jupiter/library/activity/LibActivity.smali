.class public Lcom/wandoujia/jupiter/library/activity/LibActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "LibActivity.java"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/library/activity/LibActivity;->a:Z

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 43
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_intent_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/activity/LibActivity;->c:Ljava/lang/String;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/activity/LibActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/library/activity/LibActivity;->c:Ljava/lang/String;

    .line 50
    :cond_1
    new-instance v0, Lcom/wandoujia/jupiter/library/fragment/LibFragment;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/library/fragment/LibFragment;-><init>()V

    .line 51
    iget-object v1, p0, Lcom/wandoujia/jupiter/library/activity/LibActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string v2, "page_intent_uri"

    iget-object v3, p0, Lcom/wandoujia/jupiter/library/activity/LibActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    :cond_2
    const-string v1, "upgrade_package_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/jupiter/library/activity/LibActivity;->b:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/activity/LibActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 59
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/activity/LibActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/jupiter/library/activity/LibActivity;->a(Landroid/content/Intent;)V

    .line 31
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->a(Ljava/lang/Object;)V

    .line 33
    invoke-static {v2, v2}, Lewx;->a(ZZ)V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onDestroy()V

    .line 78
    sget-object v0, Lham;->f:Lham;

    const-string v1, "event_bus"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrx;

    invoke-virtual {v0, p0}, Lhrx;->c(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public onEventMainThread(Lhaq;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p1, Lhaq;->a:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    sget-object v1, Lcom/wandoujia/ripple_framework/EventBusManager$Type;->MULTI_UNINSTALL:Lcom/wandoujia/ripple_framework/EventBusManager$Type;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p1, Lhaq;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/jupiter/library/activity/LibActivity;->a:Z

    .line 73
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/wandoujia/jupiter/library/activity/LibActivity;->a(Landroid/content/Intent;)V

    .line 40
    return-void
.end method
