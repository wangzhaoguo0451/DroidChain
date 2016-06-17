.class public Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;
.super Ljava/lang/Object;
.source "OldVideoEpisodeModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3d002f1893ebd437L


# instance fields
.field public final commonDownloadSourceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final downloadIdentity:Ljava/lang/String;

.field public final downloadModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoDownloadModel;",
            ">;"
        }
    .end annotation
.end field

.field public final episodeDate:J

.field public final episodeId:J

.field public final episodeNum:I

.field public final episodeTitle:Ljava/lang/String;

.field public final noDownloadUrls:Z

.field public final noPlayInfos:Z

.field public final noPrivateDownloadUrls:Z

.field public final playModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;"
        }
    .end annotation
.end field

.field public final playSourceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final privateDownloadSourceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->privateDownloadSourceSet:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->commonDownloadSourceSet:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->playSourceSet:Ljava/util/Set;

    .line 40
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->isNoPrivateDownloadUrls()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->noPrivateDownloadUrls:Z

    .line 41
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->isNoDownloadUrls()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->noDownloadUrls:Z

    .line 42
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->isNoPlayInfos()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->noPlayInfos:Z

    .line 43
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->episodeId:J

    .line 44
    iget-wide v0, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->episodeId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->downloadIdentity:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getEpisodeDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->episodeDate:J

    .line 46
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getEpisodeNum()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->episodeNum:I

    .line 47
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->episodeTitle:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->isNoDownloadUrls()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getDownloadUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->commonDownloadSourceSet:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->isNoPrivateDownloadUrls()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 58
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;

    .line 59
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 60
    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->privateDownloadSourceSet:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->isNoPlayInfos()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 66
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/PlayInfo;

    .line 67
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/PlayInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 68
    iget-object v2, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->playSourceSet:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/PlayInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 72
    :cond_5
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->getDownloadModelList(Lcom/wandoujia/entities/video/VideoEpisodeInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->downloadModelList:Ljava/util/List;

    .line 73
    invoke-direct {p0, p1}, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->getPlayModelList(Lcom/wandoujia/entities/video/VideoEpisodeInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/OldVideoEpisodeModel;->playModelList:Ljava/util/List;

    .line 74
    return-void
.end method

.method private getDownloadModelList(Lcom/wandoujia/entities/video/VideoEpisodeInfo;)Ljava/util/List;
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/entities/video/VideoEpisodeInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoDownloadModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 92
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;

    .line 97
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getSharpness()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v7}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getSharpness()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    invoke-virtual {v7}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    invoke-virtual {v7}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getPromotType()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;

    sget-object v6, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PRIVATE:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;-><init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;Ljava/lang/String;ILjava/lang/String;Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;Lcom/wandoujia/p4/video2/local/LocalVideoType;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {v7}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getDownloadUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;

    .line 115
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getSharpness()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {v7}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getSharpness()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    invoke-virtual {v7}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 120
    new-instance v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    invoke-virtual {v7}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getPromotType()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;

    sget-object v6, Lcom/wandoujia/p4/video2/local/LocalVideoType;->COMMON:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;-><init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;Ljava/lang/String;ILjava/lang/String;Lcom/wandoujia/entities/video/VideoEpisodeInfo$SharpnessDownloadInfo;Lcom/wandoujia/p4/video2/local/LocalVideoType;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {v7}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :cond_5
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v2

    .line 134
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/wandoujia/p4/video/model/ProviderInfo;->isPreferPrivateDownloadSource()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 135
    invoke-interface {v12, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 137
    :cond_6
    invoke-interface {v11, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 140
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    .line 141
    iget-object v2, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    invoke-interface {v11, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 142
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 146
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;

    .line 147
    iget-object v2, v0, Lcom/wandoujia/p4/video2/model/VideoDownloadModel;->providerName:Ljava/lang/String;

    invoke-interface {v12, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 148
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 151
    :cond_b
    return-object v8
.end method

.method private getPlayModelList(Lcom/wandoujia/entities/video/VideoEpisodeInfo;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/entities/video/VideoEpisodeInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/model/VideoPlayModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/PlayInfo;

    .line 81
    new-instance v3, Lcom/wandoujia/p4/video2/model/VideoPlayModel;

    invoke-direct {v3, v0}, Lcom/wandoujia/p4/video2/model/VideoPlayModel;-><init>(Lcom/wandoujia/entities/video/PlayInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    return-object v1
.end method
