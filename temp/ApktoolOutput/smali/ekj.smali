.class final Lekj;
.super Ljava/lang/Object;
.source "StatefulCtrl.java"

# interfaces
.implements Leeq;


# instance fields
.field private synthetic a:Lejy;


# direct methods
.method constructor <init>(Lejy;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lekj;->a:Lejy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z
    .locals 2
    .parameter

    .prologue
    .line 315
    if-eqz p1, :cond_0

    iget-object v0, p0, Lekj;->a:Lejy;

    iget-object v0, v0, Lejy;->b:Leiu;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lekj;->a:Lejy;

    iget-object v1, v1, Lejy;->b:Leiu;

    invoke-interface {v1}, Leiu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 6
    .parameter

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lekj;->c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PAUSED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->DOWNLOADING:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-ne v0, v1, :cond_1

    .line 281
    :cond_0
    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->i()Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;->PATCH:Lcom/wandoujia/launcher_base/download/DownloadInfo$ContentType;

    if-ne v0, v1, :cond_2

    .line 282
    iget-object v0, p0, Lekj;->a:Lejy;

    iget-object v0, v0, Lejy;->b:Leiu;

    invoke-interface {v0}, Leiu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->d()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->e()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lehh;->a(Ljava/lang/String;JJ)I

    move-result v0

    .line 287
    :goto_0
    if-lez v0, :cond_1

    .line 288
    iget-object v1, p0, Lekj;->a:Lejy;

    iget-object v1, v1, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    invoke-interface {v1, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setProgress(I)V

    .line 291
    :cond_1
    return-void

    .line 284
    :cond_2
    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->d()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->e()J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public final b(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 295
    invoke-direct {p0, p1}, Lekj;->c(Lcom/wandoujia/launcher_base/download/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    sget-object v0, Lekc;->a:[I

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 312
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 298
    :pswitch_1
    iget-object v0, p0, Lekj;->a:Lejy;

    iget-object v0, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setProgress(I)V

    .line 299
    iget-object v0, p0, Lekj;->a:Lejy;

    iget-object v0, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->DOWNLOADED:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lekj;->a:Lejy;

    iget-object v0, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->PAUSING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    goto :goto_0

    .line 305
    :pswitch_3
    iget-object v0, p0, Lekj;->a:Lejy;

    iget-object v0, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->DOWNLOADING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    goto :goto_0

    .line 308
    :pswitch_4
    iget-object v0, p0, Lekj;->a:Lejy;

    iget-object v0, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    sget-object v1, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->DOWNLOADING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    invoke-interface {v0, v1}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
