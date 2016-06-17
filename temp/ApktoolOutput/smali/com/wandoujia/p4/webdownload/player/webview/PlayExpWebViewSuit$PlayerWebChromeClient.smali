.class public Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit$PlayerWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "PlayExpWebViewSuit.java"


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;


# direct methods
.method protected constructor <init>(Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit$PlayerWebChromeClient;->this$0:Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 278
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit$PlayerWebChromeClient;->this$0:Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;

    invoke-virtual {v0}, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "js alert"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 282
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit$PlayerWebChromeClient;->this$0:Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;

    iget-object v0, v0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->a:Landroid/content/Context;

    invoke-static {v0, p3, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit$PlayerWebChromeClient;->this$0:Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;

    invoke-virtual {v0}, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "js onReceivedTitle"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit$PlayerWebChromeClient;->this$0:Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;

    iget-object v0, v0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->b:Ljava/lang/StringBuilder;

    const-string v1, "onReceivedTitle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit$PlayerWebChromeClient;->this$0:Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;

    iget-object v0, v0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->f:Lgvc;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit$PlayerWebChromeClient;->this$0:Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;

    iget-object v0, v0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->f:Lgvc;

    invoke-interface {v0, p2}, Lgvc;->c(Ljava/lang/String;)V

    .line 297
    :cond_1
    return-void
.end method
