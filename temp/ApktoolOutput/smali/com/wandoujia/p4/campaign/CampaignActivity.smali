.class public Lcom/wandoujia/p4/campaign/CampaignActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "CampaignActivity.java"


# instance fields
.field private a:Lcom/wandoujia/p4/campaign/CampaignFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 43
    const-string v0, "wdj://web/campaign?url=%1$s&title=%2$s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lhco;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 12
    .parameter

    .prologue
    const/16 v10, 0x400

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 50
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wdj://web"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 55
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 58
    const-string v2, "wdj://web/doraemon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 59
    const-string v0, "phoenix.intent.action.DORAEMON_WEBVIEW"

    .line 65
    :goto_0
    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    const-string v1, "title"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v11

    .line 77
    :goto_1
    const-string v3, "phoenix.intent.extra.IS_PORTRAIT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 78
    const-string v3, "phoenix.intent.extra.IS_PORTRAIT"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 80
    :goto_2
    const-string v5, "phoenix.intent.extra.SHOW_ACTION_BAR"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 81
    const-string v5, "phoenix.intent.extra.SHOW_ACTION_BAR"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 83
    :goto_3
    const-string v8, "phoenix.intent.extra.IS_FULLSCREEN"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 84
    const-string v4, "phoenix.intent.extra.IS_FULLSCREEN"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 87
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v8, "page_api_url"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_2
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 101
    const-string v9, "phoenix.intent.extra.ACTION"

    invoke-virtual {v8, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 104
    const-string v2, "phoenix.intent.extra.URL"

    invoke-virtual {v8, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 109
    const-string v1, "phoenix.intent.extra.TITLE"

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_4
    if-eqz v3, :cond_5

    .line 112
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v6

    :goto_5
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->setRequestedOrientation(I)V

    .line 116
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 120
    :cond_6
    if-eqz v5, :cond_7

    .line 121
    const-string v0, "phoenix.intent.extra.SHOW_ACTION_BAR"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    :cond_7
    new-instance v0, Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-direct {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignActivity;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    .line 125
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignActivity;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-virtual {v0, v8}, Lcom/wandoujia/p4/campaign/CampaignFragment;->setArguments(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/wandoujia/p4/campaign/CampaignActivity;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-virtual {v0, v1, v2}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 128
    return-void

    .line 60
    :cond_8
    const-string v2, "wdj://web/campaign"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 61
    const-string v0, "phoenix.intent.action.CAMPAIGN_WEBVIEW"

    goto/16 :goto_0

    .line 67
    :cond_9
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 69
    :cond_a
    const-string v2, "phoenix.intent.action.CAMPAIGN_WEBVIEW"

    .line 70
    const-string v0, "phoenix.intent.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 73
    :cond_b
    const-string v0, "phoenix.intent.extra.ACTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    const-string v0, "phoenix.intent.extra.URL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string v0, "phoenix.intent.extra.TITLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 106
    :cond_c
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->finish()V

    goto/16 :goto_4

    :cond_d
    move v0, v7

    .line 112
    goto/16 :goto_5

    :cond_e
    move-object v5, v4

    goto/16 :goto_3

    :cond_f
    move-object v3, v4

    goto/16 :goto_2
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignActivity;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignActivity;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    iget-object v1, v0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "file:///android_asset/empty.html"

    iget-object v2, v0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    const-string v1, "javascript:window.history.back();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 40
    :goto_1
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_1
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onBackPressed()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wandoujia/p4/campaign/CampaignActivity;->a(Landroid/content/Intent;)V

    .line 25
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/campaign/CampaignActivity;->setIntent(Landroid/content/Intent;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/campaign/CampaignActivity;->a(Landroid/content/Intent;)V

    .line 32
    return-void
.end method
