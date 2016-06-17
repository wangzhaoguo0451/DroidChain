.class public Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;
.super Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;
.source "WebDownloadWorkerVideo.java"

# interfaces
.implements Leax;


# static fields
.field private static final ERROR_EXIT_PLAY_MESSAGE:I = 0x2

.field private static final INVALIDATE_WEB_VIEW:I = 0x1

.field private static final LOAD_ALL_VIDEOS_MESSAGE:I = 0x3

.field private static final LOAD_JAVASCRIPT_MESSAGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "videowebdownload-worker"

.field private static final WAIT_LOAD_RESOURCE_TIMEOUT:I = 0x4

.field private static final WAIT_LOAD_RESOURCE_TIMEOUT_TIME:J = 0x2710L


# instance fields
.field private context:Landroid/content/Context;

.field private enterTime:J

.field private invalidateWebViewTimes:J

.field private javascript:Ljava/lang/String;

.field private javascriptVersion:Ljava/lang/String;

.field private logger:Lgom;

.field private onReadyCalled:Z

.field private pageFinished:Z

.field private pageLoadStartTime:J

.field private pageTitleReceived:Z

.field private playExpLoadingHandler:Lgpf;

.field private webViewHelper:Lgtl;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lgsq;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/webdownload/download/WebDownloadWorkerBase;-><init>(Landroid/content/Context;Lgsq;)V

    .line 63
    iput-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->enterTime:J

    .line 64
    iput-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageLoadStartTime:J

    .line 65
    iput-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->invalidateWebViewTimes:J

    .line 69
    iput-boolean v3, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageTitleReceived:Z

    .line 71
    iput-boolean v3, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->onReadyCalled:Z

    .line 72
    iput-boolean v3, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageFinished:Z

    .line 78
    iput-object p1, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->context:Landroid/content/Context;

    .line 79
    new-instance v0, Lgpf;

    invoke-direct {v0, p0}, Lgpf;-><init>(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->playExpLoadingHandler:Lgpf;

    .line 81
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo$PlayExpWebChromeClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo$PlayExpWebChromeClient;-><init>(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;Lgpd;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 82
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    new-instance v1, Lgph;

    invoke-direct {v1, p0, v3}, Lgph;-><init>(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    return-void
.end method

.method public static synthetic access$1002(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->javascriptVersion:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1200(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic access$1300(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic access$1400(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)J
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->invalidateWebViewTimes:J

    return-wide v0
.end method

.method public static synthetic access$1408(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)J
    .locals 4
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->invalidateWebViewTimes:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->invalidateWebViewTimes:J

    return-wide v0
.end method

.method public static synthetic access$1500(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->loadJavascriptWhenAvailable(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1700(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Lgsq;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->downloader:Lgsq;

    return-object v0
.end method

.method public static synthetic access$1800(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageFinished:Z

    return v0
.end method

.method public static synthetic access$1802(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageFinished:Z

    return p1
.end method

.method public static synthetic access$1900(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Lgpf;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->playExpLoadingHandler:Lgpf;

    return-object v0
.end method

.method public static synthetic access$2000(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Lgsq;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->downloader:Lgsq;

    return-object v0
.end method

.method public static synthetic access$2100(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$2200(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Lgsq;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->downloader:Lgsq;

    return-object v0
.end method

.method public static synthetic access$2300(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$2400(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Lgsq;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->downloader:Lgsq;

    return-object v0
.end method

.method public static synthetic access$2500(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Lgtl;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webViewHelper:Lgtl;

    return-object v0
.end method

.method public static synthetic access$2600(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic access$2700(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic access$2800(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageTitleReceived:Z

    return v0
.end method

.method public static synthetic access$2802(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageTitleReceived:Z

    return p1
.end method

.method public static synthetic access$2900(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)J
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageLoadStartTime:J

    return-wide v0
.end method

.method public static synthetic access$2902(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;J)J
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageLoadStartTime:J

    return-wide p1
.end method

.method public static synthetic access$300(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic access$3000(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$3100(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Lgsq;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->downloader:Lgsq;

    return-object v0
.end method

.method public static synthetic access$3200(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$3300(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$3400(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Lgsq;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->downloader:Lgsq;

    return-object v0
.end method

.method public static synthetic access$3500(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$3600(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Lgsq;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->downloader:Lgsq;

    return-object v0
.end method

.method public static synthetic access$3700(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$3800(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Lgsq;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->downloader:Lgsq;

    return-object v0
.end method

.method public static synthetic access$400(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)J
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->enterTime:J

    return-wide v0
.end method

.method public static synthetic access$600(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->onReadyCalled:Z

    return v0
.end method

.method public static synthetic access$602(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->onReadyCalled:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Lgom;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->logger:Lgom;

    return-object v0
.end method

.method public static synthetic access$800(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->javascript:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$902(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->javascript:Ljava/lang/String;

    return-object p1
.end method

.method private asyncLoadPlayExpJs()V
    .locals 4

    .prologue
    .line 147
    invoke-static {}, Lgtu;->a()Lgtu;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->context:Landroid/content/Context;

    const/4 v2, 0x1

    new-instance v3, Lgpe;

    invoke-direct {v3, p0}, Lgpe;-><init>(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)V

    invoke-virtual {v0, v1, v2, v3}, Lgtu;->a(Landroid/content/Context;ZLgtx;)V

    .line 175
    return-void
.end method

.method private loadJavascriptWhenAvailable(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 303
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

    iget-boolean v2, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageTitleReceived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->enterTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageTitleReceived:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->logger:Lgom;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->enterTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lgom;->a(J)V

    .line 311
    :cond_0
    return-void
.end method


# virtual methods
.method public getEpisodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    const-string v0, ""

    return-object v0
.end method

.method public getIsFirstPlay()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public getJsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->javascriptVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginWebUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    const-string v0, ""

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    const-string v0, ""

    return-object v0
.end method

.method public getWebUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 331
    const-string v0, ""

    .line 333
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public performStartDownload(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->enterTime:J

    .line 88
    new-instance v0, Lgom;

    invoke-direct {v0}, Lgom;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->logger:Lgom;

    .line 89
    invoke-static {}, Lgom;->a()V

    .line 91
    invoke-direct {p0}, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->asyncLoadPlayExpJs()V

    .line 93
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lgtl;

    iget-object v1, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    invoke-direct {v0, v1, v2}, Lgtl;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webViewHelper:Lgtl;

    .line 97
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webViewHelper:Lgtl;

    new-instance v1, Lgpd;

    invoke-direct {v1, p0}, Lgpd;-><init>(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)V

    iput-object v1, v0, Lgtl;->c:Lgtt;

    .line 144
    return-void
.end method

.method protected performStopDownload()V
    .locals 6

    .prologue
    .line 179
    const-string v0, "videowebdownload-worker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "performStopDownload coast: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->enterTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 183
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
