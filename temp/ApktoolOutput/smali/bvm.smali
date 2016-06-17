.class public final Lbvm;
.super Lbvj;
.source "WidgetWeiboWebViewClient.java"


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lbvk;

.field private d:Lbuv;

.field private e:Lbvl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lbvk;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lbvj;-><init>()V

    .line 20
    iput-object p1, p0, Lbvm;->b:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, Lbvm;->c:Lbvk;

    .line 22
    iget-object v0, p2, Lbvk;->c:Lbvl;

    iput-object v0, p0, Lbvm;->e:Lbvl;

    .line 23
    iget-object v0, p2, Lbvk;->a:Lbuv;

    iput-object v0, p0, Lbvm;->d:Lbuv;

    .line 24
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lbvm;->a:Lbva;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lbvm;->a:Lbva;

    invoke-interface {v0}, Lbva;->a()V

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Lbvj;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lbvm;->a:Lbva;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lbvm;->a:Lbva;

    invoke-interface {v0, p2}, Lbva;->a(Ljava/lang/String;)V

    .line 31
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lbvj;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 32
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lbvm;->a:Lbva;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lbvm;->a:Lbva;

    invoke-interface {v0, p2, p3, p4}, Lbva;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lbvj;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Lbvj;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 84
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 36
    const-string v1, "sinaweibo://browser/close"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 41
    const-string v2, "sinaweibo://browser/close"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    const-string v2, "sinaweibo://browser/datatransfer"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 43
    :cond_0
    invoke-static {p2}, Ld;->n(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    iget-object v3, p0, Lbvm;->d:Lbuv;

    if-eqz v3, :cond_1

    .line 46
    iget-object v3, p0, Lbvm;->d:Lbuv;

    invoke-interface {v3, v2}, Lbuv;->a(Landroid/os/Bundle;)V

    .line 49
    :cond_1
    iget-object v2, p0, Lbvm;->e:Lbvl;

    if-eqz v2, :cond_2

    .line 50
    iget-object v2, p0, Lbvm;->e:Lbvl;

    invoke-static {p2}, Ld;->n(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v2, v2, Lbvl;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 53
    iget-object v1, p0, Lbvm;->b:Landroid/app/Activity;

    .line 54
    iget-object v2, p0, Lbvm;->c:Lbvk;

    iget-object v2, v2, Lbvk;->b:Ljava/lang/String;

    .line 55
    iget-object v3, p0, Lbvm;->c:Lbvk;

    iget-object v3, v3, Lbvk;->h:Ljava/lang/String;

    .line 53
    invoke-static {v1, v2, v3}, Lcom/sina/weibo/sdk/component/WeiboSdkBrowser;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    :goto_1
    return v0

    .line 50
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    :try_start_1
    iget-object v2, v2, Lbvl;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .line 59
    :cond_5
    invoke-super {p0, p1, p2}, Lbvj;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method
