.class public final Lgfv;
.super Ljava/lang/Object;
.source "VideoDetailPreviewController.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/wandoujia/mvc/BaseController",
        "<",
        "Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;",
        "Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;->getCoverView()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;->smallCover:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;->getCoverView()Lcom/wandoujia/image/view/AsyncImageView;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;->smallCover:Ljava/lang/String;

    const v2, 0x7f0a0081

    invoke-virtual {v0, v1, v2}, Lcom/wandoujia/image/view/AsyncImageView;->a(Ljava/lang/String;I)V

    .line 27
    :cond_0
    iget-wide v0, p1, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;->videoId:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p1, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;->episodeId:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 28
    new-instance v0, Lgfw;

    invoke-direct {v0, p1}, Lgfw;-><init>(Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;)V

    invoke-virtual {p0, v0}, Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    :cond_1
    return-void
.end method


# virtual methods
.method public final synthetic bind(Lcom/wandoujia/mvc/BaseView;Lcom/wandoujia/mvc/BaseModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;

    check-cast p2, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;

    invoke-static {p1, p2}, Lgfv;->a(Lcom/wandoujia/p4/video2/card/view/VideoDetailPreviewView;Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;)V

    return-void
.end method
