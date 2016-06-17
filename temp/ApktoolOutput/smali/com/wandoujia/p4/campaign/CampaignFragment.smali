.class public Lcom/wandoujia/p4/campaign/CampaignFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "CampaignFragment.java"


# instance fields
.field a:Landroid/webkit/WebView;

.field public b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/LinearLayout;

.field private g:Ljava/lang/String;

.field private h:Lcom/wandoujia/ripple_framework/model/Model;

.field private i:Lfbe;

.field private j:Landroid/webkit/CookieSyncManager;

.field private k:Landroid/view/animation/Animation;

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->c:Z

    .line 67
    iput-boolean v1, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->l:Z

    .line 76
    iput-boolean v1, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->m:Z

    .line 348
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/campaign/CampaignFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->m:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/campaign/CampaignFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/wandoujia/p4/campaign/CampaignFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 235
    :cond_0
    new-instance v0, Lfbb;

    invoke-direct {v0}, Lfbb;-><init>()V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/wandoujia/p4/campaign/CampaignFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->d()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/wandoujia/p4/campaign/CampaignFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->l:Z

    return v0
.end method

.method static synthetic f(Lcom/wandoujia/p4/campaign/CampaignFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->e()V

    return-void
.end method

.method static synthetic g(Lcom/wandoujia/p4/campaign/CampaignFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->l:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "wdj://web"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    const-string v1, "?title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, "&url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    sget-object v1, Lham;->f:Lham;

    iget-object v1, v1, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/content/Context;)V

    .line 217
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->c:Z

    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 443
    :goto_1
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///android_asset/empty.html"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 440
    :goto_2
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 438
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 192
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->a()V

    .line 193
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phoenix.intent.extra.ACTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phoenix.intent.extra.URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->b:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phoenix.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->g:Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phoenix.intent.extra.SHOW_ACTION_BAR"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->c:Z

    .line 87
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "phoenix.intent.extra.SHOW_PROGRESS_BAR"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 88
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_app_card_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iput-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->h:Lcom/wandoujia/ripple_framework/model/Model;

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->j:Landroid/webkit/CookieSyncManager;

    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 99
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v0, "http://www.wandoujia.com/game-vertical/video"

    iget-object v2, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f03000d

    :goto_0
    invoke-static {v1, v0}, Lg;->a(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->d:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->d:Landroid/view/View;

    const v1, 0x7f0c00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    .line 102
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->d:Landroid/view/View;

    const v1, 0x7f0c00fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->e:Landroid/widget/ProgressBar;

    .line 103
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->d:Landroid/view/View;

    const v1, 0x7f0c00fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->f:Landroid/widget/LinearLayout;

    .line 104
    iget-object v1, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->h:Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    :goto_1
    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f04000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->k:Landroid/view/animation/Animation;

    .line 106
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->k:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 108
    new-instance v0, Lfbe;

    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Lfbe;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->i:Lfbe;

    .line 110
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-direct {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->c()V

    .line 112
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->d:Landroid/view/View;

    .line 135
    :goto_2
    return-object v0

    .line 99
    :cond_0
    const v0, 0x7f03000c

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->f:Landroid/widget/LinearLayout;

    const v2, 0x7f030156

    invoke-static {v0, v2}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, v5}, Ld;->a(Landroid/view/ViewGroup;Lhas;)Lerf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lerf;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 117
    :cond_3
    invoke-direct {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->c()V

    .line 118
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->d:Landroid/view/View;

    goto :goto_2

    .line 121
    :cond_4
    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wandoujia.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 125
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wdj_auth="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lchv;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";Max-Age=36000;Domain=.wandoujia.com;Path = /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 133
    :cond_5
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    new-instance v1, Lfbc;

    invoke-direct {v1, p0}, Lfbc;-><init>(Lcom/wandoujia/p4/campaign/CampaignFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;

    invoke-direct {v1, p0, v5}, Lcom/wandoujia/p4/campaign/CampaignFragment$MyWebChromeClient;-><init>(Lcom/wandoujia/p4/campaign/CampaignFragment;Lfba;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->i:Lfbe;

    const-string v2, "campaignPlugin"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->d:Landroid/view/View;

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->a:Landroid/webkit/WebView;

    .line 266
    :cond_0
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onDestroy()V

    .line 267
    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->j:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 254
    invoke-direct {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->d()V

    .line 255
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onPause()V

    .line 256
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onResume()V

    .line 246
    invoke-direct {p0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->e()V

    .line 247
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->j:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 248
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 141
    iget-object v0, p0, Lcom/wandoujia/p4/campaign/CampaignFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lfba;

    invoke-direct {v1, p0}, Lfba;-><init>(Lcom/wandoujia/p4/campaign/CampaignFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener$486aeec7(Lrw;)V

    .line 187
    return-void
.end method
