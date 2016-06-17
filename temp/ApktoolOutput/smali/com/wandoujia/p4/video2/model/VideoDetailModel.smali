.class public Lcom/wandoujia/p4/video2/model/VideoDetailModel;
.super Ljava/lang/Object;
.source "VideoDetailModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x78432618f4f943ecL


# instance fields
.field public final actors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final commentsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/NetVideoInfo$Comment;",
            ">;"
        }
    .end annotation
.end field

.field public final directors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final doubanRatingScore:F

.field public final episodeModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;",
            ">;"
        }
    .end annotation
.end field

.field public final largePictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final marketRatingsProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final previewEpisodeModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;",
            ">;"
        }
    .end annotation
.end field

.field public final region:Ljava/lang/String;

.field public final releaseDate:J

.field public final sectionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final smallPictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final videoMetaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;


# direct methods
.method public constructor <init>(Lcom/wandoujia/entities/video/NetVideoInfo;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->marketRatingsProviders:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->previewEpisodeModelList:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->episodeModelList:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->sectionKeys:Ljava/util/List;

    .line 51
    invoke-virtual {p0, p1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->createVideoMetaModel(Lcom/wandoujia/entities/video/NetVideoInfo;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->videoMetaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    .line 52
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->directors:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->directors:Ljava/util/List;

    .line 53
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->actors:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->actors:Ljava/util/List;

    .line 54
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->marketRatings:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->marketRatings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->marketRatings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/NetVideoInfo$MarketRating;

    .line 56
    if-eqz v0, :cond_0

    .line 57
    iget-object v3, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->marketRatingsProviders:Ljava/util/List;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoInfo$MarketRating;->providerName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {p1}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getRating(Lcom/wandoujia/entities/video/NetVideoInfo;)F

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->doubanRatingScore:F

    .line 62
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->pictures:Lcom/wandoujia/entities/video/VideoPictures;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->pictures:Lcom/wandoujia/entities/video/VideoPictures;

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoPictures;->getL()Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->largePictures:Ljava/util/List;

    .line 63
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->pictures:Lcom/wandoujia/entities/video/VideoPictures;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->pictures:Lcom/wandoujia/entities/video/VideoPictures;

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoPictures;->getS()Ljava/util/List;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->smallPictures:Ljava/util/List;

    .line 64
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->region:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->region:Ljava/lang/String;

    .line 65
    iget-wide v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->releaseDate:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->releaseDate:J

    .line 66
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->tags:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->tags:Ljava/util/List;

    .line 67
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->previewEpisodes:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->previewEpisodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 68
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->previewEpisodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;

    .line 69
    if-eqz v0, :cond_3

    .line 70
    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->previewEpisodeModelList:Ljava/util/List;

    new-instance v3, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;

    invoke-direct {v3, p0, v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;-><init>(Lcom/wandoujia/p4/video2/model/VideoDetailModel;Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 62
    goto :goto_1

    .line 74
    :cond_5
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->marketComments:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->marketComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 75
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->marketComments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/NetVideoInfo$MarketComment;

    iget-object v0, v0, Lcom/wandoujia/entities/video/NetVideoInfo$MarketComment;->comments:Ljava/util/List;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->commentsList:Ljava/util/List;

    .line 79
    :goto_3
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->videoEpisodes:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->videoEpisodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 80
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->videoEpisodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    .line 81
    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->episodeModelList:Ljava/util/List;

    new-instance v3, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-direct {v3, v0}, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;-><init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 77
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->commentsList:Ljava/util/List;

    goto :goto_3

    .line 84
    :cond_7
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->sectionKeys:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 85
    iget-object v0, p1, Lcom/wandoujia/entities/video/NetVideoInfo;->sectionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    if-eqz v0, :cond_8

    .line 87
    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->sectionKeys:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 91
    :cond_9
    return-void
.end method

.method public static getRating(Lcom/wandoujia/entities/video/NetVideoInfo;)F
    .locals 2
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->marketRatings:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->marketRatings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->marketRatings:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/NetVideoInfo$MarketRating;

    iget v0, v0, Lcom/wandoujia/entities/video/NetVideoInfo$MarketRating;->rating:F

    .line 133
    :cond_0
    return v0
.end method


# virtual methods
.method public createVideoMetaModel(Lcom/wandoujia/entities/video/NetVideoInfo;)Lcom/wandoujia/p4/video2/model/VideoMetaModel;
    .locals 1
    .parameter

    .prologue
    .line 94
    new-instance v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-direct {v0, p1}, Lcom/wandoujia/p4/video2/model/VideoMetaModel;-><init>(Lcom/wandoujia/entities/video/NetVideoInfo;)V

    return-object v0
.end method

.method public getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->videoMetaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    return-object v0
.end method
