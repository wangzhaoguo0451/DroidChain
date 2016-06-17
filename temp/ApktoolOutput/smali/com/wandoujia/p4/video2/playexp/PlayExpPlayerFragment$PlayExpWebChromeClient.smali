.class Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment$PlayExpWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "PlayExpPlayerFragment.java"


# instance fields
.field final synthetic this$0:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;


# direct methods
.method private constructor <init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment$PlayExpWebChromeClient;->this$0:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;Lgoa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 803
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment$PlayExpWebChromeClient;-><init>(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)V

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
    .line 807
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/wandoujia/base/utils/SystemUtil;->aboveApiLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    const-string v0, "play exp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "js console"

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

    .line 811
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

    .line 816
    const-string v0, "play exp"

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

    .line 817
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 818
    invoke-static {}, Lesb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 819
    const/4 v0, 0x1

    return v0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 824
    const-string v0, "play exp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " onReceivedTitletitle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment$PlayExpWebChromeClient;->this$0:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;

    invoke-static {v4}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->b(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment$PlayExpWebChromeClient;->this$0:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->t(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment$PlayExpWebChromeClient;->this$0:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;

    invoke-static {v0, v6}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->a(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;Z)Z

    .line 829
    iget-object v0, p0, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment$PlayExpWebChromeClient;->this$0:Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;->a(Lcom/wandoujia/p4/video2/playexp/PlayExpPlayerFragment;)Lgok;

    move-result-object v0

    invoke-virtual {v0, v6}, Lgok;->sendEmptyMessage(I)Z

    .line 832
    :cond_0
    return-void
.end method
