.class public Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;
.super Ljava/lang/Object;
.source "VideoEpisodeModel.java"

# interfaces
.implements Lcom/wandoujia/mvc/BaseModel;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x521c8c9d92ff0f01L


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

.field public final episodeDate:J

.field public final episodeId:J

.field public final episodeNum:I

.field public final episodeTitle:Ljava/lang/String;

.field public final noDownloadUrls:Z

.field public final noPlayExpDownloadUrls:Z

.field public final noPlayInfos:Z

.field public final noPrivateDownloadUrls:Z

.field public originVideoEpisodeInfo:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

.field public final playExpDownloadSourceSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
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
.method public constructor <init>(J)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->privateDownloadSourceSet:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->commonDownloadSourceSet:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->playSourceSet:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->playExpDownloadSourceSet:Ljava/util/Set;

    .line 49
    iput-boolean v2, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noPrivateDownloadUrls:Z

    .line 50
    iput-boolean v2, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noPlayInfos:Z

    .line 51
    iput-wide p1, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    .line 52
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->downloadIdentity:Ljava/lang/String;

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeDate:J

    .line 54
    iput v2, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeNum:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeTitle:Ljava/lang/String;

    .line 56
    iput-boolean v2, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noPlayExpDownloadUrls:Z

    .line 57
    iput-boolean v2, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noDownloadUrls:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/entities/video/VideoEpisodeInfo;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->privateDownloadSourceSet:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->commonDownloadSourceSet:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->playSourceSet:Ljava/util/Set;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->playExpDownloadSourceSet:Ljava/util/Set;

    .line 61
    iput-object p1, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->originVideoEpisodeInfo:Lcom/wandoujia/entities/video/VideoEpisodeInfo;

    .line 62
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->isNoPrivateDownloadUrls()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noPrivateDownloadUrls:Z

    .line 63
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->isNoPlayInfos()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noPlayInfos:Z

    .line 64
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    .line 65
    iget-wide v4, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->downloadIdentity:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getEpisodeDate()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeDate:J

    .line 67
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getEpisodeNum()I

    move-result v0

    iput v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeNum:I

    .line 68
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->episodeTitle:Ljava/lang/String;

    .line 69
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

    .line 71
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;

    .line 72
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 73
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v4

    .line 75
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/wandoujia/p4/video/model/ProviderInfo;->isUseCommonDownloadUrls()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->commonDownloadSourceSet:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->isNoDownloadUrls()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->commonDownloadSourceSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noDownloadUrls:Z

    .line 84
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->isNoPrivateDownloadUrls()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 86
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPrivateDownloadUrls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;

    .line 87
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 88
    iget-object v4, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->privateDownloadSourceSet:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/VideoEpisodeInfo$DownloadUrlInfo;->getProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v0, v1

    .line 83
    goto :goto_1

    .line 93
    :cond_5
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->isNoPlayInfos()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 95
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/PlayInfo;

    .line 96
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/PlayInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 97
    iget-object v4, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->playSourceSet:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/PlayInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 101
    :cond_7
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->isNoPlayInfos()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 103
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->getPlayInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/entities/video/PlayInfo;

    .line 104
    if-eqz v0, :cond_8

    .line 105
    invoke-static {}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->a()Lcom/wandoujia/p4/video/manager/VideoProviderManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/PlayInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/p4/video/manager/VideoProviderManager;->b(Ljava/lang/String;)Lcom/wandoujia/p4/video/model/ProviderInfo;

    move-result-object v4

    .line 109
    invoke-virtual {v0}, Lcom/wandoujia/entities/video/PlayInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/PlayInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/wandoujia/p4/video/model/ProviderInfo;->isUseCommonDownloadUrls()Z

    move-result v4

    if-nez v4, :cond_8

    .line 112
    iget-object v4, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->playExpDownloadSourceSet:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/wandoujia/entities/video/PlayInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 116
    :cond_9
    invoke-virtual {p1}, Lcom/wandoujia/entities/video/VideoEpisodeInfo;->isNoPlayExpDownloadUrls()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->playExpDownloadSourceSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    iput-boolean v1, p0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;->noPlayExpDownloadUrls:Z

    .line 118
    return-void
.end method
