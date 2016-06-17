.class public final Ldhw;
.super Ljava/lang/Object;
.source "DownloadListFragment.java"

# interfaces
.implements Lgls;


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Ldhw;->a:Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    return-void
.end method

.method public final a(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    return-void
.end method

.method public final b(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V
    .locals 6
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Ldhw;->a:Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->a(Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-wide v2, p1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->videoId:J

    .line 122
    iget-object v0, p0, Ldhw;->a:Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->a(Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 123
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    const v4, 0x7f0c002f

    invoke-virtual {v0, v4}, Lcom/wandoujia/ripple_framework/model/Model;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 126
    if-eqz v0, :cond_2

    iget-wide v4, v0, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->videoId:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    .line 127
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 128
    iget-object v0, p0, Ldhw;->a:Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;->b(Lcom/wandoujia/jupiter/library/fragment/DownloadListFragment;)V

    goto :goto_0
.end method

.method public final b(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    return-void
.end method
