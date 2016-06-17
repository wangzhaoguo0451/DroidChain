.class public Lcom/wandoujia/p4/video2/model/VideoDownloadModel;
.super Ljava/lang/Object;
.source "VideoDownloadModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2f5671fb07c1715dL


# instance fields
.field public final accelUrl:Ljava/lang/String;

.field public final accelUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

.field public final needChangeSuffix:Z

.field public final privateSuffix:Ljava/lang/String;

.field public final promoteType:I

.field public final providerName:Ljava/lang/String;

.field public final sharpnessName:Ljava/lang/String;

.field public final size:J

.field public final url:Ljava/lang/String;

.field public final videoSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;


# direct methods
.method public constructor <init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;Ljava/lang/String;ILjava/lang/String;Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;Lcom/wandoujia/p4/video2/local/LocalVideoType;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->accelUrls:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-direct {v0, p1}, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;-><init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 72
    iput-object p6, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    .line 73
    iput p3, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->promoteType:I

    .line 74
    iput-object p2, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    .line 75
    iget-object v0, p5, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;->sharpnessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->sharpnessName:Ljava/lang/String;

    .line 76
    invoke-static {p4}, Lcom/wandoujia/p4/video/model/VideoSharpness;->getVideoSharpness(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSharpness;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->videoSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    .line 77
    iget-wide v0, p5, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;->size:J

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->size:J

    .line 78
    iget-object v0, p5, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;->accelUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->accelUrl:Ljava/lang/String;

    .line 79
    iget-object v0, p5, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->url:Ljava/lang/String;

    .line 80
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->isNeedChangeSuffix()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->needChangeSuffix:Z

    .line 82
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/wandoujia/p4/video/model/ProviderInfo;->getPrivateSuffix()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->privateSuffix:Ljava/lang/String;

    .line 83
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 85
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;

    .line 87
    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getSharpness()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getSharpness()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getSharpness()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 90
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/p4/video/model/VideoSharpness;->getVideoSharpness(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSharpness;

    move-result-object v0

    iget-object v5, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->videoSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    if-ne v0, v5, :cond_4

    .line 92
    iget-object v5, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->accelUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;->accelUrl:Ljava/lang/String;

    invoke-interface {v5, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    move v0, v2

    .line 81
    goto/16 :goto_0

    .line 82
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 94
    :cond_4
    iget-object v5, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->accelUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;->accelUrl:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    :cond_5
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getDownloadUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 102
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;

    .line 103
    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getSharpness()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getSharpness()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 104
    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getSharpness()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 106
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/p4/video/model/VideoSharpness;->getVideoSharpness(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/VideoSharpness;

    move-result-object v0

    iget-object v5, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->videoSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    if-ne v0, v5, :cond_8

    .line 108
    iget-object v5, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->accelUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;->accelUrl:Ljava/lang/String;

    invoke-interface {v5, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 110
    :cond_8
    iget-object v5, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->accelUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;

    iget-object v0, v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;->accelUrl:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 117
    :cond_9
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;Ljava/lang/String;ILjava/lang/String;Lcom/wandoujia/p4/video2/local/LocalVideoType;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->accelUrls:Ljava/util/List;

    .line 52
    new-instance v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-direct {v0, p1}, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;-><init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;)V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 53
    iput-object p2, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    .line 54
    iput p3, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->promoteType:I

    .line 55
    iput-object p4, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->url:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    .line 57
    iput-wide p6, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->size:J

    .line 58
    sget-object v0, Lcom/wandoujia/p4/video/model/VideoSharpness;->NORMAL:Lcom/wandoujia/p4/video/model/VideoSharpness;

    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/VideoSharpness;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->sharpnessName:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/wandoujia/p4/video/model/VideoSharpness;->NORMAL:Lcom/wandoujia/p4/video/model/VideoSharpness;

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->videoSharpness:Lcom/wandoujia/p4/video/model/VideoSharpness;

    .line 61
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->accelUrl:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->needChangeSuffix:Z

    .line 63
    iput-object v1, p0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->privateSuffix:Ljava/lang/String;

    .line 64
    return-void
.end method
