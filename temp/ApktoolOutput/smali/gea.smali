.class public final Lgea;
.super Lcom/wandoujia/appmanager/LocalAppChangedListener;
.source "VideoPlayAppDownloadButton.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lgea;->a:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    invoke-direct {p0}, Lcom/wandoujia/appmanager/LocalAppChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-virtual {p1}, Lcom/wandoujia/appmanager/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgea;->a:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    invoke-static {v1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->e(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lgea;->a:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    sget-object v1, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->OPEN:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setAction(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;)V

    .line 202
    iget-object v0, p0, Lgea;->a:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    invoke-static {v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->f(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Lged;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lgea;->a:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    invoke-static {v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->f(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Lged;

    move-result-object v0

    invoke-interface {v0}, Lged;->a()V

    .line 207
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lgea;->a:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    invoke-static {v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->e(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lgea;->a:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    sget-object v1, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->INSTALLING:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setAction(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;)V

    .line 228
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppChangedListener$Error;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lgea;->a:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    invoke-static {v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->e(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lgea;->a:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    sget-object v1, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->INSTALL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setAction(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;)V

    .line 221
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/wandoujia/appmanager/LocalAppInfo;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lgea;->a:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    invoke-static {v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->e(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lgea;->a:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;

    sget-object v1, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->INSTALL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-virtual {v0, v1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setAction(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;)V

    .line 214
    :cond_0
    return-void
.end method
