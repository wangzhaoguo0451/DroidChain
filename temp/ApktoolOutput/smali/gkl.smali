.class public Lgkl;
.super Ljava/lang/Object;
.source "LoadOriginLocalVideoUtils.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lgkl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgkl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    return-void
.end method

.method private static a(JJ)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 191
    new-instance v0, Ldyk;

    invoke-direct {v0, p0, p1, p2, p3}, Ldyk;-><init>(JJ)V

    .line 192
    :try_start_0
    sget-object v1, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_EPISODE:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :goto_0
    :try_start_1
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    invoke-direct {v0, p2, p3}, Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;-><init>(J)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static a(J)Lcom/wandoujia/p4/video2/model/VideoMetaModel;
    .locals 4
    .parameter

    .prologue
    .line 157
    new-instance v2, Lgjh;

    invoke-direct {v2}, Lgjh;-><init>()V

    .line 158
    const-string v0, ""

    .line 169
    :try_start_0
    sget-object v1, Lcom/wandoujia/p4/video2/VideoOptionFields;->VIDEO_API_META:Lcom/wandoujia/p4/video2/VideoOptionFields;

    invoke-virtual {v1}, Lcom/wandoujia/p4/video2/VideoOptionFields;->getOptionFields()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 171
    :goto_0
    invoke-virtual {v2}, Lgjh;->getRequestBuilder()Lcom/wandoujia/rpc/http/request/HttpRequestBuilder;

    move-result-object v0

    check-cast v0, Lgki;

    invoke-virtual {v0, p0, p1}, Lgki;->a(J)Lgki;

    move-result-object v0

    iput-object v1, v0, Lgki;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lgki;->a()Lgki;

    move-result-object v0

    invoke-virtual {v0}, Lgki;->b()Lgki;

    .line 180
    :try_start_1
    invoke-static {}, Lesb;->b()Lfvu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfvu;->execute(Lcom/wandoujia/rpc/http/delegate/ApiDelegate;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video2/model/VideoDetailModel;

    .line 181
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/model/VideoDetailModel;->getVideoMetaModel()Lcom/wandoujia/p4/video2/model/VideoMetaModel;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 185
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_0
    new-instance v0, Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-direct {v0, p0, p1}, Lcom/wandoujia/p4/video2/model/VideoMetaModel;-><init>(J)V

    goto :goto_1
.end method

.method public static a()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v14, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    sget-object v0, Lgkl;->a:Ljava/lang/String;

    const-string v3, " origin video load start "

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-static {}, Lcom/wandoujia/p4/video2/local/LocalFileUtil;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 41
    if-eqz v7, :cond_0

    .line 42
    array-length v8, v7

    move v4, v2

    :goto_0
    if-ge v4, v8, :cond_0

    aget-object v0, v7, v4

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ld;->W(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v0, v10, v14

    if-eqz v0, :cond_2

    invoke-static {v9}, Lcom/wandoujia/base/utils/FileUtil;->getParentFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/wandoujia/p4/video2/local/LocalFileUtil;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {v9}, Ld;->W(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v0, v10, v14

    if-eqz v0, :cond_4

    invoke-static {v9}, Lgkl;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;

    invoke-direct {v3}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;-><init>()V

    new-instance v12, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;

    invoke-direct {v12, v10, v11, v9, v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;-><init>(JLjava/lang/String;Ljava/util/List;)V

    invoke-static {v12, v0}, Lgkl;->a(Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->setEpisodeModelList(Ljava/util/List;)V

    iput-wide v10, v3, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->videoId:J

    invoke-static {v9}, Ld;->W(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lgkl;->a(J)Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    move-result-object v0

    iput-object v0, v3, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->metaModel:Lcom/wandoujia/p4/video2/model/VideoMetaModel;

    invoke-virtual {v12}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->isNew()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, v3, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->isRead:Z

    invoke-virtual {v3, v1}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->setDownloaded(Z)V

    invoke-virtual {v12}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->getLastModifyTime()J

    move-result-wide v10

    iput-wide v10, v3, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->lastModifyTime:J

    invoke-virtual {v12}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->getLastModifyTime()J

    move-result-wide v10

    iput-wide v10, v3, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->createdTime:J

    invoke-virtual {v12}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->getLastPlayTime()J

    move-result-wide v10

    iput-wide v10, v3, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->playedTime:J

    move-object v0, v3

    .line 50
    :goto_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wandoujia/p4/video2/local/LocalVideoAlbumModel;->getDownloadedEpisodeModelList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 52
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 46
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 56
    :cond_5
    return-object v5
.end method

.method private static a(Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;

    .line 123
    new-instance v4, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;

    invoke-direct {v4}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;-><init>()V

    .line 124
    invoke-virtual {p0}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->getId()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->videoId:J

    .line 125
    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->getEpisodeId()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    .line 126
    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->getEpisodeDate()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeDate:J

    .line 127
    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->getEpisodeNum()I

    move-result v1

    iput v1, v4, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeNum:I

    .line 128
    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->getProviderName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->providerName:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->getId()J

    move-result-wide v6

    iget-wide v8, v4, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeId:J

    invoke-static {v6, v7, v8, v9}, Lgkl;->a(JJ)Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    move-result-object v1

    iput-object v1, v4, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->episodeModel:Lcom/wandoujia/p4/video2/model/VideoEpisodeModel;

    .line 131
    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/wandoujia/p4/video2/local/LocalVideoType;->PRIVATE:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    :goto_1
    iput-object v1, v4, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->localVideoType:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    .line 133
    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->isEpisodeReaded(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v4, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->isRead:Z

    .line 135
    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wandoujia/p4/video/model/OldLocalVideoAlbumModel;->getEpisodeLastPlayedTime(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->playedTime:J

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 138
    new-instance v5, Lcom/wandoujia/p4/video2/local/LocalFileModel;

    invoke-direct {v5}, Lcom/wandoujia/p4/video2/local/LocalFileModel;-><init>()V

    .line 139
    invoke-virtual {v0}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/wandoujia/p4/video2/local/LocalFileModel;->filePath:Ljava/lang/String;

    .line 140
    iget-object v0, v5, Lcom/wandoujia/p4/video2/local/LocalFileModel;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/base/utils/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/wandoujia/p4/video2/local/LocalFileModel;->size:J

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/wandoujia/p4/video2/local/LocalFileModel;->isPrivateFileNameSpace:Z

    .line 142
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v4, v1}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->setFileModelList(Ljava/util/List;)V

    .line 144
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/wandoujia/p4/video2/local/LocalVideoEpisodeModel;->setDownloaded(Z)V

    .line 145
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 131
    :cond_0
    sget-object v1, Lcom/wandoujia/p4/video2/local/LocalVideoType;->COMMON:Lcom/wandoujia/p4/video2/local/LocalVideoType;

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 149
    :goto_2
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 26
    const-string v1, ".mp4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, ".sohutv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".letv"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 95
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    sget-object v2, Lgkl;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " folderPath :  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    sget-object v3, Lgkl;->a:Ljava/lang/String;

    const-string v4, " folderPath not null "

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/wandoujia/base/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    new-instance v3, Lgkm;

    invoke-direct {v3, v0}, Lgkm;-><init>(B)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_1

    .line 102
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 103
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgkl;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    new-instance v5, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/wandoujia/p4/video/model/OldLocalVideoEpisodeInfo;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 113
    :cond_1
    return-object v2
.end method
