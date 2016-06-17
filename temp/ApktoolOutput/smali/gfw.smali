.class final Lgfw;
.super Ljava/lang/Object;
.source "VideoDetailPreviewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;


# direct methods
.method constructor <init>(Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lgfw;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 31
    new-instance v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lgfw;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;->videoId:J

    iget-object v4, p0, Lgfw;->a:Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;

    iget-wide v4, v4, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;->episodeId:J

    invoke-direct/range {v0 .. v5}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;-><init>(Landroid/content/Context;JJ)V

    sget-object v1, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;->DETAIL:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    iput-object v1, v0, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->b:Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction$Source;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/play/VideoOnlinePlayAction;->execute()V

    .line 34
    return-void
.end method
