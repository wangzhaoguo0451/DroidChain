.class public Lcom/wandoujia/p4/video2/model/VideoMetaModel;
.super Ljava/lang/Object;
.source "VideoMetaModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x57c0668ac75900d4L


# instance fields
.field public final createdDate:J

.field public final defaultEpisode:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

.field public final description:Ljava/lang/String;

.field public final downloadCount:J

.field public final largeCoverUrl:Ljava/lang/String;

.field public final latestEpisodeDate:J

.field public final latestEpisodeNum:I

.field public final noDownloadUrls:Z

.field public final noPlayExpDownloadUrls:Z

.field public final noPlayInfos:Z

.field public final noPrivateDownloadUrls:Z

.field public originNetVideoInfo:Lcom/wandoujia/entities/video/NetVideoInfo;

.field public final providerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final recommend:Ljava/lang/String;

.field public final sectionRecommend:Ljava/lang/String;

.field public final smallCoverUrl:Ljava/lang/String;

.field public final subType:Lcom/wandoujia/p4/video/model/VideoSubType;

.field public final subscribeUrl:Ljava/lang/String;

.field public final totalEpisodesNum:I

.field public final totalSize:J

.field public final updatedDate:J

.field public final videoCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/VideoCategory;",
            ">;"
        }
    .end annotation
.end field

.field public final videoId:J

.field public final videoTitle:Ljava/lang/String;

.field public final videoType:Lcom/wandoujia/p4/video/model/VideoType;


