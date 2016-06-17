.class final Lggk;
.super Ljava/lang/Object;
.source "VideoDetailOperationBarController.java"

# interfaces
.implements Lgje;


# instance fields
.field private synthetic a:Lggi;


# direct methods
.method constructor <init>(Lggi;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lggk;->a:Lggi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;Ljava/util/List;Ljava/util/List;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/download/DownloadInfo;",
            ">;",
            "Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;",
            "Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lggk;->a:Lggi;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    if-eqz v0, :cond_0

    iget-object v3, v1, Lggi;->d:Ljava/util/Set;

    iget-object v4, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->commonDownloadSourceSet:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v1, Lggi;->e:Ljava/util/Set;

    iget-object v4, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->privateDownloadSourceSet:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v1, Lggi;->d:Ljava/util/Set;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->playExpDownloadSourceSet:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lggk;->a:Lggi;

    iget-object v1, p0, Lggk;->a:Lggi;

    iget-object v1, v1, Lggi;->f:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    iget-object v2, p0, Lggk;->a:Lggi;

    iget-object v2, v2, Lggi;->g:Lggn;

    invoke-virtual {v0, v1, v2}, Lggi;->b(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V

    .line 106
    iget-object v0, p0, Lggk;->a:Lggi;

    iget-object v1, p0, Lggk;->a:Lggi;

    iget-object v1, v1, Lggi;->f:Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;

    iget-object v2, p0, Lggk;->a:Lggi;

    iget-object v2, v2, Lggi;->g:Lggn;

    invoke-virtual {v0, v1, v2}, Lggi;->c(Lcom/wandoujia/p4/video2/detail/VideoDetailOperationBarView;Lggn;)V

    .line 107
    return-void
.end method
