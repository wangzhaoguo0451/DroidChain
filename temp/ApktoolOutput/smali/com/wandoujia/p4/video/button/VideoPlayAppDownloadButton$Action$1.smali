.class final enum Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$1;
.super Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;
.source "VideoPlayAppDownloadButton.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;-><init>(Ljava/lang/String;IILgea;)V

    return-void
.end method


# virtual methods
.method protected final apply(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0385

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setEnabled(Z)V

    .line 50
    return-void
.end method

.method public final onClick(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-static {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->a(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V

    .line 55
    return-void
.end method