# direct methods
.method public constructor <init>(J)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-wide p1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    .line 186
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    .line 187
    sget-object v0, Lcom/wandoujia/p4/video/model/VideoType;->TV:Lcom/wandoujia/p4/video/model/VideoType;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    .line 188
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subType:Lcom/wandoujia/p4/video/model/VideoSubType;

    .line 189
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->smallCoverUrl:Ljava/lang/String;

    .line 190
    iput-boolean v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noDownloadUrls:Z

    .line 191
    iput-boolean v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPlayInfos:Z

    .line 192
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoCategories:Ljava/util/List;

    .line 193
    iput-boolean v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPlayExpDownloadUrls:Z

    .line 194
    iput-wide v4, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->downloadCount:J

    .line 195
    iput v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->totalEpisodesNum:I

    .line 196
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->defaultEpisode:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 197
    iput-wide v4, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->totalSize:J

    .line 198
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->providerNames:Ljava/util/List;

    .line 199
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->sectionRecommend:Ljava/lang/String;

    .line 200
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->recommend:Ljava/lang/String;

    .line 201
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->description:Ljava/lang/String;

    .line 202
    iput-wide v4, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->createdDate:J

    .line 203
    iput-boolean v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPrivateDownloadUrls:Z

    .line 204
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->largeCoverUrl:Ljava/lang/String;

    .line 205
    iput v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->latestEpisodeNum:I

    .line 206
    iput-wide v4, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->latestEpisodeDate:J

    .line 207
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subscribeUrl:Ljava/lang/String;

    .line 208
    iput-wide v4, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->updatedDate:J

    .line 209
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/entities/video/NetVideoInfo;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->originNetVideoInfo:Lcom/wandoujia/entities/video/NetVideoInfo;

    .line 62
    iget-boolean v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->noPrivateDownloadUrls:Z

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPrivateDownloadUrls:Z

    .line 63
    iget-boolean v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->noPlayInfos:Z

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPlayInfos:Z

    .line 64
    iget-wide v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->id:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    .line 65
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/p4/video/model/VideoType;->getVideoType(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    .line 67
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->subType:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/p4/video/model/VideoSubType;->getVideoSubType(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSubType;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subType:Lcom/wandoujia/p4/video/model/VideoSubType;

    .line 68
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->cover:Lcom/wandoujia/entities/video/VideoCover;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->cover:Lcom/wandoujia/entities/video/VideoCover;

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoCover;->getL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->largeCoverUrl:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->cover:Lcom/wandoujia/entities/video/VideoCover;

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoCover;->getS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->smallCoverUrl:Ljava/lang/String;

    .line 75
    :goto_0
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->categories:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoCategories:Ljava/util/List;

    .line 76
    iget-wide v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->downloadCount:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->downloadCount:J

    .line 77
    iget v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->totalEpisodesNum:I

    iput v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->totalEpisodesNum:I

    .line 78
    iget v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->latestEpisodeNum:I

    iput v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->latestEpisodeNum:I

    .line 79
    iget-wide v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->latestEpisodeDate:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->latestEpisodeDate:J

    .line 80
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->description:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->subscribeUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subscribeUrl:Ljava/lang/String;

    .line 82
    iget-wide v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->totalSize:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->totalSize:J

    .line 83
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->section_recommend:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->sectionRecommend:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->recommend:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->recommend:Ljava/lang/String;

    .line 85
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->providerNames:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->providerNames:Ljava/util/List;

    .line 91
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->providerNames:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->providerNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->isUseCommonDownloadUrls()Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v4

    .line 98
    :cond_0
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/ProviderInfo;->isUseCommonDownloadUrls()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v4

    :goto_2
    move v1, v0

    .line 101
    goto :goto_1

    .line 72
    :cond_1
    iput-object v7, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->largeCoverUrl:Ljava/lang/String;

    .line 73
    iput-object v7, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->smallCoverUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v1, v2

    move v3, v2

    .line 103
    :cond_3
    iget-boolean v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->noDownloadUrls:Z

    if-nez v0, :cond_4

    if-eqz v3, :cond_6

    :cond_4
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noDownloadUrls:Z

    .line 104
    iget-boolean v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->noPlayExpDownloadUrls:Z

    if-nez v0, :cond_5

    if-eqz v1, :cond_7

    :cond_5
    :goto_4
    iput-boolean v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPlayExpDownloadUrls:Z

    .line 105
    iget-wide v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->createdDate:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->createdDate:J

    .line 106
    iget-wide v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->updatedDate:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->updatedDate:J

    .line 107
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->videoEpisodes:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->videoEpisodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 108
    new-instance v1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->videoEpisodes:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    invoke-direct {v1, v0}, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;-><init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;)V

    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->defaultEpisode:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 112
    :goto_5
    return-void

    :cond_6
    move v0, v4

    .line 103
    goto :goto_3

    :cond_7
    move v2, v4

    .line 104
    goto :goto_4

    .line 110
    :cond_8
    iput-object v7, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->defaultEpisode:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_2
.end method

.method public constructor <init>(Lcom/wandoujia/feed/model/Feed;)V
    .locals 10
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Ld;->d(Lcom/wandoujia/feed/model/Feed;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    .line 116
    invoke-virtual {p1}, Lcom/wandoujia/feed/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    .line 117
    new-instance v1, Lcom/wandoujia/entities/video/VideoCover;

    invoke-direct {v1}, Lcom/wandoujia/entities/video/VideoCover;-><init>()V

    .line 118
    invoke-virtual {p1}, Lcom/wandoujia/feed/model/Feed;->getLink()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/feed/model/Link;

    .line 119
    const-string v3, "large"

    invoke-virtual {v0}, Lcom/wandoujia/feed/model/Link;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/wandoujia/feed/model/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/entities/video/VideoCover;->setL(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    const-string v3, "small"

    invoke-virtual {v0}, Lcom/wandoujia/feed/model/Link;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/wandoujia/feed/model/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/entities/video/VideoCover;->setS(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v1}, Lcom/wandoujia/entities/video/VideoCover;->getL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->largeCoverUrl:Ljava/lang/String;

    .line 126
    invoke-virtual {v1}, Lcom/wandoujia/entities/video/VideoCover;->getS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->smallCoverUrl:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/wandoujia/feed/model/Feed;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subscribeUrl:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/wandoujia/feed/model/Feed;->getUpdated()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->updatedDate:J

    .line 129
    invoke-static {p1}, Ld;->a(Lcom/wandoujia/feed/model/Feed;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/video/model/VideoType;->getVideoType(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    .line 130
    iput-object v5, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subType:Lcom/wandoujia/p4/video/model/VideoSubType;

    .line 131
    invoke-static {p1}, Ld;->c(Lcom/wandoujia/feed/model/Feed;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->latestEpisodeDate:J

    .line 132
    invoke-static {p1}, Ld;->b(Lcom/wandoujia/feed/model/Feed;)I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->latestEpisodeNum:I

    .line 133
    iput-boolean v6, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPlayExpDownloadUrls:Z

    .line 134
    iput-boolean v6, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noDownloadUrls:Z

    .line 135
    iput-boolean v6, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPlayInfos:Z

    .line 136
    iput-object v5, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoCategories:Ljava/util/List;

    .line 137
    iput-wide v8, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->downloadCount:J

    .line 138
    iput v6, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->totalEpisodesNum:I

    .line 139
    iput-object v5, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->defaultEpisode:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 140
    iput-wide v8, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->totalSize:J

    .line 141
    iput-object v5, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->providerNames:Ljava/util/List;

    .line 142
    iput-object v5, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->sectionRecommend:Ljava/lang/String;

    .line 143
    iput-object v5, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->recommend:Ljava/lang/String;

    .line 144
    iput-object v5, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->description:Ljava/lang/String;

    .line 145
    iput-wide v8, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->createdDate:J

    .line 146
    iput-boolean v6, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPrivateDownloadUrls:Z

    .line 147
    return-void
.end method

.method public constructor <init>(Ldd;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-interface {p1}, Ldd;->q()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    .line 151
    invoke-interface {p1}, Ldd;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    .line 152
    invoke-interface {p1}, Ldd;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/video/model/VideoType;->getVideoType(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    .line 154
    invoke-interface {p1}, Ldd;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/video/model/VideoSubType;->getVideoSubType(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSubType;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subType:Lcom/wandoujia/p4/video/model/VideoSubType;

    .line 156
    invoke-interface {p1}, Ldd;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->smallCoverUrl:Ljava/lang/String;

    .line 157
    iput-boolean v3, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noDownloadUrls:Z

    .line 158
    iput-boolean v3, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPlayInfos:Z

    .line 159
    iput-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoCategories:Ljava/util/List;

    .line 160
    iput-boolean v3, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPlayExpDownloadUrls:Z

    .line 161
    iput-wide v4, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->downloadCount:J

    .line 162
    iput v3, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->totalEpisodesNum:I

    .line 163
    iput-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->defaultEpisode:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 164
    iput-wide v4, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->totalSize:J

    .line 165
    iput-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->providerNames:Ljava/util/List;

    .line 166
    iput-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->sectionRecommend:Ljava/lang/String;

    .line 167
    iput-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->recommend:Ljava/lang/String;

    .line 168
    iput-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->description:Ljava/lang/String;

    .line 169
    iput-wide v4, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->createdDate:J

    .line 170
    iput-boolean v3, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->noPrivateDownloadUrls:Z

    .line 171
    iput-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->largeCoverUrl:Ljava/lang/String;

    .line 172
    iput v3, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->latestEpisodeNum:I

    .line 173
    iput-wide v4, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->latestEpisodeDate:J

    .line 174
    iput-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subscribeUrl:Ljava/lang/String;

    .line 175
    iput-wide v4, p0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->updatedDate:J

    .line 176
    return-void
.end method
