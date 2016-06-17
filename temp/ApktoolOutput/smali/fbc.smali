.class public final Lfbc;
.super Landroid/webkit/WebViewClient;
.source "CampaignFragment.java"


# instance fields
.field final synthetic a:Lcom/wandoujia/p4/campaign/CampaignFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/campaign/CampaignFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lfbc;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lfbc;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->b()V

    .line 332
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lfbc;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->b()V

    .line 283
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 285
    const-string v0, "wandoujia.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "wdj_auth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 291
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 292
    const-string v4, "wdj_auth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    const/16 v4, 0x9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 295
    invoke-static {v3}, Lchv;->b(Ljava/lang/String;)V

    .line 291
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 301
    :cond_2
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    const-string v0, "http://www.wandoujia.com/?callback=finish"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lfbc;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lfbc;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->b(Lcom/wandoujia/p4/campaign/CampaignFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const-string v0, "file:///android_asset/empty.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lfbc;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wandoujia/p4/campaign/CampaignFragment;->a(Lcom/wandoujia/p4/campaign/CampaignFragment;Z)Z

    .line 320
    :cond_0
    iget-object v0, p0, Lfbc;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-virtual {v0}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lfbd;

    invoke-direct {v1, p0}, Lfbd;-><init>(Lfbc;)V

    iget-object v2, p0, Lfbc;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    invoke-virtual {v2}, Lcom/wandoujia/p4/campaign/CampaignFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0451

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ldxa;->a(Landroid/content/Context;Lbtk;Ljava/lang/String;)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 327
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 274
    const-string v0, "wandoujia://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lfbc;->a:Lcom/wandoujia/p4/campaign/CampaignFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/campaign/CampaignFragment;->startActivity(Landroid/content/Intent;)V

    .line 276
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
