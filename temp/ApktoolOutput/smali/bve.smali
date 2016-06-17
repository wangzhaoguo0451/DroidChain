.class public final Lbve;
.super Lbvj;
.source "ShareWeiboWebViewClient.java"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lbvc;

.field private d:Lbuv;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbvc;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lbvj;-><init>()V

    .line 26
    iput-object p1, p0, Lbve;->b:Landroid/app/Activity;

    .line 27
    iput-object p2, p0, Lbve;->c:Lbvc;

    .line 28
    iget-object v0, p2, Lbvc;->a:Lbuv;

    iput-object v0, p0, Lbve;->d:Lbuv;

    .line 29
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lbve;->a:Lbva;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lbve;->a:Lbva;

    invoke-interface {v0}, Lbva;->a()V

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lbvj;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lbve;->a:Lbva;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lbve;->a:Lbva;

    invoke-interface {v0, p2}, Lbva;->a(Ljava/lang/String;)V

    .line 37
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lbvj;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 38
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lbve;->a:Lbva;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lbve;->a:Lbva;

    invoke-interface {v0, p2, p3, p4}, Lbva;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v0, p0, Lbve;->b:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-static {v0, v1, p3}, Lbvc;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 88
    iget-object v0, p0, Lbve;->b:Landroid/app/Activity;

    .line 89
    iget-object v1, p0, Lbve;->c:Lbvc;

    iget-object v1, v1, Lbvc;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 88
    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 99
    iget-object v0, p0, Lbve;->b:Landroid/app/Activity;

    const-string v1, "ReceivedSslError"

    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lbvc;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 101
    iget-object v0, p0, Lbve;->b:Landroid/app/Activity;

    .line 102
    iget-object v1, p0, Lbve;->c:Lbvc;

    iget-object v1, v1, Lbvc;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 101
    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v0, "sinaweibo://browser/close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    invoke-static {p2}, Ld;->n(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lbve;->d:Lbuv;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lbve;->d:Lbuv;

    invoke-interface {v1, v0}, Lbuv;->a(Landroid/os/Bundle;)V

    .line 53
    :cond_0
    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    iget-object v0, p0, Lbve;->b:Landroid/app/Activity;

    invoke-static {v0}, Lbvc;->b(Landroid/app/Activity;)V

    .line 64
    :goto_0
    iget-object v0, p0, Lbve;->b:Landroid/app/Activity;

    .line 65
    iget-object v1, p0, Lbve;->c:Lbvc;

    iget-object v1, v1, Lbvc;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 64
    invoke-static {v0, v1, v2}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_1
    return v0

    .line 58
    :cond_1
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 59
    iget-object v1, p0, Lbve;->b:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lbvc;->a(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lbve;->b:Landroid/app/Activity;

    const/4 v1, 0x0

    const-string v2, "send ok!!!"

    invoke-static {v0, v1, v2}, Lbvc;->a(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_3
    invoke-super {p0, p1, p2}, Lbvj;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method
