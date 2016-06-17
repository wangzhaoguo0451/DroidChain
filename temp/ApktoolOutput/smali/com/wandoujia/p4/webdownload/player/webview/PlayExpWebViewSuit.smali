.class public abstract Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;
.super Ljava/lang/Object;
.source "PlayExpWebViewSuit.java"

# interfaces
.implements Lgvc;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/StringBuilder;

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/os/Handler;

.field public e:Landroid/webkit/WebView;

.field public f:Lgvc;

.field public g:Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:J

.field private l:Lgtl;

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method protected constructor <init>(Lgvc;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->h:Z

    .line 51
    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->i:Z

    .line 52
    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->j:Z

    .line 61
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->a:Landroid/content/Context;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->b:Ljava/lang/StringBuilder;

    .line 63
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->f:Lgvc;

    .line 65
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 67
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->c:Landroid/os/Handler;

    .line 68
    invoke-static {}, Lgxm;->c()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->d:Landroid/os/Handler;

    .line 70
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->b()V

    .line 71
    new-instance v0, Lgtl;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->e:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Lgtl;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->l:Lgtl;

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->l:Lgtl;

    new-instance v1, Lgwm;

    invoke-direct {v1, p0}, Lgwm;-><init>(Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;)V

    iput-object v1, v0, Lgtl;->c:Lgtt;

    .line 72
    new-instance v0, Lgtl;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->e:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Lgtl;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->l:Lgtl;

    .line 73
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/webkit/WebSettings;)V
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->l:Lgtl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->j:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->l:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->m:I

    iget v3, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->n:I

    iget v4, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->o:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->a(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 216
    :cond_0
    return-void
.end method

.method public a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iput p3, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->o:I

    .line 229
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerErrorType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;ZLjava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;",
            "Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;",
            "Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;",
            "Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lgxm;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call in UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->h:Z

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method protected b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 95
    new-instance v0, Lcom/wandoujia/base/view/NonLeakingWebView;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wandoujia/base/view/NonLeakingWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->e:Landroid/webkit/WebView;

    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 100
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 101
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 102
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 103
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {v2}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->e:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->addWandoujiaInUserAgent(Landroid/webkit/WebView;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->a(Landroid/webkit/WebSettings;)V

    .line 111
    return-void
.end method

.method public b(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->g:Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;

    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->e:Landroid/webkit/WebView;

    iget-object v1, p1, Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;->pageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public final b(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->l:Lgtl;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->j:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->l:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->m:I

    iget v3, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->n:I

    iget v4, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->o:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->b(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 223
    :cond_0
    return-void
.end method

.method public final b(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 241
    iput p3, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->m:I

    .line 243
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->l:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->m:I

    iget v3, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->n:I

    iget v4, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->o:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->d(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 249
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->j:Z

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    iget v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->o:I

    if-ge p3, v0, :cond_0

    iget v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->o:I

    sub-int/2addr v0, p3

    int-to-long v0, v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, " js on ended in on progress"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->l:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->m:I

    iget v3, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->n:I

    iget v4, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->o:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->c(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 254
    iput-boolean v5, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->j:Z

    .line 256
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    return-void
.end method

.method public final c()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final c(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    return-void
.end method

.method public final c(Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo;Lcom/wandoujia/p4/webdownload/player/model/PlayExpMediaInfo$Media;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    iget v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->o:I

    mul-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->n:I

    .line 260
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->l:Lgtl;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;

    iget v2, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->m:I

    iget v3, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->n:I

    iget v4, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->o:I

    invoke-direct {v1, v2, v3, v4}, Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;-><init>(III)V

    invoke-virtual {v0, v1}, Lgtl;->e(Lcom/wandoujia/p4/webdownload/download/video/PlayExpPlayState;)V

    .line 262
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    return-void
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/player/webview/PlayExpWebViewSuit;->e:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 196
    return-void
.end method
