.class public Lcom/wandoujia/entities/video/NetVideoInfo;
.super Ljava/lang/Object;
.source "NetVideoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2ed845138e19668eL


# instance fields
.field public actors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/VideoCategory;",
            ">;"
        }
    .end annotation
.end field

.field public cover:Lcom/wandoujia/entities/video/VideoCover;

.field public createdDate:J

.field public description:Ljava/lang/String;

.field public directors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public downloadCount:J

.field public extras:Lcom/wandoujia/entities/video/NetVideoExtras;

.field public id:J

.field public latestEpisodeDate:J

.field public latestEpisodeNum:I

.field public marketComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/NetVideoInfo$MarketComment;",
            ">;"
        }
    .end annotation
.end field

.field public marketRatings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/NetVideoInfo$MarketRating;",
            ">;"
        }
    .end annotation
.end field

.field public noDownloadUrls:Z

.field public noPlayExpDownloadUrls:Z

.field public noPlayInfos:Z

.field public noPrivateDownloadUrls:Z

.field public pictures:Lcom/wandoujia/entities/video/VideoPictures;

.field public presenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public previewEpisodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public providerNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rating:F

.field public recommend:Ljava/lang/String;

.field public region:Ljava/lang/String;

.field public releaseDate:J

.field public screenwriters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public seasonNum:I

.field public sectionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public section_recommend:Ljava/lang/String;

.field public subType:Ljava/lang/String;

.field public subscribeUrl:Ljava/lang/String;

.field public tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public totalEpisodesNum:I

.field public totalSize:J

.field public type:Ljava/lang/String;

.field public updatedDate:J

.field public useInfo:Lcom/wandoujia/entities/app/UseInfo;

.field public videoEpisodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/VideoEpisodeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    return-void
.end method


# virtual methods
.method public getActors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->actors:Ljava/util/List;

    return-object v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/VideoCategory;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getCover()Lcom/wandoujia/entities/video/VideoCover;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->cover:Lcom/wandoujia/entities/video/VideoCover;

    return-object v0
.end method

.method public getCreatedDate()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->createdDate:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->directors:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->downloadCount:J

    return-wide v0
.end method

.method public getId()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->id:J

    return-wide v0
.end method

.method public getLatestEpisodeDate()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->latestEpisodeDate:J

    return-wide v0
.end method

.method public getLatestEpisodeNum()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    iget v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->latestEpisodeNum:I

    return v0
.end method

.method public getMarketComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/NetVideoInfo$MarketComment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->marketComments:Ljava/util/List;

    return-object v0
.end method

.method public getMarketRatings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/NetVideoInfo$MarketRating;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->marketRatings:Ljava/util/List;

    return-object v0
.end method

.method public getNoDownloadUrls()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->noDownloadUrls:Z

    return v0
.end method

.method public getNoPlayInfos()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->noPlayInfos:Z

    return v0
.end method

.method public getPictures()Lcom/wandoujia/entities/video/VideoPictures;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->pictures:Lcom/wandoujia/entities/video/VideoPictures;

    return-object v0
.end method

.method public getPresenters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->presenters:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewEpisodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->previewEpisodes:Ljava/util/List;

    return-object v0
.end method

.method public getProviderNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->providerNames:Ljava/util/List;

    return-object v0
.end method

.method public getRating()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    iget v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->rating:F

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDate()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->releaseDate:J

    long-to-int v0, v0

    return v0
.end method

.method public getScreenwriters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->screenwriters:Ljava/util/List;

    return-object v0
.end method

.method public getSeasonNum()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 203
    iget v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->seasonNum:I

    return v0
.end method

.method public getSectionKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->sectionKeys:Ljava/util/List;

    return-object v0
.end method

.method public getSection_recommend()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->section_recommend:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribeUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->subscribeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalEpisodesNum()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    iget v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->totalEpisodesNum:I

    return v0
.end method

.method public getTotalSize()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->totalSize:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->updatedDate:J

    return-wide v0
.end method

.method public getVideoEpisodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/VideoEpisodeInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->videoEpisodes:Ljava/util/List;

    return-object v0
.end method

.method public isNoPrivateDownloadUrls()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->noPrivateDownloadUrls:Z

    return v0
.end method

.method public setCover(Lcom/wandoujia/entities/video/VideoCover;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 268
    iput-object p1, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->cover:Lcom/wandoujia/entities/video/VideoCover;

    .line 269
    return-void
.end method

.method public setId(J)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    iput-wide p1, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->id:J

    .line 274
    return-void
.end method

.method public setLatestEpisodeDate(J)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    iput-wide p1, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->latestEpisodeDate:J

    .line 169
    return-void
.end method

.method public setLatestEpisodeNum(I)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    iput p1, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->latestEpisodeNum:I

    .line 264
    return-void
.end method

.method public setSeasonNum(I)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 288
    iput p1, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->seasonNum:I

    .line 289
    return-void
.end method

.method public setSubscribeUrl(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->subscribeUrl:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->title:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setTotalEpisodesNum(I)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    iput p1, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->totalEpisodesNum:I

    .line 294
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 278
    iput-object p1, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->type:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public setUpdatedDate(J)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->updatedDate:J

    .line 164
    return-void
.end method

.method public setVideoEpisodes(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/VideoEpisodeInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 283
    iput-object p1, p0, Lcom/wandoujia/entities/video/NetVideoInfo;->videoEpisodes:Ljava/util/List;

    .line 284
    return-void
.end method
