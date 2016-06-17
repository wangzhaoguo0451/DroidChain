.class public final Laag;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Laag;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    .line 181
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Laag;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->b(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Laag;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->c(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 200
    const-string v0, "javascript:window.local_obj.showSource(\'<head>\'+document.getElementsByTagName(\'html\')[0].innerHTML+\'</head>\');"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Laag;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 185
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x1

    return v0
.end method
