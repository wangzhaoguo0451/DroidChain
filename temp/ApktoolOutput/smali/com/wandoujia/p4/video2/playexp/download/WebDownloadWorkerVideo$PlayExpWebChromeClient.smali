.class Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo$PlayExpWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebDownloadWorkerVideo.java"


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo$PlayExpWebChromeClient;->this$0:Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;Lgpd;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo$PlayExpWebChromeClient;-><init>(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 355
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "videowebdownload-worker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "js console "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " line:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    :cond_0
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

    .line 363
    const-string v0, "videowebdownload-worker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "js alert"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " line:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 365
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 366
    const/4 v0, 0x1

    return v0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 371
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 372
    const-string v0, "videowebdownload-worker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onReceivedTitle title: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " canLoadJavascript "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo$PlayExpWebChromeClient;->this$0:Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;

    #getter for: Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageTitleReceived:Z
    invoke-static {v2}, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->access$2800(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo$PlayExpWebChromeClient;->this$0:Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;

    #getter for: Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->enterTime:J
    invoke-static {v4}, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->access$500(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo$PlayExpWebChromeClient;->this$0:Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;

    #getter for: Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageTitleReceived:Z
    invoke-static {v0}, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->access$2800(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo$PlayExpWebChromeClient;->this$0:Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;

    const/4 v1, 0x1

    #setter for: Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->pageTitleReceived:Z
    invoke-static {v0, v1}, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->access$2802(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;Z)Z

    .line 376
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo$PlayExpWebChromeClient;->this$0:Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;

    #getter for: Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->playExpLoadingHandler:Lgpf;
    invoke-static {v0}, Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;->access$200(Lcom/wandoujia/p4/video2/playexp/download/WebDownloadWorkerVideo;)Lgpf;

    move-result-object v0

    invoke-virtual {v0, v6}, Lgpf;->sendEmptyMessage(I)Z

    .line 379
    :cond_0
    return-void
.end method
