.class final enum Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$4;
.super Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;
.source "VideoPlayAppDownloadButton.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;-><init>(Ljava/lang/String;IILgea;)V

    return-void
.end method


# virtual methods
.method protected final apply(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0630

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->c(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p1, v4}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setEnabled(Z)V

    .line 83
    invoke-virtual {p1, v3}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setVisibility(I)V

    .line 84
    return-void
.end method

.method public final onClick(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    invoke-static {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->d(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->d(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->buildAppPlayIntent()Landroid/content/Intent;

    move-result-object v0

    .line 91
    :try_start_0
    invoke-virtual {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
