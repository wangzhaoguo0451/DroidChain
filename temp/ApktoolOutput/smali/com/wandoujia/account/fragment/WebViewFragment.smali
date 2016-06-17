.class public Lcom/wandoujia/account/fragment/WebViewFragment;
.super Lcom/wandoujia/account/fragment/AccountBaseFragment;
.source "WebViewFragment.java"


# instance fields
.field public q:Landroid/webkit/WebView;

.field private r:Landroid/view/View;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;-><init>()V

    .line 207
    return-void
.end method

.method public static final a(Lcom/wandoujia/account/AccountParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/wandoujia/account/fragment/WebViewFragment;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    new-instance v0, Lcom/wandoujia/account/fragment/WebViewFragment;

    invoke-direct {v0}, Lcom/wandoujia/account/fragment/WebViewFragment;-><init>()V

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v2, "extra_url"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "extra_title"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "account.intent.extra.ACCOUNT_PARAMS"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/wandoujia/account/fragment/WebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/account/fragment/WebViewFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->e()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->d()Z

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    const-string v1, "login"

    invoke-virtual {v0, v1}, Ls;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/fragment/AccountLoginFragment;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->b:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/AccountLoginFragment;->a(Landroid/os/Bundle;)Lcom/wandoujia/account/fragment/AccountLoginFragment;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/WebViewFragment;->getFragmentManager()Ls;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    sget v2, Lcom/wandoujia/account/R$id;->account_fragment_layout:I

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    invoke-virtual {v1}, Lag;->a()I

    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/account/fragment/WebViewFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->u:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 6

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->s:Ljava/lang/String;

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->s:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&callback="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "https://account.wandoujia.com/sdk/close"

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 119
    :cond_0
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->s:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "https://account.wandoujia.com/sdk/close"

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "https://account.wandoujia.com/sdk/close"

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 130
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->s:Ljava/lang/String;

    goto :goto_0

    .line 128
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 72
    invoke-super {p0}, Lcom/wandoujia/account/fragment/AccountBaseFragment;->a()V

    .line 73
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->r:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_sdk_web:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    .line 74
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->r:Landroid/view/View;

    sget v1, Lcom/wandoujia/account/R$id;->account_sdk_web_loading_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->u:Landroid/widget/ProgressBar;

    .line 76
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->u:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    new-instance v1, Lcmd;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcmd;-><init>(Lcom/wandoujia/account/fragment/WebViewFragment;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 81
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 86
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wandoujia/account/fragment/WebViewFragment;->a(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/wandoujia/account/fragment/WebViewFragment;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->c:Lcom/wandoujia/account/AccountParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->c:Lcom/wandoujia/account/AccountParams;

    iget-boolean v0, v0, Lcom/wandoujia/account/AccountParams;->m:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 92
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    iget-object v1, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->r:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    :cond_0
    return-void
.end method

.method final a(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    return-void
.end method

.method protected final b(Lcom/wandoujia/account/dto/WandouResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    return-void
.end method

.method protected final c()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    sget v0, Lcom/wandoujia/account/R$layout;->account_sdk_webview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->r:Landroid/view/View;

    .line 153
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/WebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->s:Ljava/lang/String;

    .line 156
    const-string v1, "extra_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->t:Ljava/lang/String;

    .line 157
    const-string v1, "account.intent.extra.ACCOUNT_MANAGER_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->d:Ljava/lang/String;

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/account/fragment/WebViewFragment;->a()V

    .line 161
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->o:Lcjn;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->o:Lcjn;

    iget-object v1, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->q:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Lcjn;->a(Landroid/webkit/WebView;)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->j:Lcjm;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->s:Ljava/lang/String;

    const-string v1, "http://www.wandoujia.com/terms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->j:Lcjm;

    sget-object v1, Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;->USER_LEGAL:Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;

    invoke-interface {v0, v1}, Lcjm;->a(Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;)V

    .line 173
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->r:Landroid/view/View;

    return-object v0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/wandoujia/account/fragment/WebViewFragment;->j:Lcjm;

    sget-object v1, Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;->FORGET_PASSWORD:Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;

    invoke-interface {v0, v1}, Lcjm;->a(Lcom/wandoujia/account/constants/AccountParamConstants$FragmentType;)V

    goto :goto_0
.end method
