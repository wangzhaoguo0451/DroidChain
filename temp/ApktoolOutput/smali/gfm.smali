.class final Lgfm;
.super Ljava/lang/Object;
.source "VideoSectionListAdapter.java"

# interfaces
.implements Lgje;


# instance fields
.field private synthetic a:Lgfl;


# direct methods
.method constructor <init>(Lgfl;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lgfm;->a:Lgfl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;Ljava/util/List;Ljava/util/List;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V
    .locals 2
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
    .line 51
    iget-object v0, p0, Lgfm;->a:Lgfl;

    invoke-static {v0}, Lgfl;->a(Lgfl;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    move-result-object v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;->section:Ljava/lang/String;

    iget-object v1, p0, Lgfm;->a:Lgfl;

    invoke-static {v1}, Lgfl;->a(Lgfl;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;->section:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lgfm;->a:Lgfl;

    iget-object v1, p0, Lgfm;->a:Lgfl;

    invoke-static {v1}, Lgfl;->a(Lgfl;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    move-result-object v1

    invoke-static {v0, v1}, Lgfl;->a(Lgfl;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    .line 58
    iget-object v0, p0, Lgfm;->a:Lgfl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgfl;->b(Lgfl;Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;)Lcom/wandoujia/p4/video2/fragment/detail/VideoDetailTabHostFragment$VideoEpisodeSectionKey;

    .line 59
    iget-object v0, p0, Lgfm;->a:Lgfl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1, p3, p4, p5}, Lgfl;->a(Lgfl;Ljava/util/List;Ljava/util/List;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/model/VideoPlayRecordModel;)V

    .line 61
    iget-object v0, p0, Lgfm;->a:Lgfl;

    invoke-virtual {v0}, Lgfl;->notifyDataSetChanged()V

    goto :goto_0
.end method
