.class final Lekf;
.super Ljava/lang/Object;
.source "StatefulCtrl.java"

# interfaces
.implements Leey;


# instance fields
.field private synthetic a:Lejy;


# direct methods
.method constructor <init>(Lejy;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lekf;->a:Lejy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/launcher_base/download/DownloadInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-object v0, Lekc;->a:[I

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 179
    :pswitch_0
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

    .line 180
    iget-object v1, p0, Lekf;->a:Lejy;

    iget-object v1, v1, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    invoke-interface {v1, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setProgress(I)V

    .line 181
    iget-object v0, p0, Lekf;->a:Lejy;

    iget-object v1, v0, Lejy;->a:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;

    invoke-interface {p1}, Lcom/wandoujia/launcher_base/download/DownloadInfo;->h()Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v2, Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;->PAUSED:Lcom/wandoujia/launcher_base/download/DownloadInfo$Status;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->PAUSING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    :goto_1
    invoke-interface {v1, v0}, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView;->setState(Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;->DOWNLOADING:Lcom/wandoujia/launcher_base/view/stateful/view/StatefulView$State;

    goto :goto_1

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
