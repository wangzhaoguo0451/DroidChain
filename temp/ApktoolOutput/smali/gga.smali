.class public final Lgga;
.super Ljava/lang/Object;
.source "VideoDefaultSourceDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lggc;

.field private synthetic b:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;


# direct methods
.method public constructor <init>(Lggc;Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lgga;->a:Lggc;

    iput-object p2, p0, Lgga;->b:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 147
    iget-object v5, p0, Lgga;->a:Lggc;

    iget-object v0, p0, Lgga;->b:Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    iget-object v1, v5, Lggc;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lggi;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v5, Lggc;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->b(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v5, Lggc;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->c(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v5, Lggc;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v1, v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;)Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    iget-object v0, v5, Lggc;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lggi;

    move-result-object v6

    iget-object v0, v5, Lggc;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v0}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->b(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    move-result-object v7

    new-instance v0, Lggn;

    iget-object v1, v5, Lggc;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v1}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->c(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    move-result-object v1

    iget-object v2, v5, Lggc;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v2}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->c(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v2

    iget-object v2, v2, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->defaultEpisode:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-object v3, v5, Lggc;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v3}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->d(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;

    move-result-object v3

    iget-object v4, v5, Lggc;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v4}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->e(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;

    move-result-object v4

    iget-object v5, v5, Lggc;->a:Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;

    invoke-static {v5}, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;->f(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment;)Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lggn;-><init>(Lcom/wandoujia/p4/video2/model/VideoDetailModel;Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;Lcom/wandoujia/p4/video2/model/VideoDefaultSourceModel;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V

    invoke-virtual {v6, v7, v0}, Lggi;->a(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V

    .line 148
    :cond_0
    return-void
.end method
