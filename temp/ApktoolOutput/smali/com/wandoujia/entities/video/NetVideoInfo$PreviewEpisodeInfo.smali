.class public Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;
.super Ljava/lang/Object;
.source "NetVideoInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xb80b7a297f28155L


# instance fields
.field public cover:Lcom/wandoujia/entities/video/VideoCover;

.field public episodeId:J

.field public videoId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCover()Lcom/wandoujia/entities/video/VideoCover;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;->cover:Lcom/wandoujia/entities/video/VideoCover;

    return-object v0
.end method

.method public getEpisodeId()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 357
    iget-wide v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;->episodeId:J

    return-wide v0
.end method

.method public getVideoId()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 367
    iget-wide v0, p0, Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;->videoId:J

    return-wide v0
.end method
