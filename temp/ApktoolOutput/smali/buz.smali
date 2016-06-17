.class public final Lbuz;
.super Lbvj;
.source "AuthWeiboWebViewClient.java"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lbuy;

.field private d:Lbuv;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbuy;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lbvj;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbuz;->e:Z

    .line 24
    iput-object p1, p0, Lbuz;->b:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lbuz;->c:Lbuy;

    .line 26
    iget-object v0, p0, Lbuz;->c:Lbuy;

    iget-object v0, v0, Lbuy;->b:Lbuv;

    iput-object v0, p0, Lbuz;->d:Lbuv;

    .line 27
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lbuz;->a:Lbva;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lbuz;->a:Lbva;

    invoke-interface {v0}, Lbva;->a()V

    .line 80
    :cond_0
    invoke-super {p0, p1, p2}, Lbvj;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lbuz;->a:Lbva;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lbuz;->a:Lbva;

    invoke-interface {v0, p2}, Lbva;->a(Ljava/lang/String;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lbuz;->c:Lbuy;

    iget-object v0, v0, Lbuy;->a:Lbut;

    .line 36
    iget-object v0, v0, Lbut;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    iget-boolean v0, p0, Lbuz;->e:Z

    if-nez v0, :cond_3

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbuz;->e:Z

    .line 39
    invoke-static {p2}, Ld;->m(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error_description"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    iget-object v1, p0, Lbuz;->d:Lbuv;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbuz;->d:Lbuv;

    invoke-interface {v1, v0}, Lbuv;->a(Landroid/os/Bundle;)V

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 42
    iget-object v0, p0, Lbuz;->b:Landroid/app/Activity;

    .line 43
    iget-object v1, p0, Lbuz;->c:Lbuy;

    iget-object v1, v1, Lbuy;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 42
    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_1
    return-void

    .line 39
    :cond_2
    iget-object v0, p0, Lbuz;->d:Lbuv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbuz;->d:Lbuv;

    new-instance v4, Lcom/sina/weibo/sdk/exception/WeiboAuthException;

    invoke-direct {v4, v2, v1, v3}, Lcom/sina/weibo/sdk/exception/WeiboAuthException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lbuv;->a(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_0

    .line 47
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lbvj;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lbuz;->a:Lbva;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lbuz;->a:Lbva;

    invoke-interface {v0, p2, p3, p4}, Lbva;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lbvj;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Lbvj;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 97
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 52
    const-string v1, "sms:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    const-string v2, "address"

    const-string v3, "sms:"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v2, p0, Lbuz;->b:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 72
    :goto_0
    return v0

    .line 64
    :cond_0
    const-string v1, "sinaweibo://browser/close"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    iget-object v1, p0, Lbuz;->d:Lbuv;

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lbuz;->d:Lbuv;

    invoke-interface {v1}, Lbuv;->a()V

    .line 68
    :cond_1
    iget-object v1, p0, Lbuz;->b:Landroid/app/Activity;

    .line 69
    iget-object v2, p0, Lbuz;->c:Lbuy;

    iget-object v2, v2, Lbuy;->c:Ljava/lang/String;

    const/4 v3, 0x0

    .line 68
    invoke-static {v1, v2, v3}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-super {p0, p1, p2}, Lbvj;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
