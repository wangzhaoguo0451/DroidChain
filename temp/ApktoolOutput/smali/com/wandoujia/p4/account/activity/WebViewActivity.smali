.class public Lcom/wandoujia/p4/account/activity/WebViewActivity;
.super Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;
.source "WebViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/activity/BaseToolBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f0300cd

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/account/activity/WebViewActivity;->setContentView(I)V

    .line 30
    new-instance v0, Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;-><init>()V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string v2, "phoenix.intent.extra.URL"

    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "phoenix.intent.extra.URL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/campaign/CampaignFragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/wandoujia/p4/account/activity/WebViewActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x7f0c02aa

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 37
    return-void
.end method
