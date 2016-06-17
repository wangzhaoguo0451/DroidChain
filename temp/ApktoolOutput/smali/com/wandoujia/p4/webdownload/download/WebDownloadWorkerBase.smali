.class public abstract Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;
.super Ljava/lang/Object;
.source "WebDownloadWorkerBase.java"


# static fields
.field protected static final BLANK_URL:Ljava/lang/String; = "about:blank"


# instance fields
.field protected final context:Landroid/content/Context;

.field public final downloader:Lgsq;

.field public pageUrl:Ljava/lang/String;

.field public final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgsq;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;->downloader:Lgsq;

    .line 30
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;->webView:Landroid/webkit/WebView;

    .line 32
    invoke-direct {p0}, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;->initWebView()V

    .line 33
    return-void
.end method

.method private initWebView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 52
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 54
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 55
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 56
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 57
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 58
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 59
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 60
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;->webView:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/wandoujia/base/utils/SystemUtil;->addWandoujiaInUserAgent(Landroid/webkit/WebView;)V

    .line 64
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 65
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 67
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 75
    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 78
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 79
    const-string v1, "setMediaPlaybackRequiresUserGesture"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/reflect/JavaCalls;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_2
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public loadJavaScript(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public abstract performStartDownload(Ljava/lang/String;)V
.end method

.method public abstract performStopDownload()V
.end method

.method public startDownload(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 36
    const-string v0, "webdownload-download"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WebDownloadWorker startDownload: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;->pageUrl:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;->performStartDownload(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public stopDownload()V
    .locals 3

    .prologue
    .line 44
    const-string v0, "webdownload-download"

    const-string v1, "WebDownloadWorker stopDownload"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;->pageUrl:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;->performStopDownload()V

    .line 47
    return-void
.end method
