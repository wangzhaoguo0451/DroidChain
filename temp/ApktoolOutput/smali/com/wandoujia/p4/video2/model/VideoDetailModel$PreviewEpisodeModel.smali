.class public Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;
.super Ljava/lang/Object;
.source "VideoDetailModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2ae8b1959a195367L


# instance fields
.field public final episodeId:J

.field public final largeCover:Ljava/lang/String;

.field public final smallCover:Ljava/lang/String;

.field final synthetic this$0:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

.field public final videoId:J


# direct methods
.method public constructor <init>(Lcom/wandoujia/p4/video2/model/VideoDetailModel;Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 112
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;->this$0:Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iget-object v0, p2, Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;->cover:Lcom/wandoujia/entities/video/VideoCover;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;->cover:Lcom/wandoujia/entities/video/VideoCover;

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoCover;->getL()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;->largeCover:Ljava/lang/String;

    .line 115
    iget-object v0, p2, Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;->cover:Lcom/wandoujia/entities/video/VideoCover;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;->cover:Lcom/wandoujia/entities/video/VideoCover;

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoCover;->getS()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;->smallCover:Ljava/lang/String;

    .line 117
    iget-wide v0, p2, Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;->episodeId:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;->episodeId:J

    .line 118
    iget-wide v0, p2, Lcom/wandoujia/entities/video/NetVideoInfo$PreviewEpisodeInfo;->videoId:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoDetailModel$PreviewEpisodeModel;->videoId:J

    .line 119
    return-void

    :cond_1
    move-object v0, v1

    .line 113
    goto :goto_0
.end method
