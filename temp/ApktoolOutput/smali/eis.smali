.class public Leis;
.super Leik;
.source "AppProgressButtonSelector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Leik;-><init>()V

    .line 61
    return-void
.end method

.method private c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 6
    .parameter

    .prologue
    .line 17
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PAUSED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-ne v0, v1, :cond_1

    .line 20
    :cond_0
    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->i()Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->PATCH:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    if-ne v0, v1, :cond_2

    .line 21
    iget-object v0, p0, Leis;->c:Leiu;

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->d()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->e()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lehh;->a(Ljava/lang/String;JJ)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    move v1, v0

    .line 30
    :goto_0
    iget-object v0, p0, Leis;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    instance-of v0, v0, Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Leis;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    check-cast v0, Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;->setProgress(F)V

    .line 34
    :cond_1
    return-void

    .line 26
    :cond_2
    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->d()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->e()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Leis;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    instance-of v0, v0, Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leis;->b:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    check-cast v0, Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;

    int-to-float v1, p1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/wandoujia/launcher_base/view/button/view/StatefulProgressButton;->setProgress(F)V

    .line 50
    :cond_0
    return-void
.end method

.method public a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Leik;->a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    .line 55
    sget-object v0, Leit;->a:[I

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 60
    :pswitch_0
    invoke-direct {p0, p1}, Leis;->c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final b(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Leis;->c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V

    .line 45
    return-void
.end method
