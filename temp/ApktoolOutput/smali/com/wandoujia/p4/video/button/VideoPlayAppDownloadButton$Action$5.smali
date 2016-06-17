.class final enum Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action$5;
.super Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;
.source "VideoPlayAppDownloadButton.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton$Action;-><init>(Ljava/lang/String;IILgea;)V

    return-void
.end method


# virtual methods
.method protected final apply(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V
    .locals 3
    .parameter

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e047a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->c(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->setEnabled(Z)V

    .line 105
    return-void
.end method

.method public final onClick(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-static {}, Lcom/wandoujia/appmanager/AppManager;->a()Lcom/wandoujia/appmanager/AppManager;

    invoke-static {p1}, Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;->e(Lcom/wandoujia/p4/video/button/VideoPlayAppDownloadButton;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/appmanager/AppManager;->b(Ljava/lang/String;)V

    .line 112
    return-void
.end method
