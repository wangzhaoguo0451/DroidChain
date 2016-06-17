.class public abstract Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;
.super Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;
.source "PlayExpWebViewSuitVideo.java"


# instance fields
.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:J

.field public final p:Ljava/lang/Runnable;

.field private final q:Lgtx;


# direct methods
.method public constructor <init>(Lgvc;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;-><init>(Lgvc;)V

    .line 23
    iput-boolean v3, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;->m:Z

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;->o:J

    .line 32
    new-instance v0, Lgwo;

    invoke-direct {v0, p0}, Lgwo;-><init>(Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;->q:Lgtx;

    .line 56
    new-instance v0, Lgwp;

    invoke-direct {v0, p0}, Lgwp;-><init>(Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;->p:Ljava/lang/Runnable;

    .line 72
    invoke-static {}, Lgtu;->a()Lgtu;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;->q:Lgtx;

    invoke-virtual {v0, v1, v3, v2}, Lgtu;->a(Landroid/content/Context;ZLgtx;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected final a(Landroid/webkit/WebSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 89
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 90
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;->a()Z

    .line 77
    return-void
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->b()V

    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo$VideoPlayerWebChromeClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo$VideoPlayerWebChromeClient;-><init>(Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;Lgwo;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 83
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;->e:Landroid/webkit/WebView;

    new-instance v1, Lgwq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lgwq;-><init>(Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuitVideo;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 84
    return-void
.end method
