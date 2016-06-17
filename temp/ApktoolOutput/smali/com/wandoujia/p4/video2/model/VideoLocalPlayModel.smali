.class public Lcom/wandoujia/p4/video2/model/VideoLocalPlayModel;
.super Ljava/lang/Object;
.source "VideoLocalPlayModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x580f18a7fc2d4bb4L


# instance fields
.field public final episodeId:J

.field public localVideoAlbumModel:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

.field public localVideoEpisodeModel:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

.field public final videoId:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/wandoujia/p4/video2/model/VideoLocalPlayModel;->videoId:J

    .line 23
    iput-wide p3, p0, Lcom/wandoujia/p4/video2/model/VideoLocalPlayModel;->episodeId:J

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-wide v0, p1, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->videoId:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoLocalPlayModel;->videoId:J

    .line 29
    iget-wide v0, p2, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoLocalPlayModel;->episodeId:J

    .line 30
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoLocalPlayModel;->localVideoAlbumModel:Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    .line 31
    iput-object p2, p0, Lcom/wandoujia/p4/video2/model/VideoLocalPlayModel;->localVideoEpisodeModel:Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    .line 32
    return-void
.end method
