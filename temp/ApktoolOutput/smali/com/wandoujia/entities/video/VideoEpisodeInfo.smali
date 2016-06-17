.class public Lcom/wandoujia/entities/video/VideoEpisodeInfo;
.super Ljava/lang/Object;
.source "VideoEpisodeInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cover:Lcom/wandoujia/entities/video/VideoEpisodeInfo$Cover;

.field private description:Ljava/lang/String;

.field private downloadUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private episodeDate:J

.field private episodeNum:I

.field private id:J

.field private itemStatus:I

.field private month:I

.field private noDownloadUrls:Z

.field private noPlayExpDownloadUrls:Z

.field private noPlayInfos:Z

.field private noPrivateDownloadUrls:Z

.field private playInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/PlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private privateDownloadUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private updatedDate:J

.field private video_id:J

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    return-void
.end method


# virtual methods
.method public getCover()Lcom/wandoujia/entities/video/VideoEpisodeInfo$Cover;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->cover:Lcom/wandoujia/entities/video/VideoEpisodeInfo$Cover;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->downloadUrls:Ljava/util/List;

    return-object v0
.end method

.method public getEpisodeDate()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->episodeDate:J

    return-wide v0
.end method

.method public getEpisodeNum()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->episodeNum:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->id:J

    return-wide v0
.end method

.method public getItemStatus()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->itemStatus:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->month:I

    return v0
.end method

.method public getPlayInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/PlayInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->playInfo:Ljava/util/List;

    return-object v0
.end method

.method public getPrivateDownloadUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->privateDownloadUrls:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedDate()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->updatedDate:J

    return-wide v0
.end method

.method public getVideoId()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->video_id:J

    return-wide v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->year:I

    return v0
.end method

.method public isNoDownloadUrls()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->noDownloadUrls:Z

    return v0
.end method

.method public isNoPlayExpDownloadUrls()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->noPlayExpDownloadUrls:Z

    return v0
.end method

.method public isNoPlayInfos()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->noPlayInfos:Z

    return v0
.end method

.method public isNoPrivateDownloadUrls()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->noPrivateDownloadUrls:Z

    return v0
.end method

.method public setDownloadUrls(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->downloadUrls:Ljava/util/List;

    .line 71
    return-void
.end method
