.class public Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;
.super Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;
.source "WebDownloadWorkerMusic.java"


# static fields
.field private static final JS_CALLBACK_NAME:Ljava/lang/String; = "NativeCallback"


# instance fields
.field private targetProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgsq;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;-><init>(Landroid/content/Context;Lgsq;)V

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 48
    new-instance v0, Lgsk;

    invoke-direct {v0, p0, v2}, Lgsk;-><init>(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;B)V

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 53
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic$WalkmanWebChromeClient;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic$WalkmanWebChromeClient;-><init>(Ld;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 54
    return-void

    .line 50
    :cond_0
    new-instance v0, Lgsj;

    invoke-direct {v0, p0, v2}, Lgsj;-><init>(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;B)V

    goto :goto_0
.end method

.method public static synthetic access$300(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;->targetProvider:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$302(Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;->targetProvider:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized customAudioSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lgxg;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFakePlay()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 120
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method protected performStartDownload(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;->webView:Landroid/webkit/WebView;

    const-string v1, "NativeCallback"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 60
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method protected performStopDownload()V
    .locals 2

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 68
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized sendToNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 76
    monitor-enter p0

    :try_start_0
    const-string v0, "webdownload-download"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WebDownloadWorker sendToNative eventName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " jsArgs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    :goto_0
    const-string v1, "onfetchsrc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const-string v1, "src"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-static {v0}, Lgxg;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;->downloader:Lgsq;

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;->pageUrl:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lgsq;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 84
    :cond_1
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    .line 95
    :try_start_3
    iget-object v1, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;->downloader:Lgsq;

    iget-object v2, p0, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerMusic;->pageUrl:Ljava/lang/String;

    sget-object v3, Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;->ERROR_JAVA_SCRIPT_MESSAGE:Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/wandoujia/rpc/http/exception/HttpExceptionUtils;->getMessage(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lgsq;->a(Ljava/lang/String;Lcom/wandoujia/p4/webdownload/util/WebDownloadLogHelper$ErrorType;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
