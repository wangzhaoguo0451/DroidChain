.class public Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;
.super Ljava/lang/Object;
.source "VideoEpisodeInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field promotType:I

.field providerName:Ljava/lang/String;

.field sharpness:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPromotType()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->promotType:I

    return v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->providerName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharpness()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->sharpness:Ljava/util/Map;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->size:J

    return-wide v0
.end method
