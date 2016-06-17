.class final enum Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$7;
.super Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;
.source "VideoPlayAppDownloadButton.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;-><init>(Ljava/lang/String;IILgea;)V

    return-void
.end method


# virtual methods
.method protected final apply(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0385

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setEnabled(Z)V

    .line 123
    return-void
.end method

.method public final onClick(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    invoke-static {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->e:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v1, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v0, v1, :cond_0

    .line 131
    invoke-static {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->b(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->a:Lcom/wandoujia/download2/DownloadRequestParam;

    iget-object v0, v0, Lcom/wandoujia/download2/DownloadRequestParam;->e:Ljava/lang/String;

    .line 132
    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    invoke-static {v0}, Leuy;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_2
    sget-object v0, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$7;->INSTALL:Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;

    invoke-virtual {v0, p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;->onClick(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V

    goto :goto_0
.end method
