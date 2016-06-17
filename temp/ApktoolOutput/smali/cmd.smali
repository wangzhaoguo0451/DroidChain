.class public final Lcmd;
.super Landroid/webkit/WebViewClient;
.source "WebViewFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/account/fragment/WebViewFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/account/fragment/WebViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcmd;->a:Lcom/wandoujia/account/fragment/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wandoujia/account/fragment/WebViewFragment;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcmd;-><init>(Lcom/wandoujia/account/fragment/WebViewFragment;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcmd;->a:Lcom/wandoujia/account/fragment/WebViewFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/WebViewFragment;->o:Lcjn;

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcmd;->a:Lcom/wandoujia/account/fragment/WebViewFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/WebViewFragment;->b(Lcom/wandoujia/account/fragment/WebViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 255
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 256
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcmd;->a:Lcom/wandoujia/account/fragment/WebViewFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/WebViewFragment;->o:Lcjn;

    invoke-interface {v0, p1}, Lcjn;->b(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    const-string v0, "https://account.wandoujia.com/sdk/close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sdk/close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    iget-object v0, p0, Lcmd;->a:Lcom/wandoujia/account/fragment/WebViewFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/WebViewFragment;->a(Lcom/wandoujia/account/fragment/WebViewFragment;)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcmd;->a:Lcom/wandoujia/account/fragment/WebViewFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/WebViewFragment;->o:Lcjn;

    if-nez v0, :cond_3

    .line 239
    iget-object v0, p0, Lcmd;->a:Lcom/wandoujia/account/fragment/WebViewFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/WebViewFragment;->b(Lcom/wandoujia/account/fragment/WebViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    iget-object v0, p0, Lcmd;->a:Lcom/wandoujia/account/fragment/WebViewFragment;

    invoke-static {v0}, Lcom/wandoujia/account/fragment/WebViewFragment;->b(Lcom/wandoujia/account/fragment/WebViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 245
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 246
    return-void

    .line 243
    :cond_3
    iget-object v0, p0, Lcmd;->a:Lcom/wandoujia/account/fragment/WebViewFragment;

    iget-object v0, v0, Lcom/wandoujia/account/fragment/WebViewFragment;->o:Lcjn;

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " description= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  failingUrl= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 214
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x1

    return v0
.end method
