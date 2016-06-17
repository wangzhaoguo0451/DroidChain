.class public final Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;
.super Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;
.source "WebDownloadWorkerVideo.java"


# instance fields
.field private a:Lgtl;

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgsq;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;-><init>(Landroid/content/Context;Lgsq;)V

    .line 54
    iput-wide v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->b:J

    .line 55
    iput-wide v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->c:J

    .line 60
    iput-boolean v3, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->e:Z

    .line 62
    iput-boolean v3, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->f:Z

    .line 63
    iput-boolean v3, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->g:Z

    .line 65
    new-instance v0, Lgsl;

    invoke-direct {v0, p0}, Lgsl;-><init>(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->h:Landroid/os/Handler;

    .line 179
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo$PlayExpWebChromeClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo$PlayExpWebChromeClient;-><init>(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;Lgsl;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 180
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    new-instance v1, Lgsp;

    invoke-direct {v1, p0, v3}, Lgsp;-><init>(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 181
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;)J
    .locals 4
    .parameter

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->c:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "videowebdownload-worker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load javascript empty: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pageTitleReceived "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->f:Z

    return p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;)J
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->c:J

    return-wide v0
.end method

.method public static synthetic b(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->d:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->e:Z

    return p1
.end method

.method public static synthetic c(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->h:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->g:Z

    return p1
.end method

.method public static synthetic d(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic e(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->f:Z

    return v0
.end method

.method public static synthetic f(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->g:Z

    return v0
.end method

.method public static synthetic g(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;)Lgtl;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->a:Lgtl;

    return-object v0
.end method

.method public static synthetic h(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;)J
    .locals 2
    .parameter

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->b:J

    return-wide v0
.end method

.method public static synthetic i(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->e:Z

    return v0
.end method


# virtual methods
.method protected final performStartDownload(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->b:J

    .line 187
    invoke-static {}, Lgtu;->a()Lgtu;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->context:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v3, Lgso;

    invoke-direct {v3, p0}, Lgso;-><init>(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;)V

    invoke-virtual {v0, v1, v2, v3}, Lgtu;->a(Landroid/content/Context;ZLgtx;)V

    .line 189
    new-instance v0, Lgtl;

    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Lgtl;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->a:Lgtl;

    .line 190
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;->a:Lgtl;

    new-instance v1, Lgsn;

    invoke-direct {v1, p0}, Lgsn;-><init>(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerVideo;)V

    iput-object v1, v0, Lgtl;->c:Lgtt;

    .line 237
    return-void
.end method

.method protected final performStopDownload()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method
