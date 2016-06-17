.class public Lcom/wandoujia/p4/video2/model/VideoLogModel;
.super Ljava/lang/Object;
.source "VideoLogModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x395f5896d7e6d07aL


# instance fields
.field private consumptionSource:Ljava/lang/String;

.field private episodeId:Ljava/lang/String;

.field private episodeNum:Ljava/lang/String;

.field private isFinished:Ljava/lang/String;

.field private isPrivate:Ljava/lang/String;

.field public mode:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

.field public openTypeV3:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

.field private packageName:Ljava/lang/String;

.field private providerName:Ljava/lang/String;

.field public resourceTypeV3:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

.field private sharpness:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private updateFrequency:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private videoSubType:Ljava/lang/String;

.field private videoTitle:Ljava/lang/String;

.field private videoType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildContentPackage()Lcom/wandoujia/logv3/model/packages/ContentPackage;
    .locals 2

    .prologue
    .line 188
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    .line 190
    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    .line 191
    sget-object v1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->VIDEO:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    .line 192
    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->sub_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    .line 193
    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ContentPackage;

    move-result-object v0

    return-object v0
.end method

.method private buildOpenTypePackage()Lcom/wandoujia/logv3/model/packages/OpenTypePackage;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;->open_provider_package_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->openTypeV3:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;)Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->mode:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;->mode(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;)Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/OpenTypePackage;

    move-result-object v0

    return-object v0
.end method

.method private buildResourcePackage()Lcom/wandoujia/logv3/model/packages/ResourcePackage;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;-><init>()V

    .line 198
    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    .line 199
    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->provider_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    .line 200
    iget-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->resourceTypeV3:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    .line 201
    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    move-result-object v0

    return-object v0
.end method

.method private static getVideoEpisodeIdString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 213
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 214
    if-ltz v0, :cond_0

    .line 215
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getVideoIdString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 221
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 222
    if-ltz v0, :cond_0

    .line 223
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setConsumptionSource(Ljava/lang/String;)Lcom/wandoujia/p4/video2/model/VideoLogModel;
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->consumptionSource:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public setEpisodeInfo(Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)Lcom/wandoujia/p4/video2/model/VideoLogModel;
    .locals 2
    .parameter

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 155
    :goto_0
    return-object p0

    .line 151
    :cond_0
    iget-wide v0, p1, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->episodeId:Ljava/lang/String;

    .line 152
    iget v0, p1, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeNum:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->episodeNum:Ljava/lang/String;

    .line 153
    iget-object v0, p1, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->providerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->providerName:Ljava/lang/String;

    .line 154
    iget-object v0, p1, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    sget-object v1, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PRIVATE:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->isPrivate:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setEpisodeInfo(Lcom/wandoujia/p4/video2/model/VideoDownloadModel;)Lcom/wandoujia/p4/video2/model/VideoLogModel;
    .locals 2
    .parameter

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 144
    :goto_0
    return-object p0

    .line 140
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->providerName:Ljava/lang/String;

    .line 141
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->videoSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->sharpness:Ljava/lang/String;

    .line 143
    iget-wide v0, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->size:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->size:Ljava/lang/String;

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->videoSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/VideoSharpness;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setEpisodeInfo(Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;)Lcom/wandoujia/p4/video2/model/VideoLogModel;
    .locals 2
    .parameter

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 116
    :goto_0
    return-object p0

    .line 114
    :cond_0
    iget-wide v0, p1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->episodeId:Ljava/lang/String;

    .line 115
    iget v0, p1, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeNum:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->episodeNum:Ljava/lang/String;

    goto :goto_0
.end method

.method public setEpisodeInfo(Lcom/wandoujia/p4/video2/model/VideoPlayModel;)Lcom/wandoujia/p4/video2/model/VideoLogModel;
    .locals 1
    .parameter

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 133
    :goto_0
    return-object p0

    .line 132
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoPlayModel;->providerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->providerName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setEpisodeInfo(Lcom/wandoujia/push/protocol/PushEntityV1$Download;)Lcom/wandoujia/p4/video2/model/VideoLogModel;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x5f

    .line 159
    invoke-virtual {p1}, Lcom/wandoujia/push/protocol/PushEntityV1$Download;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->getVideoEpisodeIdString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->episodeId:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Lcom/wandoujia/push/protocol/PushEntityV1$Download;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wandoujia/push/protocol/PushEntityV1$Download;->getDetail()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->episodeId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Ld;->Z(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->episodeNum:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public setOpenTypeModeV3(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;)Lcom/wandoujia/p4/video2/model/VideoLogModel;
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->mode:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$Mode;

    .line 174
    return-object p0
.end method

.method public setOpenTypeV3(Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;)Lcom/wandoujia/p4/video2/model/VideoLogModel;
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->openTypeV3:Lcom/wandoujia/logv3/model/packages/OpenTypePackage$OpenType;

    .line 169
    return-object p0
.end method

.method public setResourceTypeV3(Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;)Lcom/wandoujia/p4/video2/model/VideoLogModel;
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->resourceTypeV3:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    .line 179
    return-object p0
.end method

.method public setVideoInfo(Lcom/wandoujia/feed/model/Feed;)Lcom/wandoujia/p4/video2/model/VideoLogModel;
    .locals 2
    .parameter

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 88
    :goto_0
    return-object p0

    .line 84
    :cond_0
    invoke-static {p1}, Ld;->d(Lcom/wandoujia/feed/model/Feed;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoId:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/wandoujia/feed/model/Feed;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoTitle:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Ld;->a(Lcom/wandoujia/feed/model/Feed;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoType:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/wandoujia/feed/model/Feed;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->isFinished:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setVideoInfo(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;)Lcom/wandoujia/p4/video2/model/VideoLogModel;
    .locals 2
    .parameter

    .prologue
    .line 92
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-object p0

    .line 95
    :cond_1
    iget-object v0, p1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-wide v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoId:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoTitle:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoType:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subscribeUrl:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->isFinished:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    iget-object v0, v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/VideoType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 100
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setVideoInfo(Lcom/wandoujia/p4/video2/model/VideoMetaModel;)Lcom/wandoujia/p4/video2/model/VideoLogModel;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 48
    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-object p0

    .line 51
    :cond_1
    iget-wide v2, p1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoId:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoTitle:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoType:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subType:Lcom/wandoujia/p4/video/model/VideoSubType;

    if-nez v0, :cond_3

    :goto_2
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoSubType:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subscribeUrl:Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->isFinished:Ljava/lang/String;

    .line 56
    instance-of v0, p1, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    if-eqz v0, :cond_0

    .line 57
    check-cast p1, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;

    iget-object v0, p1, Lcom/wandoujia/p4/video2/anime/model/AnimeMetaModel;->updateFrequency:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->updateFrequency:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->videoType:Lcom/wandoujia/p4/video/model/VideoType;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/VideoType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 54
    :cond_3
    iget-object v0, p1, Lcom/wandoujia/p4/video2/model/VideoMetaModel;->subType:Lcom/wandoujia/p4/video/model/VideoSubType;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/VideoSubType;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 55
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setVideoInfo(Lcom/wandoujia/push/protocol/PushEntityV1$Download;)Lcom/wandoujia/p4/video2/model/VideoLogModel;
    .locals 1
    .parameter

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/wandoujia/push/protocol/PushEntityV1$Download;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/video2/model/VideoLogModel;->getVideoIdString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoId:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lcom/wandoujia/push/protocol/PushEntityV1$Download;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoLogModel;->videoTitle:Ljava/lang/String;

    .line 107
    return-object p0
.end method
