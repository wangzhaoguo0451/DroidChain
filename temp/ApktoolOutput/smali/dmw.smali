.class public final Ldmw;
.super Lhic;
.source "DownloadProgressBarPresenter.java"


# instance fields
.field private a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lhic;-><init>()V

    .line 38
    return-void
.end method

.method private a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x4480

    .line 105
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->c:I

    .line 116
    :goto_0
    invoke-virtual {p0}, Ldmw;->d()Lerf;

    move-result-object v1

    iget-object v1, v1, Lerf;->a:Leri;

    const v2, 0x7f0c0045

    invoke-virtual {v1, v2}, Leri;->b(I)Leri;

    move-result-object v1

    invoke-virtual {v1, v7}, Leri;->c(I)Leri;

    move-result-object v1

    invoke-virtual {v1, v0}, Leri;->d(I)Leri;

    .line 117
    invoke-virtual {p0}, Ldmw;->d()Lerf;

    move-result-object v0

    iget-object v0, v0, Lerf;->a:Leri;

    const v1, 0x7f0c0047

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v1

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->f:J

    long-to-float v0, v2

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2

    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    const v4, 0x7f0e015c

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Leri;->a(Ljava/lang/CharSequence;)Leri;

    .line 119
    invoke-virtual {p0}, Ldmw;->d()Lerf;

    move-result-object v0

    iget-object v0, v0, Lerf;->a:Leri;

    const v1, 0x7f0c0046

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v1

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v4, v0, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    cmp-long v0, v4, v10

    if-gtz v0, :cond_4

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Leri;->a(Ljava/lang/CharSequence;)Leri;

    .line 121
    return-void

    .line 108
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v2, v0, Lcom/wandoujia/download2/DownloadInfo2;->e:J

    .line 109
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->d:Lcom/wandoujia/download2/DownloadInfo2;

    iget-wide v0, v0, Lcom/wandoujia/download2/DownloadInfo2;->d:J

    .line 110
    cmp-long v4, v0, v10

    if-gtz v4, :cond_1

    .line 112
    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    .line 114
    :cond_1
    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    div-long v0, v2, v0

    long-to-int v0, v0

    goto :goto_0

    .line 117
    :cond_2
    long-to-float v0, v2

    div-float/2addr v0, v6

    float-to-long v2, v0

    long-to-float v0, v2

    cmpg-float v0, v0, v6

    if-gez v0, :cond_3

    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    const/high16 v4, 0x7f0e

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    const v4, 0x7f0e0001

    new-array v5, v8, [Ljava/lang/Object;

    long-to-float v2, v2

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 119
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v2, v2

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    long-to-double v2, v4

    invoke-static {v2, v3}, Lcom/wandoujia/base/utils/TextUtil;->formatSizeInfo(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a(Z)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0c0047

    const v4, 0x7f0c0046

    const v1, 0x7f0c0045

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p0}, Ldmw;->d()Lerf;

    move-result-object v0

    iget-object v0, v0, Lerf;->a:Leri;

    invoke-virtual {v0, v5}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->f(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->f(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->f(I)Leri;

    move-result-object v0

    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->f(I)Leri;

    move-result-object v0

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Ldmw;->d()Lerf;

    move-result-object v0

    iget-object v0, v0, Lerf;->a:Leri;

    invoke-virtual {v0, v5}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    move-result-object v0

    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    move-result-object v0

    const v1, 0x7f0c005e

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->f(I)Leri;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lhic;->a()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Ldmw;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 51
    return-void
.end method

.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 7
    .parameter

    .prologue
    const v5, 0x7f0c0047

    const v4, 0x7f0c0046

    const v2, 0x7f0c0045

    const/4 v3, 0x4

    const/4 v6, 0x0

    .line 43
    const v0, 0x7f0c001b

    invoke-virtual {p1, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    iput-object v0, p0, Ldmw;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    .line 44
    iget-object v1, p0, Ldmw;->a:Lcom/wandoujia/ripple_framework/download/DownloadInfo;

    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldmw;->a(Z)V

    iget-object v0, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldmw;->d()Lerf;

    move-result-object v0

    iget-object v0, v0, Lerf;->a:Leri;

    invoke-virtual {v0, v5}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->f(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->f(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->f(I)Leri;

    move-result-object v0

    const v2, 0x7f0c0048

    invoke-virtual {v0, v2}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    invoke-direct {p0, v1}, Ldmw;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Ldmw;->d()Lerf;

    move-result-object v0

    iget-object v0, v0, Lerf;->a:Leri;

    invoke-virtual {v0, v5}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v4}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v3}, Leri;->f(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v2}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->f(I)Leri;

    move-result-object v0

    const v2, 0x7f0c0048

    invoke-virtual {v0, v2}, Leri;->b(I)Leri;

    move-result-object v0

    invoke-virtual {v0, v6}, Leri;->f(I)Leri;

    move-result-object v2

    if-eqz v1, :cond_2

    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Ldmx;->a:[I

    iget-object v4, v1, Lcom/wandoujia/ripple_framework/download/DownloadInfo;->c:Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;

    invoke-virtual {v4}, Lcom/wandoujia/ripple_framework/download/DownloadInfo$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Leri;->a(Ljava/lang/CharSequence;)Leri;

    invoke-direct {p0, v1}, Ldmw;->a(Lcom/wandoujia/ripple_framework/download/DownloadInfo;)V

    goto :goto_0

    :pswitch_0
    const v3, 0x7f0e0573

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const v3, 0x7f0e0571

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const v3, 0x7f0e04cf

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const v3, 0x7f0e029a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    const v3, 0x7f0e0572

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0184

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :pswitch_5
    const v3, 0x7f0e0570

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    const v3, 0x7f0e0574

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v6}, Ldmw;->a(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
