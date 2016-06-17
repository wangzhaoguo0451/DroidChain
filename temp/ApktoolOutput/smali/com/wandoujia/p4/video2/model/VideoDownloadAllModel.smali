.class public Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;
.super Ljava/lang/Object;
.source "VideoDownloadAllModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x388d8f33f3e07ca5L


# instance fields
.field public final albumModel:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

.field public final downloadModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field public final downloadedEpisodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final downloadedTotalSize:J


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoDownloadModel;",
            ">;",
            "Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->downloadedEpisodeMap:Ljava/util/Map;

    .line 27
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->downloadModelList:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->albumModel:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 29
    const-wide/16 v2, 0x0

    .line 30
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->getDownloadedEpisodeModelList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    invoke-virtual {p2}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->getDownloadedEpisodeModelList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    .line 32
    if-eqz v0, :cond_0

    .line 33
    iget-wide v6, v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->size:J

    add-long/2addr v2, v6

    .line 34
    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->downloadedEpisodeMap:Ljava/util/Map;

    iget-wide v6, v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, v0, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->size:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-wide v0, v2

    move-wide v2, v0

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    iput-wide v2, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadAllModel;->downloadedTotalSize:J

    .line 39
    return-void
.end method
