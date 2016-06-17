.class Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo$VideoPlayerWebChromeClient;
.super Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit$PlayerWebChromeClient;
.source "PlayExpWebViewSuitVideo.java"


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo$VideoPlayerWebChromeClient;->this$0:Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;

    invoke-direct {p0, p1}, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit$PlayerWebChromeClient;-><init>(Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;Lgwo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo$VideoPlayerWebChromeClient;-><init>(Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;)V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit$PlayerWebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo$VideoPlayerWebChromeClient;->this$0:Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;

    iget-boolean v0, v0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;->m:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo$VideoPlayerWebChromeClient;->this$0:Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;->m:Z

    .line 100
    :cond_0
    return-void
.end method
