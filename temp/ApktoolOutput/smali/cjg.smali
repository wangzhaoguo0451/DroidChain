.class final Lcjg;
.super Landroid/webkit/WebViewClient;
.source "AccountWebViewDialog.java"


# instance fields
.field private synthetic a:Lcjf;


# direct methods
.method private constructor <init>(Lcjf;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcjg;->a:Lcjf;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcjf;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcjg;-><init>(Lcjf;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcjg;->a:Lcjf;

    invoke-static {v0}, Lcjf;->d(Lcjf;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 277
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    const-string v0, "http://m.wandoujia.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://account.wandoujia.com/sdk/close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    :cond_0
    invoke-static {p2}, Lcjf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v0, p0, Lcjg;->a:Lcjf;

    invoke-static {v0}, Lcjf;->a(Lcjf;)Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_1
    const-string v1, "https://account.wandoujia.com/sdk/close"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 252
    iget-object v0, p0, Lcjg;->a:Lcjf;

    invoke-static {v0}, Lcjf;->b(Lcjf;)Lcmj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcjg;->a:Lcjf;

    invoke-static {v0}, Lcjf;->b(Lcjf;)Lcmj;

    move-result-object v0

    invoke-static {p2}, Lcjf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcmj;->a(Ljava/lang/String;)V

    .line 264
    :cond_2
    :goto_0
    iget-object v0, p0, Lcjg;->a:Lcjf;

    invoke-virtual {v0}, Lcjf;->dismiss()V

    .line 267
    :cond_3
    iget-object v0, p0, Lcjg;->a:Lcjf;

    invoke-static {v0}, Lcjf;->d(Lcjf;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 268
    iget-object v0, p0, Lcjg;->a:Lcjf;

    invoke-static {v0}, Lcjf;->d(Lcjf;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 270
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 271
    return-void

    .line 255
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcjg;->a:Lcjf;

    invoke-static {v1}, Lcjf;->c(Lcjf;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 256
    iget-object v1, p0, Lcjg;->a:Lcjf;

    invoke-static {v1}, Lcjf;->b(Lcjf;)Lcmj;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, p0, Lcjg;->a:Lcjf;

    invoke-static {v1}, Lcjf;->b(Lcjf;)Lcmj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcmj;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcjg;->a:Lcjf;

    invoke-static {v0}, Lcjf;->b(Lcjf;)Lcmj;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lcjg;->a:Lcjf;

    invoke-static {v0}, Lcjf;->b(Lcjf;)Lcmj;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/account/dto/WandouResponse;

    invoke-direct {v1}, Lcom/wandoujia/account/dto/WandouResponse;-><init>()V

    invoke-interface {v0, v1}, Lcmj;->a(Lcom/wandoujia/account/dto/WandouResponse;)V

    goto :goto_0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
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

    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 242
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
    .line 227
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 228
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x1

    return v0
.end method
