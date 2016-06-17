.class public final Lfqp;
.super Ljava/lang/Object;
.source "ResumeDownloadAction.java"

# interfaces
.implements Lcom/wandoujia/mvc/Action;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lfqp;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 29
    iput-object p1, p0, Lfqp;->a:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic a(Lfqp;)Lcom/wandoujia/ripple_framework/download/DownloadInfo;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lfqp;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    return-object v0
.end method


# virtual methods
.method public final execute()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    sget-object v0, Lham;->f:Lham;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadManager;

    .line 36
    iget-object v1, p0, Lfqp;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lfqp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/wandoujia/base/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    iget-object v0, p0, Lfqp;->a:Landroid/content/Context;

    const v1, 0x7f0e047f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v1, p0, Lfqp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/wandoujia/base/utils/NetworkUtil;->isMobileNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v1}, Lcom/wandoujia/base/utils/NetworkUtil;->checkWifiIsHotSpot(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_5

    .line 43
    invoke-static {}, Lcom/wandoujia/p4/configs/Config;->b()J

    move-result-wide v4

    iget-object v1, p0, Lfqp;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v6, v1, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    .line 45
    iget-object v1, p0, Lfqp;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 41
    goto :goto_1

    .line 48
    :cond_4
    new-instance v1, Lhoq;

    iget-object v4, p0, Lfqp;->a:Landroid/content/Context;

    invoke-direct {v1, v4}, Lhoq;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e0598

    invoke-virtual {v1, v4}, Lhoq;->a(I)Lhoq;

    move-result-object v1

    iget-object v4, p0, Lfqp;->a:Landroid/content/Context;

    const v5, 0x7f0e027f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "%.1f"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lfqp;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v7, v7, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v8, v7, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    long-to-float v7, v8

    iget-object v8, p0, Lfqp;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iget-object v8, v8, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget v8, v8, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    rsub-int/lit8 v8, v8, 0x64

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    const/high16 v8, 0x4980

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhoq;->b(Ljava/lang/CharSequence;)Lhoq;

    move-result-object v1

    const v2, 0x7f0e0162

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lhoq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v1

    const v2, 0x7f0e024e

    new-instance v3, Lfqq;

    invoke-direct {v3, p0, v0}, Lfqq;-><init>(Lfqp;Lcom/wandoujia/ripple_framework/download/DownloadManager;)V

    invoke-virtual {v1, v2, v3}, Lhoq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lhoq;

    move-result-object v0

    invoke-virtual {v0}, Lhoq;->a()Lhoj;

    move-result-object v0

    invoke-virtual {v0}, Lhoj;->show()V

    goto/16 :goto_0

    .line 65
    :cond_5
    iget-object v1, p0, Lfqp;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/wandoujia/base/utils/NetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lfqp;->b:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/download/DownloadManager;->b(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto/16 :goto_0
.end method
