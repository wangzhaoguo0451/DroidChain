.class public final Lgis;
.super Ljava/lang/Object;
.source "VideoDetailTabHostFragment.java"

# interfaces
.implements Lggh;


# instance fields
.field private synthetic a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lgis;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V
    .locals 8
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lgis;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lggi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgis;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->b(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgis;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->c(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;->getEpisodeModel()Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v0

    iget-wide v0, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    iget-object v2, p0, Lgis;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->c(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->defaultEpisode:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-wide v2, v2, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lgis;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0, p1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    .line 169
    iget-object v0, p0, Lgis;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lggi;

    move-result-object v6

    iget-object v0, p0, Lgis;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->b(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    move-result-object v7

    new-instance v0, Lggn;

    iget-object v1, p0, Lgis;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->c(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    move-result-object v1

    iget-object v2, p0, Lgis;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->c(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->defaultEpisode:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-object v3, p0, Lgis;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    move-result-object v4

    iget-object v3, p0, Lgis;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->f(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    move-result-object v5

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lggn;-><init>(Lcom/wandoujia/p4/video2/model/VideoDetailModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V

    invoke-virtual {v6, v7, v0}, Lggi;->a(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V

    goto :goto_0
.end method
